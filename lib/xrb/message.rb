require 'xrb/cardinal'

require 'pp'

module Xrb
  class Message
    def self.layout(*args)
      @fields = Hash[*args]
      @fields.each_pair do |key, value|
        if value.is_a?(Array)
          if value.length >= 3
            value[1] = Xrb::Cardinal.all[value[1]]
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

    def self.unpack(data)
      ret = self.new

      @fields.each_pair do |key, v|
        size, type, kind = v.is_a?(Array) ? v : [1, v, v]

        data_value = if kind.is_list?
          tmp = data.read(ret.send(size))

          if kind.is_string?
            tmp
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
          next if key =~ /^pad[0-9]*/

          data_value.unpack(type.directive).first
        end
        ret.send("#{key}=", data_value)
      end

      ret
    end

    def pack
      str = ''
      @fields.each_pair do |key, v|
        size, type = v.is_a?(Array) ? [v[0], v[1]] : [1, v]

        str << if type.is_string?
          self.send(key)
        else
          if key =~ /^pad[0-9]*/
            "\x00" * size
          else
            self.send(key).pack(type.directive)
          end
        end
      end
      str
    end
  end
end
