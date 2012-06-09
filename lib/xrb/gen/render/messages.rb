#
# This file was auto-generated. Do not edit.
#

module Xrb
  module Render
    module Message
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
      
      class Directformat < Xrd::Message
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
      
      class Pictforminfo < Xrd::Message
        layout \
            :id, :uint32,
            :type, :uint8,
            :depth, :uint8,
            :pad1, [:uint8, 2],
            :direct, :DIRECTFORMAT,
            :colormap, :uint32
      end
      
      class Pictvisual < Xrd::Message
        layout \
            :visual, :uint32,
            :format, :uint32
      end
      
      class Pictdepth < Xrd::Message
        layout \
            :depth, :uint8,
            :pad1, [:uint8, 1],
            :num_visuals, :uint16,
            :pad2, [:uint8, 4]
      end
      
      class Pictscreen < Xrd::Message
        layout \
            :num_depths, :uint32,
            :fallback, :uint32
      end
      
      class Indexvalue < Xrd::Message
        layout \
            :pixel, :uint32,
            :red, :uint16,
            :green, :uint16,
            :blue, :uint16,
            :alpha, :uint16
      end
      
      class Color < Xrd::Message
        layout \
            :red, :uint16,
            :green, :uint16,
            :blue, :uint16,
            :alpha, :uint16
      end
      
      class Pointfix < Xrd::Message
        layout \
            :x, :int32,
            :y, :int32
      end
      
      class Linefix < Xrd::Message
        layout \
            :p1, :POINTFIX,
            :p2, :POINTFIX
      end
      
      class Triangle < Xrd::Message
        layout \
            :p1, :POINTFIX,
            :p2, :POINTFIX,
            :p3, :POINTFIX
      end
      
      class Trapezoid < Xrd::Message
        layout \
            :top, :int32,
            :bottom, :int32,
            :left, :LINEFIX,
            :right, :LINEFIX
      end
      
      class Glyphinfo < Xrd::Message
        layout \
            :width, :uint16,
            :height, :uint16,
            :x, :int16,
            :y, :int16,
            :x_off, :int16,
            :y_off, :int16
      end
      
      class Transform < Xrd::Message
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
      
      class Animcursorelt < Xrd::Message
        layout \
            :cursor, :uint32,
            :delay, :uint32
      end
      
      class Spanfix < Xrd::Message
        layout \
            :l, :int32,
            :r, :int32,
            :y, :int32
      end
      
      class Trap < Xrd::Message
        layout \
            :top, :SPANFIX,
            :bot, :SPANFIX
      end
      
    end
  end
end
