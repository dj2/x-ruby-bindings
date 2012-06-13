require 'xrb/message'

module Xrb
  module Request
    def initialize(opts = {})
      self.major_opcode = self.ruby_class.const_get(:OPCODE)

      opts.each_pair { |k, v| send("#{k}=", v) }
    end

    def calc_length
      s = self.ruby_class.size
      unless self.ruby_class.fields[:value].nil?
        val = self.ruby_class.fields[:value]
        s += ((val.has_key?(:size) ? val[:size] : val[:type].size) * value.length)
      end
      @length = s / 4
    end
  end
end