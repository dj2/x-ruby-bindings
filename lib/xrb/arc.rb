module Xrb
  class Arc
    def initialize(o)
      @arc = Xrb::Message::Arc.new
      o.each_pair { |k, v| @arc.send("#{k}=", v) }
    end

    def size
      Xrb::Message::Arc.size
    end

    def pack
      @arc.pack
    end
  end
end
