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
    enum :xrb_pict_type_t, [
        :xrb_pict_type_indexed, 1,
        :xrb_pict_type_direct, 2
    ]
    enum :xrb_picture_t, [
        :xrb_picture_none, 1
    ]
    enum :xrb_pict_op_t, [
        :xrb_pict_op_clear, 1,
        :xrb_pict_op_src, 2,
        :xrb_pict_op_dst, 3,
        :xrb_pict_op_over, 4,
        :xrb_pict_op_over_reverse, 5,
        :xrb_pict_op_in, 6,
        :xrb_pict_op_in_reverse, 7,
        :xrb_pict_op_out, 8,
        :xrb_pict_op_out_reverse, 9,
        :xrb_pict_op_atop, 10,
        :xrb_pict_op_atop_reverse, 11,
        :xrb_pict_op_xor, 12,
        :xrb_pict_op_add, 13,
        :xrb_pict_op_saturate, 14,
        :xrb_pict_op_disjoint_clear, 16,
        :xrb_pict_op_disjoint_src, 17,
        :xrb_pict_op_disjoint_dst, 18,
        :xrb_pict_op_disjoint_over, 19,
        :xrb_pict_op_disjoint_over_reverse, 20,
        :xrb_pict_op_disjoint_in, 21,
        :xrb_pict_op_disjoint_in_reverse, 22,
        :xrb_pict_op_disjoint_out, 23,
        :xrb_pict_op_disjoint_out_reverse, 24,
        :xrb_pict_op_disjoint_atop, 25,
        :xrb_pict_op_disjoint_atop_reverse, 26,
        :xrb_pict_op_disjoint_xor, 27,
        :xrb_pict_op_conjoint_clear, 32,
        :xrb_pict_op_conjoint_src, 33,
        :xrb_pict_op_conjoint_dst, 34,
        :xrb_pict_op_conjoint_over, 35,
        :xrb_pict_op_conjoint_over_reverse, 36,
        :xrb_pict_op_conjoint_in, 37,
        :xrb_pict_op_conjoint_in_reverse, 38,
        :xrb_pict_op_conjoint_out, 39,
        :xrb_pict_op_conjoint_out_reverse, 40,
        :xrb_pict_op_conjoint_atop, 41,
        :xrb_pict_op_conjoint_atop_reverse, 42,
        :xrb_pict_op_conjoint_xor, 43,
        :xrb_pict_op_multiply, 48,
        :xrb_pict_op_screen, 49,
        :xrb_pict_op_overlay, 50,
        :xrb_pict_op_darken, 51,
        :xrb_pict_op_lighten, 52,
        :xrb_pict_op_color_dodge, 53,
        :xrb_pict_op_color_burn, 54,
        :xrb_pict_op_hard_light, 55,
        :xrb_pict_op_soft_light, 56,
        :xrb_pict_op_difference, 57,
        :xrb_pict_op_exclusion, 58,
        :xrb_pict_op_hsl_hue, 59,
        :xrb_pict_op_hsl_saturation, 60,
        :xrb_pict_op_hsl_color, 61,
        :xrb_pict_op_hsl_luminosity, 62
    ]
    enum :xrb_poly_edge_t, [
        :xrb_poly_edge_sharp, 1,
        :xrb_poly_edge_smooth, 2
    ]
    enum :xrb_poly_mode_t, [
        :xrb_poly_mode_precise, 1,
        :xrb_poly_mode_imprecise, 2
    ]
    enum :xrb_cp_t, [
        :xrb_cp_repeat, 1 << 0,
        :xrb_cp_alpha_map, 1 << 1,
        :xrb_cp_alpha_x_origin, 1 << 2,
        :xrb_cp_alpha_y_origin, 1 << 3,
        :xrb_cp_clip_x_origin, 1 << 4,
        :xrb_cp_clip_y_origin, 1 << 5,
        :xrb_cp_clip_mask, 1 << 6,
        :xrb_cp_graphics_exposure, 1 << 7,
        :xrb_cp_subwindow_mode, 1 << 8,
        :xrb_cp_poly_edge, 1 << 9,
        :xrb_cp_poly_mode, 1 << 10,
        :xrb_cp_dither, 1 << 11,
        :xrb_cp_component_alpha, 1 << 12
    ]
    enum :xrb_sub_pixel_t, [
        :xrb_sub_pixel_unknown, 1,
        :xrb_sub_pixel_horizontal_rgb, 2,
        :xrb_sub_pixel_horizontal_bgr, 3,
        :xrb_sub_pixel_vertical_rgb, 4,
        :xrb_sub_pixel_vertical_bgr, 5,
        :xrb_sub_pixel_none, 6
    ]
    enum :xrb_repeat_t, [
        :xrb_repeat_none, 1,
        :xrb_repeat_normal, 2,
        :xrb_repeat_pad, 3,
        :xrb_repeat_reflect, 4
    ]
    typedef :uint32, :xrb_glyph_t
    class XrbGlyphIterator < FFI::Struct
      layout \
          :data, :xrb_window_t,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_glyph_next, [:pointer], :void
    attach_function :xcb_glyph_end, [:pointer], XrbGenericIterator
    typedef :uint32, :xrb_glyphset_t
    class XrbGlyphsetIterator < FFI::Struct
      layout \
          :data, :xrb_window_t,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_glyphset_next, [:pointer], :void
    attach_function :xcb_glyphset_end, [:pointer], XrbGenericIterator
    typedef :uint32, :xrb_picture_t
    class XrbPictureIterator < FFI::Struct
      layout \
          :data, :xrb_window_t,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_picture_next, [:pointer], :void
    attach_function :xcb_picture_end, [:pointer], XrbGenericIterator
    typedef :uint32, :xrb_pictformat_t
    class XrbPictformatIterator < FFI::Struct
      layout \
          :data, :xrb_window_t,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_pictformat_next, [:pointer], :void
    attach_function :xcb_pictformat_end, [:pointer], XrbGenericIterator
    typedef :int32, :xrb_fixed_t
    class XrbFixedIterator < FFI::Struct
      layout \
          :data, :xrb_window_t,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_fixed_next, [:pointer], :void
    attach_function :xcb_fixed_end, [:pointer], XrbGenericIterator
    class XrbDirectformat < FFI::Struct
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

    class XrbDirectformatIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_directformat_next, [:pointer], :void
    attach_function :xcb_directformat_end, [:pointer], XrbGenericIterator
    class XrbPictforminfo < FFI::Struct
      layout \
          :id, :xrb_pictformat_t,
          :type, :uint8,
          :depth, :uint8,
          :pad1, [:uint8, 2],
          :direct, XrbDirectformat,
          :colormap, :xrb_colormap_t
    end

    class XrbPictforminfoIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_pictforminfo_next, [:pointer], :void
    attach_function :xcb_pictforminfo_end, [:pointer], XrbGenericIterator
    class XrbPictvisual < FFI::Struct
      layout \
          :visual, :xrb_visualid_t,
          :format, :xrb_pictformat_t
    end

    class XrbPictvisualIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_pictvisual_next, [:pointer], :void
    attach_function :xcb_pictvisual_end, [:pointer], XrbGenericIterator
    class XrbPictdepth < FFI::Struct
      layout \
          :depth, :uint8,
          :pad1, [:uint8, 1],
          :num_visuals, :uint16,
          :pad2, [:uint8, 4]
    end

    class XrbPictdepthIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_pictdepth_next, [:pointer], :void
    attach_function :xcb_pictdepth_end, [:pointer], XrbGenericIterator
    attach_function :xcb_pictdepth_sizeof, [:pointer], :int
    attach_function :xcb_pictdepth_visuals_length, [:pointer], :int
    class XrbPictscreen < FFI::Struct
      layout \
          :num_depths, :uint32,
          :fallback, :xrb_pictformat_t
    end

    class XrbPictscreenIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_pictscreen_next, [:pointer], :void
    attach_function :xcb_pictscreen_end, [:pointer], XrbGenericIterator
    attach_function :xcb_pictscreen_sizeof, [:pointer], :int
    attach_function :xcb_pictscreen_depths_length, [:pointer], :int
    class XrbIndexvalue < FFI::Struct
      layout \
          :pixel, :uint32,
          :red, :uint16,
          :green, :uint16,
          :blue, :uint16,
          :alpha, :uint16
    end

    class XrbIndexvalueIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_indexvalue_next, [:pointer], :void
    attach_function :xcb_indexvalue_end, [:pointer], XrbGenericIterator
    class XrbColor < FFI::Struct
      layout \
          :red, :uint16,
          :green, :uint16,
          :blue, :uint16,
          :alpha, :uint16
    end

    class XrbColorIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_color_next, [:pointer], :void
    attach_function :xcb_color_end, [:pointer], XrbGenericIterator
    class XrbPointfix < FFI::Struct
      layout \
          :x, :xrb_fixed_t,
          :y, :xrb_fixed_t
    end

    class XrbPointfixIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_pointfix_next, [:pointer], :void
    attach_function :xcb_pointfix_end, [:pointer], XrbGenericIterator
    class XrbLinefix < FFI::Struct
      layout \
          :p1, XrbPointfix,
          :p2, XrbPointfix
    end

    class XrbLinefixIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_linefix_next, [:pointer], :void
    attach_function :xcb_linefix_end, [:pointer], XrbGenericIterator
    class XrbTriangle < FFI::Struct
      layout \
          :p1, XrbPointfix,
          :p2, XrbPointfix,
          :p3, XrbPointfix
    end

    class XrbTriangleIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_triangle_next, [:pointer], :void
    attach_function :xcb_triangle_end, [:pointer], XrbGenericIterator
    class XrbTrapezoid < FFI::Struct
      layout \
          :top, :xrb_fixed_t,
          :bottom, :xrb_fixed_t,
          :left, XrbLinefix,
          :right, XrbLinefix
    end

    class XrbTrapezoidIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_trapezoid_next, [:pointer], :void
    attach_function :xcb_trapezoid_end, [:pointer], XrbGenericIterator
    class XrbGlyphinfo < FFI::Struct
      layout \
          :width, :uint16,
          :height, :uint16,
          :x, :int16,
          :y, :int16,
          :x_off, :int16,
          :y_off, :int16
    end

    class XrbGlyphinfoIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_glyphinfo_next, [:pointer], :void
    attach_function :xcb_glyphinfo_end, [:pointer], XrbGenericIterator
    class XrbTransform < FFI::Struct
      layout \
          :matrix11, :xrb_fixed_t,
          :matrix12, :xrb_fixed_t,
          :matrix13, :xrb_fixed_t,
          :matrix21, :xrb_fixed_t,
          :matrix22, :xrb_fixed_t,
          :matrix23, :xrb_fixed_t,
          :matrix31, :xrb_fixed_t,
          :matrix32, :xrb_fixed_t,
          :matrix33, :xrb_fixed_t
    end

    class XrbTransformIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_transform_next, [:pointer], :void
    attach_function :xcb_transform_end, [:pointer], XrbGenericIterator
    class XrbAnimcursorelt < FFI::Struct
      layout \
          :cursor, :xrb_cursor_t,
          :delay, :uint32
    end

    class XrbAnimcursoreltIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_animcursorelt_next, [:pointer], :void
    attach_function :xcb_animcursorelt_end, [:pointer], XrbGenericIterator
    class XrbSpanfix < FFI::Struct
      layout \
          :l, :xrb_fixed_t,
          :r, :xrb_fixed_t,
          :y, :xrb_fixed_t
    end

    class XrbSpanfixIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_spanfix_next, [:pointer], :void
    attach_function :xcb_spanfix_end, [:pointer], XrbGenericIterator
    class XrbTrap < FFI::Struct
      layout \
          :top, XrbSpanfix,
          :bot, XrbSpanfix
    end

    class XrbTrapIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_trap_next, [:pointer], :void
    attach_function :xcb_trap_end, [:pointer], XrbGenericIterator
    class XrbPictFormatError < FFI::Struct
      layout \
          :response_type, :uint8,
          :error_code, :uint8,
          :sequence, :uint16
    end

    class XrbPictureError < FFI::Struct
      layout \
          :response_type, :uint8,
          :error_code, :uint8,
          :sequence, :uint16
    end

    class XrbPictOpError < FFI::Struct
      layout \
          :response_type, :uint8,
          :error_code, :uint8,
          :sequence, :uint16
    end

    class XrbGlyphSetError < FFI::Struct
      layout \
          :response_type, :uint8,
          :error_code, :uint8,
          :sequence, :uint16
    end

    class XrbGlyphError < FFI::Struct
      layout \
          :response_type, :uint8,
          :error_code, :uint8,
          :sequence, :uint16
    end

    class XrbQueryVersionRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :major_version, :uint32,
          :minor_version, :uint32,
          :pad2, [:uint8, 16]
    end

    class XrbQueryVersionCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_query_version, [:pointer,:uint8,:uint8,:uint16,:uint32,:uint32], XrbQueryVersionCookie
    class XrbQueryVersionReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :major_version, :uint32,
          :minor_version, :uint32,
          :pad2, [:uint8, 16]
    end

    attach_function :xcb_query_version_reply, [:pointer, XrbQueryVersionCookie, :pointer], :pointer

        
    class XrbQueryPictFormatsRequest < FFI::Struct
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

    class XrbQueryPictFormatsCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_query_pict_formats, [:pointer,:uint8,:uint8,:uint16,:uint32,:uint32,:uint32,:uint32,:uint32,:uint32,:uint32,:uint32], XrbQueryPictFormatsCookie
    class XrbQueryPictFormatsReply < FFI::Struct
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

    attach_function :xcb_query_pict_formats_reply, [:pointer, XrbQueryPictFormatsCookie, :pointer], :pointer

        
    class XrbQueryPictIndexValuesRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :num_values, :uint32,
          :pad2, [:uint8, 20]
    end

    class XrbQueryPictIndexValuesCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_query_pict_index_values, [:pointer,:uint8,:uint8,:uint16,:uint32,:uint32], XrbQueryPictIndexValuesCookie
    class XrbQueryPictIndexValuesReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :num_values, :uint32,
          :pad2, [:uint8, 20]
    end

    attach_function :xcb_query_pict_index_values_reply, [:pointer, XrbQueryPictIndexValuesCookie, :pointer], :pointer

        
    class XrbCreatePictureRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :pid, :xrb_picture_t,
          :drawable, :xrb_drawable_t,
          :format, :xrb_pictformat_t,
          :value_mask, :uint32
    end

    class XrbCreatePictureCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_create_picture_checked, [:pointer,:uint8,:uint8,:uint16,:xrb_picture_t,:xrb_drawable_t,:xrb_pictformat_t,:uint32], XrbCreatePictureCookie
    attach_function :xcb_create_picture, [:pointer,:uint8,:uint8,:uint16,:xrb_picture_t,:xrb_drawable_t,:xrb_pictformat_t,:uint32], XrbCreatePictureCookie
    class XrbChangePictureRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :picture, :xrb_picture_t,
          :value_mask, :uint32
    end

    class XrbChangePictureCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_change_picture_checked, [:pointer,:uint8,:uint8,:uint16,:xrb_picture_t,:uint32], XrbChangePictureCookie
    attach_function :xcb_change_picture, [:pointer,:uint8,:uint8,:uint16,:xrb_picture_t,:uint32], XrbChangePictureCookie
    class XrbSetPictureClipRectanglesRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :picture, :xrb_picture_t,
          :clip_x_origin, :int16,
          :clip_y_origin, :int16
    end

    class XrbSetPictureClipRectanglesCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_set_picture_clip_rectangles_checked, [:pointer,:uint8,:uint8,:uint16,:xrb_picture_t,:int16,:int16,:uint32], XrbSetPictureClipRectanglesCookie
    attach_function :xcb_set_picture_clip_rectangles, [:pointer,:uint8,:uint8,:uint16,:xrb_picture_t,:int16,:int16,:uint32], XrbSetPictureClipRectanglesCookie
    class XrbFreePictureRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :picture, :xrb_picture_t
    end

    class XrbFreePictureCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_free_picture_checked, [:pointer,:uint8,:uint8,:uint16,:xrb_picture_t], XrbFreePictureCookie
    attach_function :xcb_free_picture, [:pointer,:uint8,:uint8,:uint16,:xrb_picture_t], XrbFreePictureCookie
    class XrbCompositeRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :op, :uint8,
          :pad1, [:uint8, 3],
          :src, :xrb_picture_t,
          :mask, :xrb_picture_t,
          :dst, :xrb_picture_t,
          :src_x, :int16,
          :src_y, :int16,
          :mask_x, :int16,
          :mask_y, :int16,
          :dst_x, :int16,
          :dst_y, :int16,
          :width, :uint16,
          :height, :uint16
    end

    class XrbCompositeCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_composite_checked, [:pointer,:uint8,:uint8,:uint16,:uint8,:xrb_picture_t,:xrb_picture_t,:xrb_picture_t,:int16,:int16,:int16,:int16,:int16,:int16,:uint16,:uint16], XrbCompositeCookie
    attach_function :xcb_composite, [:pointer,:uint8,:uint8,:uint16,:uint8,:xrb_picture_t,:xrb_picture_t,:xrb_picture_t,:int16,:int16,:int16,:int16,:int16,:int16,:uint16,:uint16], XrbCompositeCookie
    class XrbTrapezoidsRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :op, :uint8,
          :pad1, [:uint8, 3],
          :src, :xrb_picture_t,
          :dst, :xrb_picture_t,
          :mask_format, :xrb_pictformat_t,
          :src_x, :int16,
          :src_y, :int16
    end

    class XrbTrapezoidsCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_trapezoids_checked, [:pointer,:uint8,:uint8,:uint16,:uint8,:xrb_picture_t,:xrb_picture_t,:xrb_pictformat_t,:int16,:int16,:uint32], XrbTrapezoidsCookie
    attach_function :xcb_trapezoids, [:pointer,:uint8,:uint8,:uint16,:uint8,:xrb_picture_t,:xrb_picture_t,:xrb_pictformat_t,:int16,:int16,:uint32], XrbTrapezoidsCookie
    class XrbTrianglesRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :op, :uint8,
          :pad1, [:uint8, 3],
          :src, :xrb_picture_t,
          :dst, :xrb_picture_t,
          :mask_format, :xrb_pictformat_t,
          :src_x, :int16,
          :src_y, :int16
    end

    class XrbTrianglesCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_triangles_checked, [:pointer,:uint8,:uint8,:uint16,:uint8,:xrb_picture_t,:xrb_picture_t,:xrb_pictformat_t,:int16,:int16,:uint32], XrbTrianglesCookie
    attach_function :xcb_triangles, [:pointer,:uint8,:uint8,:uint16,:uint8,:xrb_picture_t,:xrb_picture_t,:xrb_pictformat_t,:int16,:int16,:uint32], XrbTrianglesCookie
    class XrbTriStripRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :op, :uint8,
          :pad1, [:uint8, 3],
          :src, :xrb_picture_t,
          :dst, :xrb_picture_t,
          :mask_format, :xrb_pictformat_t,
          :src_x, :int16,
          :src_y, :int16
    end

    class XrbTriStripCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_tri_strip_checked, [:pointer,:uint8,:uint8,:uint16,:uint8,:xrb_picture_t,:xrb_picture_t,:xrb_pictformat_t,:int16,:int16,:uint32], XrbTriStripCookie
    attach_function :xcb_tri_strip, [:pointer,:uint8,:uint8,:uint16,:uint8,:xrb_picture_t,:xrb_picture_t,:xrb_pictformat_t,:int16,:int16,:uint32], XrbTriStripCookie
    class XrbTriFanRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :op, :uint8,
          :pad1, [:uint8, 3],
          :src, :xrb_picture_t,
          :dst, :xrb_picture_t,
          :mask_format, :xrb_pictformat_t,
          :src_x, :int16,
          :src_y, :int16
    end

    class XrbTriFanCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_tri_fan_checked, [:pointer,:uint8,:uint8,:uint16,:uint8,:xrb_picture_t,:xrb_picture_t,:xrb_pictformat_t,:int16,:int16,:uint32], XrbTriFanCookie
    attach_function :xcb_tri_fan, [:pointer,:uint8,:uint8,:uint16,:uint8,:xrb_picture_t,:xrb_picture_t,:xrb_pictformat_t,:int16,:int16,:uint32], XrbTriFanCookie
    class XrbCreateGlyphSetRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :gsid, :xrb_glyphset_t,
          :format, :xrb_pictformat_t
    end

    class XrbCreateGlyphSetCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_create_glyph_set_checked, [:pointer,:uint8,:uint8,:uint16,:xrb_glyphset_t,:xrb_pictformat_t], XrbCreateGlyphSetCookie
    attach_function :xcb_create_glyph_set, [:pointer,:uint8,:uint8,:uint16,:xrb_glyphset_t,:xrb_pictformat_t], XrbCreateGlyphSetCookie
    class XrbReferenceGlyphSetRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :gsid, :xrb_glyphset_t,
          :existing, :xrb_glyphset_t
    end

    class XrbReferenceGlyphSetCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_reference_glyph_set_checked, [:pointer,:uint8,:uint8,:uint16,:xrb_glyphset_t,:xrb_glyphset_t], XrbReferenceGlyphSetCookie
    attach_function :xcb_reference_glyph_set, [:pointer,:uint8,:uint8,:uint16,:xrb_glyphset_t,:xrb_glyphset_t], XrbReferenceGlyphSetCookie
    class XrbFreeGlyphSetRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :glyphset, :xrb_glyphset_t
    end

    class XrbFreeGlyphSetCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_free_glyph_set_checked, [:pointer,:uint8,:uint8,:uint16,:xrb_glyphset_t], XrbFreeGlyphSetCookie
    attach_function :xcb_free_glyph_set, [:pointer,:uint8,:uint8,:uint16,:xrb_glyphset_t], XrbFreeGlyphSetCookie
    class XrbAddGlyphsRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :glyphset, :xrb_glyphset_t,
          :glyphs_len, :uint32
    end

    class XrbAddGlyphsCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_add_glyphs_checked, [:pointer,:uint8,:uint8,:uint16,:xrb_glyphset_t,:uint32,:uint32,:uint32,:uint32], XrbAddGlyphsCookie
    attach_function :xcb_add_glyphs, [:pointer,:uint8,:uint8,:uint16,:xrb_glyphset_t,:uint32,:uint32,:uint32,:uint32], XrbAddGlyphsCookie
    class XrbFreeGlyphsRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :glyphset, :xrb_glyphset_t
    end

    class XrbFreeGlyphsCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_free_glyphs_checked, [:pointer,:uint8,:uint8,:uint16,:xrb_glyphset_t,:uint32], XrbFreeGlyphsCookie
    attach_function :xcb_free_glyphs, [:pointer,:uint8,:uint8,:uint16,:xrb_glyphset_t,:uint32], XrbFreeGlyphsCookie
    class XrbCompositeGlyphs8Request < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :op, :uint8,
          :pad1, [:uint8, 3],
          :src, :xrb_picture_t,
          :dst, :xrb_picture_t,
          :mask_format, :xrb_pictformat_t,
          :glyphset, :xrb_glyphset_t,
          :src_x, :int16,
          :src_y, :int16
    end

    class XrbCompositeGlyphs8Cookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_composite_glyphs_8_checked, [:pointer,:uint8,:uint8,:uint16,:uint8,:xrb_picture_t,:xrb_picture_t,:xrb_pictformat_t,:xrb_glyphset_t,:int16,:int16,:uint32], XrbCompositeGlyphs8Cookie
    attach_function :xcb_composite_glyphs_8, [:pointer,:uint8,:uint8,:uint16,:uint8,:xrb_picture_t,:xrb_picture_t,:xrb_pictformat_t,:xrb_glyphset_t,:int16,:int16,:uint32], XrbCompositeGlyphs8Cookie
    class XrbCompositeGlyphs16Request < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :op, :uint8,
          :pad1, [:uint8, 3],
          :src, :xrb_picture_t,
          :dst, :xrb_picture_t,
          :mask_format, :xrb_pictformat_t,
          :glyphset, :xrb_glyphset_t,
          :src_x, :int16,
          :src_y, :int16
    end

    class XrbCompositeGlyphs16Cookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_composite_glyphs_16_checked, [:pointer,:uint8,:uint8,:uint16,:uint8,:xrb_picture_t,:xrb_picture_t,:xrb_pictformat_t,:xrb_glyphset_t,:int16,:int16,:uint32], XrbCompositeGlyphs16Cookie
    attach_function :xcb_composite_glyphs_16, [:pointer,:uint8,:uint8,:uint16,:uint8,:xrb_picture_t,:xrb_picture_t,:xrb_pictformat_t,:xrb_glyphset_t,:int16,:int16,:uint32], XrbCompositeGlyphs16Cookie
    class XrbCompositeGlyphs32Request < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :op, :uint8,
          :pad1, [:uint8, 3],
          :src, :xrb_picture_t,
          :dst, :xrb_picture_t,
          :mask_format, :xrb_pictformat_t,
          :glyphset, :xrb_glyphset_t,
          :src_x, :int16,
          :src_y, :int16
    end

    class XrbCompositeGlyphs32Cookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_composite_glyphs_32_checked, [:pointer,:uint8,:uint8,:uint16,:uint8,:xrb_picture_t,:xrb_picture_t,:xrb_pictformat_t,:xrb_glyphset_t,:int16,:int16,:uint32], XrbCompositeGlyphs32Cookie
    attach_function :xcb_composite_glyphs_32, [:pointer,:uint8,:uint8,:uint16,:uint8,:xrb_picture_t,:xrb_picture_t,:xrb_pictformat_t,:xrb_glyphset_t,:int16,:int16,:uint32], XrbCompositeGlyphs32Cookie
    class XrbFillRectanglesRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :op, :uint8,
          :pad1, [:uint8, 3],
          :dst, :xrb_picture_t,
          :color, XrbColor
    end

    class XrbFillRectanglesCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_fill_rectangles_checked, [:pointer,:uint8,:uint8,:uint16,:uint8,:xrb_picture_t,XrbColor,:uint32], XrbFillRectanglesCookie
    attach_function :xcb_fill_rectangles, [:pointer,:uint8,:uint8,:uint16,:uint8,:xrb_picture_t,XrbColor,:uint32], XrbFillRectanglesCookie
    class XrbCreateCursorRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :cid, :xrb_cursor_t,
          :source, :xrb_picture_t,
          :x, :uint16,
          :y, :uint16
    end

    class XrbCreateCursorCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_create_cursor_checked, [:pointer,:uint8,:uint8,:uint16,:xrb_cursor_t,:xrb_picture_t,:uint16,:uint16], XrbCreateCursorCookie
    attach_function :xcb_create_cursor, [:pointer,:uint8,:uint8,:uint16,:xrb_cursor_t,:xrb_picture_t,:uint16,:uint16], XrbCreateCursorCookie
    class XrbSetPictureTransformRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :picture, :xrb_picture_t,
          :transform, XrbTransform
    end

    class XrbSetPictureTransformCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_set_picture_transform_checked, [:pointer,:uint8,:uint8,:uint16,:xrb_picture_t,XrbTransform], XrbSetPictureTransformCookie
    attach_function :xcb_set_picture_transform, [:pointer,:uint8,:uint8,:uint16,:xrb_picture_t,XrbTransform], XrbSetPictureTransformCookie
    class XrbQueryFiltersRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :num_aliases, :uint32,
          :num_filters, :uint32,
          :pad2, [:uint8, 16]
    end

    class XrbQueryFiltersCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_query_filters, [:pointer,:uint8,:uint8,:uint16,:uint32,:uint32,:uint32,:uint32], XrbQueryFiltersCookie
    class XrbQueryFiltersReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :num_aliases, :uint32,
          :num_filters, :uint32,
          :pad2, [:uint8, 16]
    end

    attach_function :xcb_query_filters_reply, [:pointer, XrbQueryFiltersCookie, :pointer], :pointer

        
    class XrbSetPictureFilterRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :picture, :xrb_picture_t,
          :filter_len, :uint16,
          :pad1, [:uint8, 2]
    end

    class XrbSetPictureFilterCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_set_picture_filter_checked, [:pointer,:uint8,:uint8,:uint16,:xrb_picture_t,:uint16,:uint32,:uint32], XrbSetPictureFilterCookie
    attach_function :xcb_set_picture_filter, [:pointer,:uint8,:uint8,:uint16,:xrb_picture_t,:uint16,:uint32,:uint32], XrbSetPictureFilterCookie
    class XrbCreateAnimCursorRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :cid, :xrb_cursor_t
    end

    class XrbCreateAnimCursorCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_create_anim_cursor_checked, [:pointer,:uint8,:uint8,:uint16,:xrb_cursor_t,:uint32], XrbCreateAnimCursorCookie
    attach_function :xcb_create_anim_cursor, [:pointer,:uint8,:uint8,:uint16,:xrb_cursor_t,:uint32], XrbCreateAnimCursorCookie
    class XrbAddTrapsRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :picture, :xrb_picture_t,
          :x_off, :int16,
          :y_off, :int16
    end

    class XrbAddTrapsCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_add_traps_checked, [:pointer,:uint8,:uint8,:uint16,:xrb_picture_t,:int16,:int16,:uint32], XrbAddTrapsCookie
    attach_function :xcb_add_traps, [:pointer,:uint8,:uint8,:uint16,:xrb_picture_t,:int16,:int16,:uint32], XrbAddTrapsCookie
    class XrbCreateSolidFillRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :picture, :xrb_picture_t,
          :color, XrbColor
    end

    class XrbCreateSolidFillCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_create_solid_fill_checked, [:pointer,:uint8,:uint8,:uint16,:xrb_picture_t,XrbColor], XrbCreateSolidFillCookie
    attach_function :xcb_create_solid_fill, [:pointer,:uint8,:uint8,:uint16,:xrb_picture_t,XrbColor], XrbCreateSolidFillCookie
    class XrbCreateLinearGradientRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :picture, :xrb_picture_t,
          :p1, XrbPointfix,
          :p2, XrbPointfix,
          :num_stops, :uint32
    end

    class XrbCreateLinearGradientCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_create_linear_gradient_checked, [:pointer,:uint8,:uint8,:uint16,:xrb_picture_t,XrbPointfix,XrbPointfix,:uint32,:uint32,:uint32], XrbCreateLinearGradientCookie
    attach_function :xcb_create_linear_gradient, [:pointer,:uint8,:uint8,:uint16,:xrb_picture_t,XrbPointfix,XrbPointfix,:uint32,:uint32,:uint32], XrbCreateLinearGradientCookie
    class XrbCreateRadialGradientRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :picture, :xrb_picture_t,
          :inner, XrbPointfix,
          :outer, XrbPointfix,
          :inner_radius, :xrb_fixed_t,
          :outer_radius, :xrb_fixed_t,
          :num_stops, :uint32
    end

    class XrbCreateRadialGradientCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_create_radial_gradient_checked, [:pointer,:uint8,:uint8,:uint16,:xrb_picture_t,XrbPointfix,XrbPointfix,:xrb_fixed_t,:xrb_fixed_t,:uint32,:uint32,:uint32], XrbCreateRadialGradientCookie
    attach_function :xcb_create_radial_gradient, [:pointer,:uint8,:uint8,:uint16,:xrb_picture_t,XrbPointfix,XrbPointfix,:xrb_fixed_t,:xrb_fixed_t,:uint32,:uint32,:uint32], XrbCreateRadialGradientCookie
    class XrbCreateConicalGradientRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :picture, :xrb_picture_t,
          :center, XrbPointfix,
          :angle, :xrb_fixed_t,
          :num_stops, :uint32
    end

    class XrbCreateConicalGradientCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_create_conical_gradient_checked, [:pointer,:uint8,:uint8,:uint16,:xrb_picture_t,XrbPointfix,:xrb_fixed_t,:uint32,:uint32,:uint32], XrbCreateConicalGradientCookie
    attach_function :xcb_create_conical_gradient, [:pointer,:uint8,:uint8,:uint16,:xrb_picture_t,XrbPointfix,:xrb_fixed_t,:uint32,:uint32,:uint32], XrbCreateConicalGradientCookie
  end
end
