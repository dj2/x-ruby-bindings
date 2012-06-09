module Xrb
  class Cardinal
    attr_reader :directive, :size

    def initialize(size, directive)
      @size = size
      @directive = directive
    end

    def is_string?
      directive.nil?
    end

    def self.all
      return @cardinals unless @cardinals.nil?

      @cardinals = {
          uint8: Cardinal.new(1, 'C'),
          uint16: Cardinal.new(2, 'S'),
          nint16: Cardinal.new(2, 'n'),
          uint32: Cardinal.new(4, 'L'),
          int8: Cardinal.new(1, 'c'),
          int16: Cardinal.new(2, 's'),
          int32: Cardinal.new(4, 'l'),
          char: Cardinal.new(1, 'C'),
          float: Cardinal.new(4, 'f'),
          double: Cardinal.new(8, 'd'),
          bool: Cardinal.new(1, 'C'),
          string: Cardinal.new(-1, nil)
      }

      @cardinals.merge!({
          card8: @cardinals[:uint8],
          card16: @cardinals[:uint16],
          card32: @cardinals[:uint32],
          byte: @cardinals[:uint8],
          void: @cardinals[:uint8]
      })

      @cardinals
    end
  end
end