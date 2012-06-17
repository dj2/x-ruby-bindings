module Xrb
  class Rectangle
    def initialize(o)
      @rect = Xrb::Message::Rectangle.new
      o.each_pair { |k, v| @rect.send("#{k}=", v) }
    end

    def size
      Xrb::Message::Rectangle.size
    end

    def pack
      @rect.pack
    end
  end
end

