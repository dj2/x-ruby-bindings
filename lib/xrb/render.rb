#
# This file auto-generated. Do not edit.
#

require 'ffi'
require 'xrb/xproto'
class Xrb
  class Render
    extend FFI::Library
    ffi_lib 'render'
    MAJOR_VERSION = 0
    MINOR_VERSION = 11
    PICT_TYPE_INDEXED = 1
    PICT_TYPE_DIRECT = 2
    PICTURE_NONE = 1
    PICT_OP_CLEAR = 1
    PICT_OP_SRC = 2
    PICT_OP_DST = 3
    PICT_OP_OVER = 4
    PICT_OP_OVER_REVERSE = 5
    PICT_OP_IN = 6
    PICT_OP_IN_REVERSE = 7
    PICT_OP_OUT = 8
    PICT_OP_OUT_REVERSE = 9
    PICT_OP_ATOP = 10
    PICT_OP_ATOP_REVERSE = 11
    PICT_OP_XOR = 12
    PICT_OP_ADD = 13
    PICT_OP_SATURATE = 14
    PICT_OP_DISJOINT_CLEAR = 16
    PICT_OP_DISJOINT_SRC = 17
    PICT_OP_DISJOINT_DST = 18
    PICT_OP_DISJOINT_OVER = 19
    PICT_OP_DISJOINT_OVER_REVERSE = 20
    PICT_OP_DISJOINT_IN = 21
    PICT_OP_DISJOINT_IN_REVERSE = 22
    PICT_OP_DISJOINT_OUT = 23
    PICT_OP_DISJOINT_OUT_REVERSE = 24
    PICT_OP_DISJOINT_ATOP = 25
    PICT_OP_DISJOINT_ATOP_REVERSE = 26
    PICT_OP_DISJOINT_XOR = 27
    PICT_OP_CONJOINT_CLEAR = 32
    PICT_OP_CONJOINT_SRC = 33
    PICT_OP_CONJOINT_DST = 34
    PICT_OP_CONJOINT_OVER = 35
    PICT_OP_CONJOINT_OVER_REVERSE = 36
    PICT_OP_CONJOINT_IN = 37
    PICT_OP_CONJOINT_IN_REVERSE = 38
    PICT_OP_CONJOINT_OUT = 39
    PICT_OP_CONJOINT_OUT_REVERSE = 40
    PICT_OP_CONJOINT_ATOP = 41
    PICT_OP_CONJOINT_ATOP_REVERSE = 42
    PICT_OP_CONJOINT_XOR = 43
    PICT_OP_MULTIPLY = 48
    PICT_OP_SCREEN = 49
    PICT_OP_OVERLAY = 50
    PICT_OP_DARKEN = 51
    PICT_OP_LIGHTEN = 52
    PICT_OP_COLOR_DODGE = 53
    PICT_OP_COLOR_BURN = 54
    PICT_OP_HARD_LIGHT = 55
    PICT_OP_SOFT_LIGHT = 56
    PICT_OP_DIFFERENCE = 57
    PICT_OP_EXCLUSION = 58
    PICT_OP_HSL_HUE = 59
    PICT_OP_HSL_SATURATION = 60
    PICT_OP_HSL_COLOR = 61
    PICT_OP_HSL_LUMINOSITY = 62
    POLY_EDGE_SHARP = 1
    POLY_EDGE_SMOOTH = 2
    POLY_MODE_PRECISE = 1
    POLY_MODE_IMPRECISE = 2
    CP_REPEAT = 1 << 0
    CP_ALPHA_MAP = 1 << 1
    CP_ALPHA_X_ORIGIN = 1 << 2
    CP_ALPHA_Y_ORIGIN = 1 << 3
    CP_CLIP_X_ORIGIN = 1 << 4
    CP_CLIP_Y_ORIGIN = 1 << 5
    CP_CLIP_MASK = 1 << 6
    CP_GRAPHICS_EXPOSURE = 1 << 7
    CP_SUBWINDOW_MODE = 1 << 8
    CP_POLY_EDGE = 1 << 9
    CP_POLY_MODE = 1 << 10
    CP_DITHER = 1 << 11
    CP_COMPONENT_ALPHA = 1 << 12
    SUB_PIXEL_UNKNOWN = 1
    SUB_PIXEL_HORIZONTAL_RGB = 2
    SUB_PIXEL_HORIZONTAL_BGR = 3
    SUB_PIXEL_VERTICAL_RGB = 4
    SUB_PIXEL_VERTICAL_BGR = 5
    SUB_PIXEL_NONE = 6
    REPEAT_NONE = 1
    REPEAT_NORMAL = 2
    REPEAT_PAD = 3
    REPEAT_REFLECT = 4
    typedef :uint32, :glyph_t
    class GlyphIterator < FFI::Struct
      layout \
          :data, :window_t,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_glyph_next, [:pointer], :void
    attach_function :xcb_glyph_end, [:pointer], GenericIterator
    typedef :uint32, :glyphset_t
    class GlyphsetIterator < FFI::Struct
      layout \
          :data, :window_t,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_glyphset_next, [:pointer], :void
    attach_function :xcb_glyphset_end, [:pointer], GenericIterator
    typedef :uint32, :picture_t
    class PictureIterator < FFI::Struct
      layout \
          :data, :window_t,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_picture_next, [:pointer], :void
    attach_function :xcb_picture_end, [:pointer], GenericIterator
    typedef :uint32, :pictformat_t
    class PictformatIterator < FFI::Struct
      layout \
          :data, :window_t,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_pictformat_next, [:pointer], :void
    attach_function :xcb_pictformat_end, [:pointer], GenericIterator
    typedef :int32, :fixed_t
    class FixedIterator < FFI::Struct
      layout \
          :data, :window_t,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_fixed_next, [:pointer], :void
    attach_function :xcb_fixed_end, [:pointer], GenericIterator
    class Directformat < FFI::Struct
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

    class DirectformatIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_directformat_next, [:pointer], :void
    attach_function :xcb_directformat_end, [:pointer], GenericIterator
    class Pictforminfo < FFI::Struct
      layout \
          :id, :pictformat_t,
          :type, :uint8,
          :depth, :uint8,
          :pad1, [:uint8, 2],
          :direct, Directformat,
          :colormap, :colormap_t
    end

    class PictforminfoIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_pictforminfo_next, [:pointer], :void
    attach_function :xcb_pictforminfo_end, [:pointer], GenericIterator
    class Pictvisual < FFI::Struct
      layout \
          :visual, :visualid_t,
          :format, :pictformat_t
    end

    class PictvisualIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_pictvisual_next, [:pointer], :void
    attach_function :xcb_pictvisual_end, [:pointer], GenericIterator
    class Pictdepth < FFI::Struct
      layout \
          :depth, :uint8,
          :pad1, [:uint8, 1],
          :num_visuals, :uint16,
          :pad2, [:uint8, 4]
    end

    class PictdepthIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_pictdepth_next, [:pointer], :void
    attach_function :xcb_pictdepth_end, [:pointer], GenericIterator
    attach_function :xcb_pictdepth_sizeof, [:pointer], :int
    attach_function :xcb_pictdepth_visuals_iterator, [:pointer], PictdepthIterator
    attach_function :xcb_pictdepth_visuals_length, [:pointer], :int
    class Pictscreen < FFI::Struct
      layout \
          :num_depths, :uint32,
          :fallback, :pictformat_t
    end

    class PictscreenIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_pictscreen_next, [:pointer], :void
    attach_function :xcb_pictscreen_end, [:pointer], GenericIterator
    attach_function :xcb_pictscreen_sizeof, [:pointer], :int
    attach_function :xcb_pictscreen_depths_iterator, [:pointer], PictscreenIterator
    attach_function :xcb_pictscreen_depths_length, [:pointer], :int
    class Indexvalue < FFI::Struct
      layout \
          :pixel, :uint32,
          :red, :uint16,
          :green, :uint16,
          :blue, :uint16,
          :alpha, :uint16
    end

    class IndexvalueIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_indexvalue_next, [:pointer], :void
    attach_function :xcb_indexvalue_end, [:pointer], GenericIterator
    class Color < FFI::Struct
      layout \
          :red, :uint16,
          :green, :uint16,
          :blue, :uint16,
          :alpha, :uint16
    end

    class ColorIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_color_next, [:pointer], :void
    attach_function :xcb_color_end, [:pointer], GenericIterator
    class Pointfix < FFI::Struct
      layout \
          :x, :fixed_t,
          :y, :fixed_t
    end

    class PointfixIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_pointfix_next, [:pointer], :void
    attach_function :xcb_pointfix_end, [:pointer], GenericIterator
    class Linefix < FFI::Struct
      layout \
          :p1, Pointfix,
          :p2, Pointfix
    end

    class LinefixIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_linefix_next, [:pointer], :void
    attach_function :xcb_linefix_end, [:pointer], GenericIterator
    class Triangle < FFI::Struct
      layout \
          :p1, Pointfix,
          :p2, Pointfix,
          :p3, Pointfix
    end

    class TriangleIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_triangle_next, [:pointer], :void
    attach_function :xcb_triangle_end, [:pointer], GenericIterator
    class Trapezoid < FFI::Struct
      layout \
          :top, :fixed_t,
          :bottom, :fixed_t,
          :left, Linefix,
          :right, Linefix
    end

    class TrapezoidIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_trapezoid_next, [:pointer], :void
    attach_function :xcb_trapezoid_end, [:pointer], GenericIterator
    class Glyphinfo < FFI::Struct
      layout \
          :width, :uint16,
          :height, :uint16,
          :x, :int16,
          :y, :int16,
          :x_off, :int16,
          :y_off, :int16
    end

    class GlyphinfoIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_glyphinfo_next, [:pointer], :void
    attach_function :xcb_glyphinfo_end, [:pointer], GenericIterator
    class Transform < FFI::Struct
      layout \
          :matrix11, :fixed_t,
          :matrix12, :fixed_t,
          :matrix13, :fixed_t,
          :matrix21, :fixed_t,
          :matrix22, :fixed_t,
          :matrix23, :fixed_t,
          :matrix31, :fixed_t,
          :matrix32, :fixed_t,
          :matrix33, :fixed_t
    end

    class TransformIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_transform_next, [:pointer], :void
    attach_function :xcb_transform_end, [:pointer], GenericIterator
    class Animcursorelt < FFI::Struct
      layout \
          :cursor, :cursor_t,
          :delay, :uint32
    end

    class AnimcursoreltIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_animcursorelt_next, [:pointer], :void
    attach_function :xcb_animcursorelt_end, [:pointer], GenericIterator
    class Spanfix < FFI::Struct
      layout \
          :l, :fixed_t,
          :r, :fixed_t,
          :y, :fixed_t
    end

    class SpanfixIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_spanfix_next, [:pointer], :void
    attach_function :xcb_spanfix_end, [:pointer], GenericIterator
    class Trap < FFI::Struct
      layout \
          :top, Spanfix,
          :bot, Spanfix
    end

    class TrapIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_trap_next, [:pointer], :void
    attach_function :xcb_trap_end, [:pointer], GenericIterator
    class PictFormatError < FFI::Struct
      layout \
          :response_type, :uint8,
          :error_code, :uint8,
          :sequence, :uint16
    end

    class PictureError < FFI::Struct
      layout \
          :response_type, :uint8,
          :error_code, :uint8,
          :sequence, :uint16
    end

    class PictOpError < FFI::Struct
      layout \
          :response_type, :uint8,
          :error_code, :uint8,
          :sequence, :uint16
    end

    class GlyphSetError < FFI::Struct
      layout \
          :response_type, :uint8,
          :error_code, :uint8,
          :sequence, :uint16
    end

    class GlyphError < FFI::Struct
      layout \
          :response_type, :uint8,
          :error_code, :uint8,
          :sequence, :uint16
    end

    class QueryVersionRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :major_version, :uint32,
          :minor_version, :uint32,
          :pad2, [:uint8, 16]
    end

    class QueryVersionCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_query_version, [:pointer,:uint8,:uint32,:uint32], QueryVersionCookie
    class QueryVersionReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :major_version, :uint32,
          :minor_version, :uint32,
          :pad2, [:uint8, 16]
    end

    attach_function :xcb_query_version_reply, [:pointer, QueryVersionCookie, :pointer], :pointer

        
    class QueryPictFormatsRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :num_formats, :uint32,
          :num_screens, :uint32,
          :num_depths, :uint32,
          :num_visuals, :uint32,
          :num_subpixel, :uint32,
          :pad2, [:uint8, 4]
    end

    class QueryPictFormatsCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_query_pict_formats, [:pointer,:uint8,:uint32,:uint32,:uint32,:uint32,:uint32,:uint32,:uint32,:uint32], QueryPictFormatsCookie
    class QueryPictFormatsReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :num_formats, :uint32,
          :num_screens, :uint32,
          :num_depths, :uint32,
          :num_visuals, :uint32,
          :num_subpixel, :uint32,
          :pad2, [:uint8, 4]
    end

    attach_function :xcb_query_pict_formats_reply, [:pointer, QueryPictFormatsCookie, :pointer], :pointer

        
    class QueryPictIndexValuesRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :num_values, :uint32,
          :pad2, [:uint8, 20]
    end

    class QueryPictIndexValuesCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_query_pict_index_values, [:pointer,:uint8,:uint32,:uint32], QueryPictIndexValuesCookie
    class QueryPictIndexValuesReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :num_values, :uint32,
          :pad2, [:uint8, 20]
    end

    attach_function :xcb_query_pict_index_values_reply, [:pointer, QueryPictIndexValuesCookie, :pointer], :pointer

        
    class CreatePictureRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :pid, :picture_t,
          :drawable, :drawable_t,
          :format, :pictformat_t,
          :value_mask, :uint32
    end

    class CreatePictureCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_create_picture_checked, [:pointer,:uint8,:picture_t,:drawable_t,:pictformat_t,:uint32,:pointer], CreatePictureCookie
    attach_function :xcb_create_picture, [:pointer,:uint8,:picture_t,:drawable_t,:pictformat_t,:uint32,:pointer], CreatePictureCookie
    class ChangePictureRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :picture, :picture_t,
          :value_mask, :uint32
    end

    class ChangePictureCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_change_picture_checked, [:pointer,:uint8,:picture_t,:uint32,:pointer], ChangePictureCookie
    attach_function :xcb_change_picture, [:pointer,:uint8,:picture_t,:uint32,:pointer], ChangePictureCookie
    class SetPictureClipRectanglesRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :picture, :picture_t,
          :clip_x_origin, :int16,
          :clip_y_origin, :int16
    end

    class SetPictureClipRectanglesCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_set_picture_clip_rectangles_checked, [:pointer,:uint8,:picture_t,:int16,:int16,:uint32], SetPictureClipRectanglesCookie
    attach_function :xcb_set_picture_clip_rectangles, [:pointer,:uint8,:picture_t,:int16,:int16,:uint32], SetPictureClipRectanglesCookie
    class FreePictureRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :picture, :picture_t
    end

    class FreePictureCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_free_picture_checked, [:pointer,:uint8,:picture_t], FreePictureCookie
    attach_function :xcb_free_picture, [:pointer,:uint8,:picture_t], FreePictureCookie
    class CompositeRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :op, :uint8,
          :pad1, [:uint8, 3],
          :src, :picture_t,
          :mask, :picture_t,
          :dst, :picture_t,
          :src_x, :int16,
          :src_y, :int16,
          :mask_x, :int16,
          :mask_y, :int16,
          :dst_x, :int16,
          :dst_y, :int16,
          :width, :uint16,
          :height, :uint16
    end

    class CompositeCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_composite_checked, [:pointer,:uint8,:uint8,:picture_t,:picture_t,:picture_t,:int16,:int16,:int16,:int16,:int16,:int16,:uint16,:uint16], CompositeCookie
    attach_function :xcb_composite, [:pointer,:uint8,:uint8,:picture_t,:picture_t,:picture_t,:int16,:int16,:int16,:int16,:int16,:int16,:uint16,:uint16], CompositeCookie
    class TrapezoidsRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :op, :uint8,
          :pad1, [:uint8, 3],
          :src, :picture_t,
          :dst, :picture_t,
          :mask_format, :pictformat_t,
          :src_x, :int16,
          :src_y, :int16
    end

    class TrapezoidsCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_trapezoids_checked, [:pointer,:uint8,:uint8,:picture_t,:picture_t,:pictformat_t,:int16,:int16,:uint32], TrapezoidsCookie
    attach_function :xcb_trapezoids, [:pointer,:uint8,:uint8,:picture_t,:picture_t,:pictformat_t,:int16,:int16,:uint32], TrapezoidsCookie
    class TrianglesRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :op, :uint8,
          :pad1, [:uint8, 3],
          :src, :picture_t,
          :dst, :picture_t,
          :mask_format, :pictformat_t,
          :src_x, :int16,
          :src_y, :int16
    end

    class TrianglesCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_triangles_checked, [:pointer,:uint8,:uint8,:picture_t,:picture_t,:pictformat_t,:int16,:int16,:uint32], TrianglesCookie
    attach_function :xcb_triangles, [:pointer,:uint8,:uint8,:picture_t,:picture_t,:pictformat_t,:int16,:int16,:uint32], TrianglesCookie
    class TriStripRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :op, :uint8,
          :pad1, [:uint8, 3],
          :src, :picture_t,
          :dst, :picture_t,
          :mask_format, :pictformat_t,
          :src_x, :int16,
          :src_y, :int16
    end

    class TriStripCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_tri_strip_checked, [:pointer,:uint8,:uint8,:picture_t,:picture_t,:pictformat_t,:int16,:int16,:uint32], TriStripCookie
    attach_function :xcb_tri_strip, [:pointer,:uint8,:uint8,:picture_t,:picture_t,:pictformat_t,:int16,:int16,:uint32], TriStripCookie
    class TriFanRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :op, :uint8,
          :pad1, [:uint8, 3],
          :src, :picture_t,
          :dst, :picture_t,
          :mask_format, :pictformat_t,
          :src_x, :int16,
          :src_y, :int16
    end

    class TriFanCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_tri_fan_checked, [:pointer,:uint8,:uint8,:picture_t,:picture_t,:pictformat_t,:int16,:int16,:uint32], TriFanCookie
    attach_function :xcb_tri_fan, [:pointer,:uint8,:uint8,:picture_t,:picture_t,:pictformat_t,:int16,:int16,:uint32], TriFanCookie
    class CreateGlyphSetRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :gsid, :glyphset_t,
          :format, :pictformat_t
    end

    class CreateGlyphSetCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_create_glyph_set_checked, [:pointer,:uint8,:glyphset_t,:pictformat_t], CreateGlyphSetCookie
    attach_function :xcb_create_glyph_set, [:pointer,:uint8,:glyphset_t,:pictformat_t], CreateGlyphSetCookie
    class ReferenceGlyphSetRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :gsid, :glyphset_t,
          :existing, :glyphset_t
    end

    class ReferenceGlyphSetCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_reference_glyph_set_checked, [:pointer,:uint8,:glyphset_t,:glyphset_t], ReferenceGlyphSetCookie
    attach_function :xcb_reference_glyph_set, [:pointer,:uint8,:glyphset_t,:glyphset_t], ReferenceGlyphSetCookie
    class FreeGlyphSetRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :glyphset, :glyphset_t
    end

    class FreeGlyphSetCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_free_glyph_set_checked, [:pointer,:uint8,:glyphset_t], FreeGlyphSetCookie
    attach_function :xcb_free_glyph_set, [:pointer,:uint8,:glyphset_t], FreeGlyphSetCookie
    class AddGlyphsRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :glyphset, :glyphset_t,
          :glyphs_len, :uint32
    end

    class AddGlyphsCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_add_glyphs_checked, [:pointer,:uint8,:glyphset_t,:uint32,:uint32,:uint32,:uint32], AddGlyphsCookie
    attach_function :xcb_add_glyphs, [:pointer,:uint8,:glyphset_t,:uint32,:uint32,:uint32,:uint32], AddGlyphsCookie
    class FreeGlyphsRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :glyphset, :glyphset_t
    end

    class FreeGlyphsCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_free_glyphs_checked, [:pointer,:uint8,:glyphset_t,:uint32], FreeGlyphsCookie
    attach_function :xcb_free_glyphs, [:pointer,:uint8,:glyphset_t,:uint32], FreeGlyphsCookie
    class CompositeGlyphs8Request < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :op, :uint8,
          :pad1, [:uint8, 3],
          :src, :picture_t,
          :dst, :picture_t,
          :mask_format, :pictformat_t,
          :glyphset, :glyphset_t,
          :src_x, :int16,
          :src_y, :int16
    end

    class CompositeGlyphs8Cookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_composite_glyphs_8_checked, [:pointer,:uint8,:uint8,:picture_t,:picture_t,:pictformat_t,:glyphset_t,:int16,:int16,:uint32], CompositeGlyphs8Cookie
    attach_function :xcb_composite_glyphs_8, [:pointer,:uint8,:uint8,:picture_t,:picture_t,:pictformat_t,:glyphset_t,:int16,:int16,:uint32], CompositeGlyphs8Cookie
    class CompositeGlyphs16Request < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :op, :uint8,
          :pad1, [:uint8, 3],
          :src, :picture_t,
          :dst, :picture_t,
          :mask_format, :pictformat_t,
          :glyphset, :glyphset_t,
          :src_x, :int16,
          :src_y, :int16
    end

    class CompositeGlyphs16Cookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_composite_glyphs_16_checked, [:pointer,:uint8,:uint8,:picture_t,:picture_t,:pictformat_t,:glyphset_t,:int16,:int16,:uint32], CompositeGlyphs16Cookie
    attach_function :xcb_composite_glyphs_16, [:pointer,:uint8,:uint8,:picture_t,:picture_t,:pictformat_t,:glyphset_t,:int16,:int16,:uint32], CompositeGlyphs16Cookie
    class CompositeGlyphs32Request < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :op, :uint8,
          :pad1, [:uint8, 3],
          :src, :picture_t,
          :dst, :picture_t,
          :mask_format, :pictformat_t,
          :glyphset, :glyphset_t,
          :src_x, :int16,
          :src_y, :int16
    end

    class CompositeGlyphs32Cookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_composite_glyphs_32_checked, [:pointer,:uint8,:uint8,:picture_t,:picture_t,:pictformat_t,:glyphset_t,:int16,:int16,:uint32], CompositeGlyphs32Cookie
    attach_function :xcb_composite_glyphs_32, [:pointer,:uint8,:uint8,:picture_t,:picture_t,:pictformat_t,:glyphset_t,:int16,:int16,:uint32], CompositeGlyphs32Cookie
    class FillRectanglesRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :op, :uint8,
          :pad1, [:uint8, 3],
          :dst, :picture_t,
          :color, Color
    end

    class FillRectanglesCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_fill_rectangles_checked, [:pointer,:uint8,:uint8,:picture_t,Color,:uint32], FillRectanglesCookie
    attach_function :xcb_fill_rectangles, [:pointer,:uint8,:uint8,:picture_t,Color,:uint32], FillRectanglesCookie
    class CreateCursorRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :cid, :cursor_t,
          :source, :picture_t,
          :x, :uint16,
          :y, :uint16
    end

    class CreateCursorCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_create_cursor_checked, [:pointer,:uint8,:cursor_t,:picture_t,:uint16,:uint16], CreateCursorCookie
    attach_function :xcb_create_cursor, [:pointer,:uint8,:cursor_t,:picture_t,:uint16,:uint16], CreateCursorCookie
    class SetPictureTransformRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :picture, :picture_t,
          :transform, Transform
    end

    class SetPictureTransformCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_set_picture_transform_checked, [:pointer,:uint8,:picture_t,Transform], SetPictureTransformCookie
    attach_function :xcb_set_picture_transform, [:pointer,:uint8,:picture_t,Transform], SetPictureTransformCookie
    class QueryFiltersRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :num_aliases, :uint32,
          :num_filters, :uint32,
          :pad2, [:uint8, 16]
    end

    class QueryFiltersCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_query_filters, [:pointer,:uint8,:uint32,:uint32,:uint32,:uint32], QueryFiltersCookie
    class QueryFiltersReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :num_aliases, :uint32,
          :num_filters, :uint32,
          :pad2, [:uint8, 16]
    end

    attach_function :xcb_query_filters_reply, [:pointer, QueryFiltersCookie, :pointer], :pointer

        
    class SetPictureFilterRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :picture, :picture_t,
          :filter_len, :uint16,
          :pad1, [:uint8, 2]
    end

    class SetPictureFilterCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_set_picture_filter_checked, [:pointer,:uint8,:picture_t,:uint16,:uint32,:uint32], SetPictureFilterCookie
    attach_function :xcb_set_picture_filter, [:pointer,:uint8,:picture_t,:uint16,:uint32,:uint32], SetPictureFilterCookie
    class CreateAnimCursorRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :cid, :cursor_t
    end

    class CreateAnimCursorCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_create_anim_cursor_checked, [:pointer,:uint8,:cursor_t,:uint32], CreateAnimCursorCookie
    attach_function :xcb_create_anim_cursor, [:pointer,:uint8,:cursor_t,:uint32], CreateAnimCursorCookie
    class AddTrapsRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :picture, :picture_t,
          :x_off, :int16,
          :y_off, :int16
    end

    class AddTrapsCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_add_traps_checked, [:pointer,:uint8,:picture_t,:int16,:int16,:uint32], AddTrapsCookie
    attach_function :xcb_add_traps, [:pointer,:uint8,:picture_t,:int16,:int16,:uint32], AddTrapsCookie
    class CreateSolidFillRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :picture, :picture_t,
          :color, Color
    end

    class CreateSolidFillCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_create_solid_fill_checked, [:pointer,:uint8,:picture_t,Color], CreateSolidFillCookie
    attach_function :xcb_create_solid_fill, [:pointer,:uint8,:picture_t,Color], CreateSolidFillCookie
    class CreateLinearGradientRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :picture, :picture_t,
          :p1, Pointfix,
          :p2, Pointfix,
          :num_stops, :uint32
    end

    class CreateLinearGradientCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_create_linear_gradient_checked, [:pointer,:uint8,:picture_t,Pointfix,Pointfix,:uint32,:uint32,:uint32], CreateLinearGradientCookie
    attach_function :xcb_create_linear_gradient, [:pointer,:uint8,:picture_t,Pointfix,Pointfix,:uint32,:uint32,:uint32], CreateLinearGradientCookie
    class CreateRadialGradientRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :picture, :picture_t,
          :inner, Pointfix,
          :outer, Pointfix,
          :inner_radius, :fixed_t,
          :outer_radius, :fixed_t,
          :num_stops, :uint32
    end

    class CreateRadialGradientCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_create_radial_gradient_checked, [:pointer,:uint8,:picture_t,Pointfix,Pointfix,:fixed_t,:fixed_t,:uint32,:uint32,:uint32], CreateRadialGradientCookie
    attach_function :xcb_create_radial_gradient, [:pointer,:uint8,:picture_t,Pointfix,Pointfix,:fixed_t,:fixed_t,:uint32,:uint32,:uint32], CreateRadialGradientCookie
    class CreateConicalGradientRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :picture, :picture_t,
          :center, Pointfix,
          :angle, :fixed_t,
          :num_stops, :uint32
    end

    class CreateConicalGradientCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_create_conical_gradient_checked, [:pointer,:uint8,:picture_t,Pointfix,:fixed_t,:uint32,:uint32,:uint32], CreateConicalGradientCookie
    attach_function :xcb_create_conical_gradient, [:pointer,:uint8,:picture_t,Pointfix,:fixed_t,:uint32,:uint32,:uint32], CreateConicalGradientCookie
  end
end
