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
        if !val[:kind].nil? &&
            (val[:kind].is_list? || val[:kind].is_string?)
          sum
        else
          sum + (val.has_key?(:size) ? val[:size] : val[:type].size)
        end
      end
    end

    def size
      ruby_class.size
    end

    def self.unpack(data)
      ret = self.new
      ret.unpack(data, @fields)
      ret
    end

    def unpack(data, fields)
      fields.each_pair do |key, v|

        type = v[:type]
        kind = v[:kind]
        size = v[:size] || type.size

        if v.has_key?(:length_expr)
          bind = Proc.new {}
          size = eval(v[:length_expr], bind.binding)
        end

        if key =~ /^pad[0-9]*/
          data.read(type.size * size)
          next

        elsif kind
          if kind.is_list?
            if type.is_a?(Class)
              data_value = []

              send(v[:length_field]).times do
                data_value << type.unpack(data)
              end
            else
              tmp = data.read(send(v[:length_field]) * size)

              data_value = []
              idx = 0
              while (idx < tmp.length)
                data_value << tmp.byteslice(idx, size).
                    unpack(type.directive).first
                idx += size
              end
            end

          elsif kind.is_string?
            len = send(v[:length_field])
            data_value = data.read(len)


          elsif kind.is_map?
            puts "Don't know how to unpack map's yet ..."
          else
            puts "Unknown Kind #{kind} in pack"
          end
        else
          data_value = data.read(size)
          if type.is_packed?
            data_value = data_value.unpack(type.directive).first
          end
        end

        send("#{key}=", data_value)
      end
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

      ruby_class.fields.each_pair do |key, v|
        type = v[:type]
        kind = v[:kind]
        size = v[:size] || type.size

        str << if key =~ /^pad[0-9]*/
          "\x00" * size

        elsif v.has_key?(:value_expr)
          bind = Proc.new {}
          eval(v[:value_expr], bind.binding)

        elsif kind
          if kind.is_list?
            if type.respond_to?(:is_packed?) && !type.is_packed?
              send(key).join
            else
              send(key).collect { |obj| obj.pack }.join
            end

          elsif kind.is_string?
            v = send(key)
            v += "\x00" * (-v.length & 3)

          elsif kind.is_map?
            bits, bytes = 0, []
            send(key).each_pair do |k, v|
              bits |= k
              bytes << [v].pack(type.directive)
            end
            [[bits].pack(type.directive), bytes.join].join
          else
            puts "Unknown Kind #{kind} in pack"
          end

        else
          if type.is_packed?
            [send(key)].pack(type.directive)
          else
            send(key)
          end
        end
      end
      str
    end
  end
end
