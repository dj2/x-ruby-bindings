require 'xrb/cardinal'

module Xrb
  class Message
    def self.layout(*args)
      @fields = Hash[*args]
      @fields.each_pair do |key, value|
        if value.is_a?(Array)
          if value.length >= 3
            value[1] = value[1].is_a?(Class) ? value[1] : Xrb::Cardinal.all[value[1]]
          end
          value[-1] = Xrb::Cardinal.all[value[-1]]

        else
          @fields[key] = Xrb::Cardinal.all[value]
        end
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
        sum + (val.is_a?(Array) ? val[-1].size : val.size)
      end
    end

    def self.unpack(data, padded = true)
      ret = self.new

      @fields.each_pair do |key, v|
        size, type, kind = v.is_a?(Array) ? v : [1, v, v]

        if key =~ /^pad[0-9]*/
          data.read(type.size * size)
          next

        elsif kind.is_list?
          tmp = data.read(ret.send(size))

          data_value = if kind.is_string?
            if padded
              padding = (4 - (ret.send(size) % 4)) % 4
              data.read(padding)
            end

            tmp
          elsif type.is_a?(Class)
            data_value = Array(type.unpack(data, padded))
          else
            list = []
            idx = 0
            while (idx < tmp.length)
              list << tmp.byteslice(idx, type.size).unpack(type.directive).first
              idx += type.size
            end
            list
          end
        else
          data_value = data.read(type.size * size)
          data_value = data_value.unpack(type.directive).first
        end

        ret.send("#{key}=", data_value)
      end
      ret
    end

    def self.fields
      @fields
    end

    def pack
      str = ''
      self.class.fields.each_pair do |key, v|
        size, type, kind = v.is_a?(Array) ? v : [1, v, v]

        str << if key =~ /^pad[0-9]*/
          "\x00" * size

        elsif kind.is_list?
          if kind.is_string?
            v = self.send(key)
            v += "\x00" * (-v.length & 3)
          else
            self.send(key).collect { |obj| obj.pack }.join
          end

        else
          [self.send(key)].pack(type.directive)
        end
      end
      str
    end
  end
end
