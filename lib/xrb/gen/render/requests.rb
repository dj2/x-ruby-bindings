#
# This file was auto-generated. Do not edit.
#

module Xrb
  module Render
    module Request
      class QueryVersion < Xrb::Message
        OPCODE = 0
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :major_version, :uint32,
            :minor_version, :uint32,
            :pad2, [16, :uint8]
      end
      
      class QueryPictFormats < Xrb::Message
        OPCODE = 1
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :num_formats, :uint32,
            :num_screens, :uint32,
            :num_depths, :uint32,
            :num_visuals, :uint32,
            :num_subpixel, :uint32,
            :pad2, [4, :uint8],
            :formats, [:num_formats, Pictforminfo, :list],
            :screens, [:num_screens, Pictscreen, :list],
            :subpixels, [:num_subpixel, :uint32, :list]
      end
      
      class QueryPictIndexValues < Xrb::Message
        OPCODE = 2
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :num_values, :uint32,
            :pad2, [20, :uint8],
            :values, [:num_values, Indexvalue, :list]
      end
      
      class CreatePicture < Xrb::Message
        OPCODE = 4
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :pid, :uint32,
            :drawable, :uint32,
            :format, :uint32,
            :value_mask, :uint32
      end
      
      class ChangePicture < Xrb::Message
        OPCODE = 5
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :picture, :uint32,
            :value_mask, :uint32
      end
      
      class SetPictureClipRectangles < Xrb::Message
        OPCODE = 6
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :picture, :uint32,
            :clip_x_origin, :int16,
            :clip_y_origin, :int16
      end
      
      class FreePicture < Xrb::Message
        OPCODE = 7
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :picture, :uint32
      end
      
      class Composite < Xrb::Message
        OPCODE = 8
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :op, :uint8,
            :pad1, [3, :uint8],
            :src, :uint32,
            :mask, :uint32,
            :dst, :uint32,
            :src_x, :int16,
            :src_y, :int16,
            :mask_x, :int16,
            :mask_y, :int16,
            :dst_x, :int16,
            :dst_y, :int16,
            :width, :uint16,
            :height, :uint16
      end
      
      class Trapezoids < Xrb::Message
        OPCODE = 10
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :op, :uint8,
            :pad1, [3, :uint8],
            :src, :uint32,
            :dst, :uint32,
            :mask_format, :uint32,
            :src_x, :int16,
            :src_y, :int16
      end
      
      class Triangles < Xrb::Message
        OPCODE = 11
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :op, :uint8,
            :pad1, [3, :uint8],
            :src, :uint32,
            :dst, :uint32,
            :mask_format, :uint32,
            :src_x, :int16,
            :src_y, :int16
      end
      
      class TriStrip < Xrb::Message
        OPCODE = 12
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :op, :uint8,
            :pad1, [3, :uint8],
            :src, :uint32,
            :dst, :uint32,
            :mask_format, :uint32,
            :src_x, :int16,
            :src_y, :int16
      end
      
      class TriFan < Xrb::Message
        OPCODE = 13
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :op, :uint8,
            :pad1, [3, :uint8],
            :src, :uint32,
            :dst, :uint32,
            :mask_format, :uint32,
            :src_x, :int16,
            :src_y, :int16
      end
      
      class CreateGlyphSet < Xrb::Message
        OPCODE = 17
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :gsid, :uint32,
            :format, :uint32
      end
      
      class ReferenceGlyphSet < Xrb::Message
        OPCODE = 18
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :gsid, :uint32,
            :existing, :uint32
      end
      
      class FreeGlyphSet < Xrb::Message
        OPCODE = 19
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :glyphset, :uint32
      end
      
      class AddGlyphs < Xrb::Message
        OPCODE = 20
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :glyphset, :uint32,
            :glyphs_len, :uint32,
            :glyphids, [:glyphs_len, :uint32, :list],
            :glyphs, [:glyphs_len, Glyphinfo, :list]
      end
      
      class FreeGlyphs < Xrb::Message
        OPCODE = 22
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :glyphset, :uint32
      end
      
      class CompositeGlyphs_8 < Xrb::Message
        OPCODE = 23
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :op, :uint8,
            :pad1, [3, :uint8],
            :src, :uint32,
            :dst, :uint32,
            :mask_format, :uint32,
            :glyphset, :uint32,
            :src_x, :int16,
            :src_y, :int16
      end
      
      class CompositeGlyphs_16 < Xrb::Message
        OPCODE = 24
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :op, :uint8,
            :pad1, [3, :uint8],
            :src, :uint32,
            :dst, :uint32,
            :mask_format, :uint32,
            :glyphset, :uint32,
            :src_x, :int16,
            :src_y, :int16
      end
      
      class CompositeGlyphs_32 < Xrb::Message
        OPCODE = 25
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :op, :uint8,
            :pad1, [3, :uint8],
            :src, :uint32,
            :dst, :uint32,
            :mask_format, :uint32,
            :glyphset, :uint32,
            :src_x, :int16,
            :src_y, :int16
      end
      
      class FillRectangles < Xrb::Message
        OPCODE = 26
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :op, :uint8,
            :pad1, [3, :uint8],
            :dst, :uint32,
            :color, :COLOR
      end
      
      class CreateCursor < Xrb::Message
        OPCODE = 27
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :cid, :uint32,
            :source, :uint32,
            :x, :uint16,
            :y, :uint16
      end
      
      class SetPictureTransform < Xrb::Message
        OPCODE = 28
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :picture, :uint32,
            :transform, :TRANSFORM
      end
      
      class QueryFilters < Xrb::Message
        OPCODE = 29
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :num_aliases, :uint32,
            :num_filters, :uint32,
            :pad2, [16, :uint8],
            :aliases, [:num_aliases, :uint16, :list],
            :filters, [:num_filters, Str, :list]
      end
      
      class SetPictureFilter < Xrb::Message
        OPCODE = 30
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :picture, :uint32,
            :filter_len, :uint16,
            :pad1, [2, :uint8],
            :filter, [:filter_len, :char, :string]
      end
      
      class CreateAnimCursor < Xrb::Message
        OPCODE = 31
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :cid, :uint32
      end
      
      class AddTraps < Xrb::Message
        OPCODE = 32
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :picture, :uint32,
            :x_off, :int16,
            :y_off, :int16
      end
      
      class CreateSolidFill < Xrb::Message
        OPCODE = 33
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :picture, :uint32,
            :color, :COLOR
      end
      
      class CreateLinearGradient < Xrb::Message
        OPCODE = 34
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :picture, :uint32,
            :p1, :POINTFIX,
            :p2, :POINTFIX,
            :num_stops, :uint32,
            :stops, [:num_stops, :int32, :list],
            :colors, [:num_stops, Color, :list]
      end
      
      class CreateRadialGradient < Xrb::Message
        OPCODE = 35
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :picture, :uint32,
            :inner, :POINTFIX,
            :outer, :POINTFIX,
            :inner_radius, :int32,
            :outer_radius, :int32,
            :num_stops, :uint32,
            :stops, [:num_stops, :int32, :list],
            :colors, [:num_stops, Color, :list]
      end
      
      class CreateConicalGradient < Xrb::Message
        OPCODE = 36
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :picture, :uint32,
            :center, :POINTFIX,
            :angle, :int32,
            :num_stops, :uint32,
            :stops, [:num_stops, :int32, :list],
            :colors, [:num_stops, Color, :list]
      end
      
    end
  end
end
