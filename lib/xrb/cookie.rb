module Xrb
  class Cookie
    def initialize(sequence_num, request)
      @sequence_num = sequence_num
      @request = request
    end

    def callback=(blk)
      @callback = blk
    end

    def callback
      return unless @callback

      @callback.call(@reply)
    end

    def reply(data)
      klass_name = @request.ruby_class.to_s.split("::").last
      klass = Xrb::Reply.const_get(klass_name.to_sym)

      @reply = klass.unpack(data)
    end

    def replied?
      !@reply.nil?
    end
  end
end
