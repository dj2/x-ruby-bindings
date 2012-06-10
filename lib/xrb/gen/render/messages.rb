#
# This file was auto-generated. Do not edit.
#

module Xrb
  module Render
    class Message
      class Glyph
        attr_accessor :id
        
        def to_wire
          [id].pack('L')
        end
      end
      
      class Glyphset
        attr_accessor :id
        
        def to_wire
          [id].pack('L')
        end
      end
      
      class Picture
        attr_accessor :id
        
        def to_wire
          [id].pack('L')
        end
      end
      
      class Pictformat
        attr_accessor :id
        
        def to_wire
          [id].pack('L')
        end
      end
      
      class Fixed
        attr_accessor :id
        
        def to_wire
          [id].pack('l')
        end
      end
      
      class Directformat < Xrb::Message
        layout \
            :red_shift, :uint16,
            :red_mask, :uint16,
            :green_shift, :uint16,
            :green_mask, :uint16,
            :blue_shift, :uint16,
            :blue_mask, :uint16,
            :alpha_shift, :uint16,
            :alpha_mask, :uint16
      end
      
      class Pictforminfo < Xrb::Message
        layout \
            :id, :uint32,
            :type, :uint8,
            :depth, :uint8,
            :pad1, [2, :uint8],
            :direct, :DIRECTFORMAT,
            :colormap, :uint32
      end
      
      class Pictvisual < Xrb::Message
        layout \
            :visual, :uint32,
            :format, :uint32
      end
      
      class Pictdepth < Xrb::Message
        layout \
            :depth, :uint8,
            :pad1, [1, :uint8],
            :num_visuals, :uint16,
            :pad2, [4, :uint8],
            :visuals, [:num_visuals, Pictvisual, :list]
      end
      
      class Pictscreen < Xrb::Message
        layout \
            :num_depths, :uint32,
            :fallback, :uint32,
            :depths, [:num_depths, Pictdepth, :list]
      end
      
      class Indexvalue < Xrb::Message
        layout \
            :pixel, :uint32,
            :red, :uint16,
            :green, :uint16,
            :blue, :uint16,
            :alpha, :uint16
      end
      
      class Color < Xrb::Message
        layout \
            :red, :uint16,
            :green, :uint16,
            :blue, :uint16,
            :alpha, :uint16
      end
      
      class Pointfix < Xrb::Message
        layout \
            :x, :int32,
            :y, :int32
      end
      
      class Linefix < Xrb::Message
        layout \
            :p1, :POINTFIX,
            :p2, :POINTFIX
      end
      
      class Triangle < Xrb::Message
        layout \
            :p1, :POINTFIX,
            :p2, :POINTFIX,
            :p3, :POINTFIX
      end
      
      class Trapezoid < Xrb::Message
        layout \
            :top, :int32,
            :bottom, :int32,
            :left, :LINEFIX,
            :right, :LINEFIX
      end
      
      class Glyphinfo < Xrb::Message
        layout \
            :width, :uint16,
            :height, :uint16,
            :x, :int16,
            :y, :int16,
            :x_off, :int16,
            :y_off, :int16
      end
      
      class Transform < Xrb::Message
        layout \
            :matrix11, :int32,
            :matrix12, :int32,
            :matrix13, :int32,
            :matrix21, :int32,
            :matrix22, :int32,
            :matrix23, :int32,
            :matrix31, :int32,
            :matrix32, :int32,
            :matrix33, :int32
      end
      
      class Animcursorelt < Xrb::Message
        layout \
            :cursor, :uint32,
            :delay, :uint32
      end
      
      class Spanfix < Xrb::Message
        layout \
            :l, :int32,
            :r, :int32,
            :y, :int32
      end
      
      class Trap < Xrb::Message
        layout \
            :top, :SPANFIX,
            :bot, :SPANFIX
      end
      
    end
  end
end
