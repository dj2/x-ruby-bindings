require 'xrb/cardinal'

module Xrb
  class Message
    alias ruby_class class

    def self.layout(*args)
      @fields = Hash[*args]
      @fields.each_pair do |key, v|
        if v[:type] && !v[:type].is_a?(Class)
          v[:type] = Xrb::Cardinal.all[v[:type]]
        end

        v[:kind] = Xrb::Cardinal.all[v[:kind]] unless v[:kind].nil?
      end

      @fields.keys.each do |key|
        next if key.to_s =~ /^pad\d$/
        attr_accessor key.to_s.to_sym
      end
    end

    def self.union(*args)
      puts "HANDLE UNION"
    end

    def self.size
      @fields.values.inject(0) do |sum, val|
        sum + (val.has_key?(:size) ? val[:size] : val[:type].size)
      end
    end

    def self.unpack(data, padded = true)
      ret = self.new

      @fields.each_pair do |key, v|
        type = v[:type]
        kind = v[:kind]
        size = v[:size] || type.size

        if key =~ /^pad[0-9]*/
          data.read(type.size * size)
          next

        elsif kind
          if kind.is_list?
            if type.is_a?(Class)
              data_value = []
              ret.send(v[:length_field]).times do
                data_value << type.unpack(data, padded)
              end
            else
              tmp = data.read(ret.send(v[:length_field]) * size)

              data_value = []
              idx = 0
              while (idx < tmp.length)
                data_value << tmp.byteslice(idx, size).
                    unpack(type.directive).first
                idx += size
              end
            end

          elsif kind.is_string?
            len = ret.send(v[:length_field])
            data_value = data.read(len)

            if padded
              padding = (4 - (len % 4)) % 4
              data.read(padding)
            end

          elsif kind.is_map?
            puts "Don't know how to unpack map's yet ..."
          else
            puts "Unknown Kind #{kind} in pack"
          end
        else
          data_value = data.read(size)
          data_value = data_value.unpack(type.directive).first
        end

        ret.send("#{key}=", data_value)
      end
      ret
    end

    def self.fields
      @fields
    end

    def calc_length
    end

    def has_reply?
      false
    end

    def pack
      str = ''

      calc_length

      self.ruby_class.fields.each_pair do |key, v|
        type = v[:type]
        kind = v[:kind]
        size = v[:size] || type.size

        str << if key =~ /^pad[0-9]*/
          "\x00" * size

        elsif kind
          if kind.is_list?
            self.send(key).collect { |obj| obj.pack }.join

          elsif kind.is_string?
            v = self.send(key)
            v += "\x00" * (-v.length & 3)

          elsif kind.is_map?
            bits, bytes = 0, []
            self.send(key).each_pair do |k, v|
              bits |= k
              bytes << [v].pack(type.directive)
            end
            [[bits].pack(type.directive), bytes.join].join
          else
            puts "Unknown Kind #{kind} in pack"
          end

        else
          p [key, self.send(key)]
          [self.send(key)].pack(type.directive)
        end
      end
      str
    end
  end
end
