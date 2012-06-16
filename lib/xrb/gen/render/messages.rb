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
            :red_shift, {type: :uint16},
            :red_mask, {type: :uint16},
            :green_shift, {type: :uint16},
            :green_mask, {type: :uint16},
            :blue_shift, {type: :uint16},
            :blue_mask, {type: :uint16},
            :alpha_shift, {type: :uint16},
            :alpha_mask, {type: :uint16}
      end

      class Pictforminfo < Xrb::Message
        layout \
            :id, {type: :uint32},
            :type, {type: :uint8},
            :depth, {type: :uint8},
            :pad1, {size: 2, type: :uint8},
            :direct, {type: :DIRECTFORMAT},
            :colormap, {type: :uint32}
      end

      class Pictvisual < Xrb::Message
        layout \
            :visual, {type: :uint32},
            :format, {type: :uint32}
      end

      class Pictdepth < Xrb::Message
        layout \
            :depth, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :num_visuals, {type: :uint16},
            :pad2, {size: 4, type: :uint8},
            :visuals, {length_field: :num_visuals, type: Pictvisual, kind: :list}
      end

      class Pictscreen < Xrb::Message
        layout \
            :num_depths, {type: :uint32},
            :fallback, {type: :uint32},
            :depths, {length_field: :num_depths, type: Pictdepth, kind: :list}
      end

      class Indexvalue < Xrb::Message
        layout \
            :pixel, {type: :uint32},
            :red, {type: :uint16},
            :green, {type: :uint16},
            :blue, {type: :uint16},
            :alpha, {type: :uint16}
      end

      class Color < Xrb::Message
        layout \
            :red, {type: :uint16},
            :green, {type: :uint16},
            :blue, {type: :uint16},
            :alpha, {type: :uint16}
      end

      class Pointfix < Xrb::Message
        layout \
            :x, {type: :int32},
            :y, {type: :int32}
      end

      class Linefix < Xrb::Message
        layout \
            :p1, {type: :POINTFIX},
            :p2, {type: :POINTFIX}
      end

      class Triangle < Xrb::Message
        layout \
            :p1, {type: :POINTFIX},
            :p2, {type: :POINTFIX},
            :p3, {type: :POINTFIX}
      end

      class Trapezoid < Xrb::Message
        layout \
            :top, {type: :int32},
            :bottom, {type: :int32},
            :left, {type: :LINEFIX},
            :right, {type: :LINEFIX}
      end

      class Glyphinfo < Xrb::Message
        layout \
            :width, {type: :uint16},
            :height, {type: :uint16},
            :x, {type: :int16},
            :y, {type: :int16},
            :x_off, {type: :int16},
            :y_off, {type: :int16}
      end

      class Transform < Xrb::Message
        layout \
            :matrix11, {type: :int32},
            :matrix12, {type: :int32},
            :matrix13, {type: :int32},
            :matrix21, {type: :int32},
            :matrix22, {type: :int32},
            :matrix23, {type: :int32},
            :matrix31, {type: :int32},
            :matrix32, {type: :int32},
            :matrix33, {type: :int32}
      end

      class Animcursorelt < Xrb::Message
        layout \
            :cursor, {type: :uint32},
            :delay, {type: :uint32}
      end

      class Spanfix < Xrb::Message
        layout \
            :l, {type: :int32},
            :r, {type: :int32},
            :y, {type: :int32}
      end

      class Trap < Xrb::Message
        layout \
            :top, {type: :SPANFIX},
            :bot, {type: :SPANFIX}
      end

    end
  end
end
