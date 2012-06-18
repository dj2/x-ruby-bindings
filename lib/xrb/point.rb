module Xrb
  class Point
    def initialize(o)
      @point = Xrb::Message::Point.new
      o.each_pair { |k, v| @point.send("#{k}=", v) }
    end

    def size
      Xrb::Message::Point.size
    end

    def pack
      @point.pack
    end
  end
end
