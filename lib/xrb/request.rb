require 'xrb/message'

module Xrb
  module Request
    def initialize(opts = {})
      self.major_opcode = self.ruby_class.const_get(:OPCODE)
      opts.each_pair { |k, v| send("#{k}=", v) }
    end

    def calc_length
      s = self.ruby_class.size
      self.ruby_class.fields.each_pair do |key, val|
        next unless val[:kind]

        if val[:kind].is_map?
          t = if val.has_key?(:size)
            val[:size]
          else
            val[:type].size
          end
          s += t * send(key).length

        elsif val[:kind].is_list?
          send(key).each { |v| s+= v.size }
        elsif val[:kind].is_string?
          s += send(key).length
        end
      end

      @length = (s >> 2)
    end
  end
end
