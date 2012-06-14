#
# This file was auto-generated. Do not edit.
#

module Xrb
  module Render
    module Request
      class QueryVersion < Xrb::Message
        include Xrb::Request
        
        OPCODE = 0
        
        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :major_version, {type: :uint32},
            :minor_version, {type: :uint32},
            :pad2, {size: 16, type: :uint8}
      end
      
      class QueryPictFormats < Xrb::Message
        include Xrb::Request
        
        OPCODE = 1
        
        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :num_formats, {type: :uint32},
            :num_screens, {type: :uint32},
            :num_depths, {type: :uint32},
            :num_visuals, {type: :uint32},
            :num_subpixel, {type: :uint32},
            :pad2, {size: 4, type: :uint8},
            :formats, {length_field: :num_formats, type: Pictforminfo, kind: :list},
            :screens, {length_field: :num_screens, type: Pictscreen, kind: :list},
            :subpixels, {length_field: :num_subpixel, type: :uint32, kind: :list}
      end
      
      class QueryPictIndexValues < Xrb::Message
        include Xrb::Request
        
        OPCODE = 2
        
        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :num_values, {type: :uint32},
            :pad2, {size: 20, type: :uint8},
            :values, {length_field: :num_values, type: Indexvalue, kind: :list}
      end
      
      class CreatePicture < Xrb::Message
        include Xrb::Request
        
        OPCODE = 4
        
        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :pid, {type: :uint32},
            :drawable, {type: :uint32},
            :format, {type: :uint32},
            :value, {type: :uint32, kind: :map}
      end
      
      class ChangePicture < Xrb::Message
        include Xrb::Request
        
        OPCODE = 5
        
        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :picture, {type: :uint32},
            :value, {type: :uint32, kind: :map}
      end
      
      class SetPictureClipRectangles < Xrb::Message
        include Xrb::Request
        
        OPCODE = 6
        
        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :picture, {type: :uint32},
            :clip_x_origin, {type: :int16},
            :clip_y_origin, {type: :int16}
      end
      
      class FreePicture < Xrb::Message
        include Xrb::Request
        
        OPCODE = 7
        
        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :picture, {type: :uint32}
      end
      
      class Composite < Xrb::Message
        include Xrb::Request
        
        OPCODE = 8
        
        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :op, {type: :uint8},
            :pad1, {size: 3, type: :uint8},
            :src, {type: :uint32},
            :mask, {type: :uint32},
            :dst, {type: :uint32},
            :src_x, {type: :int16},
            :src_y, {type: :int16},
            :mask_x, {type: :int16},
            :mask_y, {type: :int16},
            :dst_x, {type: :int16},
            :dst_y, {type: :int16},
            :width, {type: :uint16},
            :height, {type: :uint16}
      end
      
      class Trapezoids < Xrb::Message
        include Xrb::Request
        
        OPCODE = 10
        
        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :op, {type: :uint8},
            :pad1, {size: 3, type: :uint8},
            :src, {type: :uint32},
            :dst, {type: :uint32},
            :mask_format, {type: :uint32},
            :src_x, {type: :int16},
            :src_y, {type: :int16}
      end
      
      class Triangles < Xrb::Message
        include Xrb::Request
        
        OPCODE = 11
        
        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :op, {type: :uint8},
            :pad1, {size: 3, type: :uint8},
            :src, {type: :uint32},
            :dst, {type: :uint32},
            :mask_format, {type: :uint32},
            :src_x, {type: :int16},
            :src_y, {type: :int16}
      end
      
      class TriStrip < Xrb::Message
        include Xrb::Request
        
        OPCODE = 12
        
        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :op, {type: :uint8},
            :pad1, {size: 3, type: :uint8},
            :src, {type: :uint32},
            :dst, {type: :uint32},
            :mask_format, {type: :uint32},
            :src_x, {type: :int16},
            :src_y, {type: :int16}
      end
      
      class TriFan < Xrb::Message
        include Xrb::Request
        
        OPCODE = 13
        
        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :op, {type: :uint8},
            :pad1, {size: 3, type: :uint8},
            :src, {type: :uint32},
            :dst, {type: :uint32},
            :mask_format, {type: :uint32},
            :src_x, {type: :int16},
            :src_y, {type: :int16}
      end
      
      class CreateGlyphSet < Xrb::Message
        include Xrb::Request
        
        OPCODE = 17
        
        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :gsid, {type: :uint32},
            :format, {type: :uint32}
      end
      
      class ReferenceGlyphSet < Xrb::Message
        include Xrb::Request
        
        OPCODE = 18
        
        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :gsid, {type: :uint32},
            :existing, {type: :uint32}
      end
      
      class FreeGlyphSet < Xrb::Message
        include Xrb::Request
        
        OPCODE = 19
        
        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :glyphset, {type: :uint32}
      end
      
      class AddGlyphs < Xrb::Message
        include Xrb::Request
        
        OPCODE = 20
        
        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :glyphset, {type: :uint32},
            :glyphs_len, {type: :uint32},
            :glyphids, {length_field: :glyphs_len, type: :uint32, kind: :list},
            :glyphs, {length_field: :glyphs_len, type: Glyphinfo, kind: :list}
      end
      
      class FreeGlyphs < Xrb::Message
        include Xrb::Request
        
        OPCODE = 22
        
        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :glyphset, {type: :uint32}
      end
      
      class CompositeGlyphs_8 < Xrb::Message
        include Xrb::Request
        
        OPCODE = 23
        
        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :op, {type: :uint8},
            :pad1, {size: 3, type: :uint8},
            :src, {type: :uint32},
            :dst, {type: :uint32},
            :mask_format, {type: :uint32},
            :glyphset, {type: :uint32},
            :src_x, {type: :int16},
            :src_y, {type: :int16}
      end
      
      class CompositeGlyphs_16 < Xrb::Message
        include Xrb::Request
        
        OPCODE = 24
        
        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :op, {type: :uint8},
            :pad1, {size: 3, type: :uint8},
            :src, {type: :uint32},
            :dst, {type: :uint32},
            :mask_format, {type: :uint32},
            :glyphset, {type: :uint32},
            :src_x, {type: :int16},
            :src_y, {type: :int16}
      end
      
      class CompositeGlyphs_32 < Xrb::Message
        include Xrb::Request
        
        OPCODE = 25
        
        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :op, {type: :uint8},
            :pad1, {size: 3, type: :uint8},
            :src, {type: :uint32},
            :dst, {type: :uint32},
            :mask_format, {type: :uint32},
            :glyphset, {type: :uint32},
            :src_x, {type: :int16},
            :src_y, {type: :int16}
      end
      
      class FillRectangles < Xrb::Message
        include Xrb::Request
        
        OPCODE = 26
        
        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :op, {type: :uint8},
            :pad1, {size: 3, type: :uint8},
            :dst, {type: :uint32},
            :color, {type: :COLOR}
      end
      
      class CreateCursor < Xrb::Message
        include Xrb::Request
        
        OPCODE = 27
        
        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :cid, {type: :uint32},
            :source, {type: :uint32},
            :x, {type: :uint16},
            :y, {type: :uint16}
      end
      
      class SetPictureTransform < Xrb::Message
        include Xrb::Request
        
        OPCODE = 28
        
        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :picture, {type: :uint32},
            :transform, {type: :TRANSFORM}
      end
      
      class QueryFilters < Xrb::Message
        include Xrb::Request
        
        OPCODE = 29
        
        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :num_aliases, {type: :uint32},
            :num_filters, {type: :uint32},
            :pad2, {size: 16, type: :uint8},
            :aliases, {length_field: :num_aliases, type: :uint16, kind: :list},
            :filters, {length_field: :num_filters, type: Str, kind: :list}
      end
      
      class SetPictureFilter < Xrb::Message
        include Xrb::Request
        
        OPCODE = 30
        
        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :picture, {type: :uint32},
            :filter_len, {type: :uint16},
            :pad1, {size: 2, type: :uint8},
            :filter, {length_field: :filter_len, type: :char, kind: :string}
      end
      
      class CreateAnimCursor < Xrb::Message
        include Xrb::Request
        
        OPCODE = 31
        
        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :cid, {type: :uint32}
      end
      
      class AddTraps < Xrb::Message
        include Xrb::Request
        
        OPCODE = 32
        
        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :picture, {type: :uint32},
            :x_off, {type: :int16},
            :y_off, {type: :int16}
      end
      
      class CreateSolidFill < Xrb::Message
        include Xrb::Request
        
        OPCODE = 33
        
        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :picture, {type: :uint32},
            :color, {type: :COLOR}
      end
      
      class CreateLinearGradient < Xrb::Message
        include Xrb::Request
        
        OPCODE = 34
        
        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :picture, {type: :uint32},
            :p1, {type: :POINTFIX},
            :p2, {type: :POINTFIX},
            :num_stops, {type: :uint32},
            :stops, {length_field: :num_stops, type: :int32, kind: :list},
            :colors, {length_field: :num_stops, type: Color, kind: :list}
      end
      
      class CreateRadialGradient < Xrb::Message
        include Xrb::Request
        
        OPCODE = 35
        
        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :picture, {type: :uint32},
            :inner, {type: :POINTFIX},
            :outer, {type: :POINTFIX},
            :inner_radius, {type: :int32},
            :outer_radius, {type: :int32},
            :num_stops, {type: :uint32},
            :stops, {length_field: :num_stops, type: :int32, kind: :list},
            :colors, {length_field: :num_stops, type: Color, kind: :list}
      end
      
      class CreateConicalGradient < Xrb::Message
        include Xrb::Request
        
        OPCODE = 36
        
        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :picture, {type: :uint32},
            :center, {type: :POINTFIX},
            :angle, {type: :int32},
            :num_stops, {type: :uint32},
            :stops, {length_field: :num_stops, type: :int32, kind: :list},
            :colors, {length_field: :num_stops, type: Color, kind: :list}
      end
      
    end
  end
end