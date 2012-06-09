module Xrb
  class Cardinal
    attr_reader :directive, :size

    def initialize(name, size, directive)
      @size = size
      @directive = directive
    end

    def is_string?
      name == :char
    end

    def is_list?
      directive.nil?
    end

    def self.all
      return @cardinals unless @cardinals.nil?

      @cardinals = {
          uint8: Cardinal.new(:uint8, 1, 'C'),
          card8: Cardinal.new(:card8, 1, 'C'),
          byte: Cardinal.new(:byte, 1, 'C'),
          void: Cardinal.new(:void, 1, 'C'),
          uint16: Cardinal.new(:uint16, 2, 'S'),
          card16: Cardinal.new(:card16, 2, 'S'),
          nint16: Cardinal.new(:nint16, 2, 'n'),
          uint32: Cardinal.new(:uint32, 4, 'L'),
          card32: Cardinal.new(:card32, 4, 'L'),
          int8: Cardinal.new(:int8, 1, 'c'),
          int16: Cardinal.new(:int16, 2, 's'),
          int32: Cardinal.new(:int32, 4, 'l'),
          char: Cardinal.new(:char, 1, 'C'),
          float: Cardinal.new(:float, 4, 'f'),
          double: Cardinal.new(:double, 8, 'd'),
          bool: Cardinal.new(:bool, 1, 'C'),
          string: Cardinal.new(:string, -1, nil),
          list: Cardinal.new(:list, -1, nil)
      }
      @cardinals
    end
  end
end
