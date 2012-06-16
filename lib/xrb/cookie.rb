module Xrb
  class Cookie
    def initialize(sequence_num)
      @sequence_num = sequence_num
    end

    def replied?
      !@reply.nil?
    end
  end
end
