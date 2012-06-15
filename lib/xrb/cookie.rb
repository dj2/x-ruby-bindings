module Xrb
  class Cookie
    class Message < Xrb::Message
      layout :sequence, {type: :int}
    end

    def replied?
      !@reply.nil?
    end
  end
end