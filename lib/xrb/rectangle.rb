module Xrb
  class Rectangle
    def initialize(x, y, w, h)
      @rect = Xrb::Message::Rectangle.new()
      @rect.x = x
      @rect.y = y
      @rect.width = w
      @rect.height = h
    end

    def pack
      @rect.pack
    end
  end
end

