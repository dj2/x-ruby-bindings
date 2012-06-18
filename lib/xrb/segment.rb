module Xrb
  class Segment
    def initialize(o)
      @segment = Xrb::Message::Segment.new
      o.each_pair { |k, v| @segment.send("#{k}=", v) }
    end

    def size
      Xrb::Message::Segment.size
    end

    def pack
      @segment.pack
    end
  end
end


