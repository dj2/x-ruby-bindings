#
# This file auto-generated. Do not edit.
#

require 'ffi'
require 'xrb/xproto'
class Xrb
  class Glx
    extend FFI::Library
    ffi_lib 'glx'
    MAJOR_VERSION = 1
    MINOR_VERSION = 3
    typedef :uint32, :xrb_pixmap_t
    class XrbPixmapIterator < FFI::Struct
      layout \
          :data, :xrb_window_t,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_pixmap_next, [:pointer], :void
    attach_function :xcb_pixmap_end, [:pointer], XrbGenericIterator
    typedef :uint32, :xrb_context_t
    class XrbContextIterator < FFI::Struct
      layout \
          :data, :xrb_window_t,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_context_next, [:pointer], :void
    attach_function :xcb_context_end, [:pointer], XrbGenericIterator
    typedef :uint32, :xrb_pbuffer_t
    class XrbPbufferIterator < FFI::Struct
      layout \
          :data, :xrb_window_t,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_pbuffer_next, [:pointer], :void
    attach_function :xcb_pbuffer_end, [:pointer], XrbGenericIterator
    typedef :uint32, :xrb_window_t
    class XrbWindowIterator < FFI::Struct
      layout \
          :data, :xrb_window_t,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_window_next, [:pointer], :void
    attach_function :xcb_window_end, [:pointer], XrbGenericIterator
    typedef :uint32, :xrb_fbconfig_t
    class XrbFbconfigIterator < FFI::Struct
      layout \
          :data, :xrb_window_t,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_fbconfig_next, [:pointer], :void
    attach_function :xcb_fbconfig_end, [:pointer], XrbGenericIterator
    typedef :uint32, :xrb_drawable_t
    class XrbDrawableIterator < FFI::Struct
      layout \
          :data, :xrb_window_t,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_drawable_next, [:pointer], :void
    attach_function :xcb_drawable_end, [:pointer], XrbGenericIterator
    typedef :float, :xrb_float32_t
    class XrbFloat32Iterator < FFI::Struct
      layout \
          :data, :xrb_window_t,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_float32_next, [:pointer], :void
    attach_function :xcb_float32_end, [:pointer], XrbGenericIterator
    typedef :double, :xrb_float64_t
    class XrbFloat64Iterator < FFI::Struct
      layout \
          :data, :xrb_window_t,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_float64_next, [:pointer], :void
    attach_function :xcb_float64_end, [:pointer], XrbGenericIterator
    typedef :uint32, :xrb_bool32_t
    class XrbBool32Iterator < FFI::Struct
      layout \
          :data, :xrb_window_t,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_bool32_next, [:pointer], :void
    attach_function :xcb_bool32_end, [:pointer], XrbGenericIterator
    typedef :uint32, :xrb_context_tag_t
    class XrbCONTEXT_TAGIterator < FFI::Struct
      layout \
          :data, :xrb_window_t,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_context_tag_next, [:pointer], :void
    attach_function :xcb_context_tag_end, [:pointer], XrbGenericIterator
    enum :xrb_pbcet_t, [
        :xrb_pbcet_damaged, 32791,
        :xrb_pbcet_saved, 32792
    ]
    enum :xrb_pbcdt_t, [
        :xrb_pbcdt_window, 32793,
        :xrb_pbcdt_pbuffer, 32794
    ]
    enum :xrb_gc_t, [
        :xrb_gc_gl_current_bit, 1 << 0,
        :xrb_gc_gl_point_bit, 1 << 1,
        :xrb_gc_gl_line_bit, 1 << 2,
        :xrb_gc_gl_polygon_bit, 1 << 3,
        :xrb_gc_gl_polygon_stipple_bit, 1 << 4,
        :xrb_gc_gl_pixel_mode_bit, 1 << 5,
        :xrb_gc_gl_lighting_bit, 1 << 6,
        :xrb_gc_gl_fog_bit, 1 << 7,
        :xrb_gc_gl_depth_buffer_bit, 1 << 8,
        :xrb_gc_gl_accum_buffer_bit, 1 << 9,
        :xrb_gc_gl_stencil_buffer_bit, 1 << 10,
        :xrb_gc_gl_viewport_bit, 1 << 11,
        :xrb_gc_gl_transform_bit, 1 << 12,
        :xrb_gc_gl_enable_bit, 1 << 13,
        :xrb_gc_gl_color_buffer_bit, 1 << 14,
        :xrb_gc_gl_hint_bit, 1 << 15,
        :xrb_gc_gl_eval_bit, 1 << 16,
        :xrb_gc_gl_list_bit, 1 << 17,
        :xrb_gc_gl_texture_bit, 1 << 18,
        :xrb_gc_gl_scissor_bit, 1 << 19,
        :xrb_gc_gl_all_attrib_bits, 16777215
    ]
    enum :xrb_rm_t, [
        :xrb_rm_gl_render, 7168,
        :xrb_rm_gl_feedback, 7169,
        :xrb_rm_gl_select, 7170
    ]
    class XrbPbufferClobberEvent < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :event_type, :uint16,
          :draw_type, :uint16,
          :drawable, :xrb_drawable_t,
          :b_mask, :uint32,
          :aux_buffer, :uint16,
          :x, :uint16,
          :y, :uint16,
          :width, :uint16,
          :height, :uint16,
          :count, :uint16,
          :pad2, [:uint8, 4]
    end

    class XrbGenericError < FFI::Struct
      layout \
          :response_type, :uint8,
          :error_code, :uint8,
          :sequence, :uint16,
          :bad_value, :uint32,
          :minor_opcode, :uint16,
          :major_opcode, :uint8,
          :pad1, [:uint8, 21]
    end

    class XrbBadContextError < FFI::Struct
      layout \
          :response_type, :uint8,
          :error_code, :uint8,
          :sequence, :uint16,
          :bad_value, :uint32,
          :minor_opcode, :uint16,
          :major_opcode, :uint8,
          :pad1, [:uint8, 21]
    end

    class XrbBadContextStateError < FFI::Struct
      layout \
          :response_type, :uint8,
          :error_code, :uint8,
          :sequence, :uint16,
          :bad_value, :uint32,
          :minor_opcode, :uint16,
          :major_opcode, :uint8,
          :pad1, [:uint8, 21]
    end

    class XrbBadDrawableError < FFI::Struct
      layout \
          :response_type, :uint8,
          :error_code, :uint8,
          :sequence, :uint16,
          :bad_value, :uint32,
          :minor_opcode, :uint16,
          :major_opcode, :uint8,
          :pad1, [:uint8, 21]
    end

    class XrbBadPixmapError < FFI::Struct
      layout \
          :response_type, :uint8,
          :error_code, :uint8,
          :sequence, :uint16,
          :bad_value, :uint32,
          :minor_opcode, :uint16,
          :major_opcode, :uint8,
          :pad1, [:uint8, 21]
    end

    class XrbBadContextTagError < FFI::Struct
      layout \
          :response_type, :uint8,
          :error_code, :uint8,
          :sequence, :uint16,
          :bad_value, :uint32,
          :minor_opcode, :uint16,
          :major_opcode, :uint8,
          :pad1, [:uint8, 21]
    end

    class XrbBadCurrentWindowError < FFI::Struct
      layout \
          :response_type, :uint8,
          :error_code, :uint8,
          :sequence, :uint16,
          :bad_value, :uint32,
          :minor_opcode, :uint16,
          :major_opcode, :uint8,
          :pad1, [:uint8, 21]
    end

    class XrbBadRenderRequestError < FFI::Struct
      layout \
          :response_type, :uint8,
          :error_code, :uint8,
          :sequence, :uint16,
          :bad_value, :uint32,
          :minor_opcode, :uint16,
          :major_opcode, :uint8,
          :pad1, [:uint8, 21]
    end

    class XrbBadLargeRequestError < FFI::Struct
      layout \
          :response_type, :uint8,
          :error_code, :uint8,
          :sequence, :uint16,
          :bad_value, :uint32,
          :minor_opcode, :uint16,
          :major_opcode, :uint8,
          :pad1, [:uint8, 21]
    end

    class XrbUnsupportedPrivateRequestError < FFI::Struct
      layout \
          :response_type, :uint8,
          :error_code, :uint8,
          :sequence, :uint16,
          :bad_value, :uint32,
          :minor_opcode, :uint16,
          :major_opcode, :uint8,
          :pad1, [:uint8, 21]
    end

    class XrbBadFBConfigError < FFI::Struct
      layout \
          :response_type, :uint8,
          :error_code, :uint8,
          :sequence, :uint16,
          :bad_value, :uint32,
          :minor_opcode, :uint16,
          :major_opcode, :uint8,
          :pad1, [:uint8, 21]
    end

    class XrbBadPbufferError < FFI::Struct
      layout \
          :response_type, :uint8,
          :error_code, :uint8,
          :sequence, :uint16,
          :bad_value, :uint32,
          :minor_opcode, :uint16,
          :major_opcode, :uint8,
          :pad1, [:uint8, 21]
    end

    class XrbBadCurrentDrawableError < FFI::Struct
      layout \
          :response_type, :uint8,
          :error_code, :uint8,
          :sequence, :uint16,
          :bad_value, :uint32,
          :minor_opcode, :uint16,
          :major_opcode, :uint8,
          :pad1, [:uint8, 21]
    end

    class XrbBadWindowError < FFI::Struct
      layout \
          :response_type, :uint8,
          :error_code, :uint8,
          :sequence, :uint16,
          :bad_value, :uint32,
          :minor_opcode, :uint16,
          :major_opcode, :uint8,
          :pad1, [:uint8, 21]
    end

    class XrbGLXBadProfileARBError < FFI::Struct
      layout \
          :response_type, :uint8,
          :error_code, :uint8,
          :sequence, :uint16,
          :bad_value, :uint32,
          :minor_opcode, :uint16,
          :major_opcode, :uint8,
          :pad1, [:uint8, 21]
    end

    class XrbRenderRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :context_tag, :xrb_context_tag_t
    end

    class XrbRenderCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_render_checked, [:pointer,:uint8,:uint8,:uint16,:xrb_context_tag_t,:uint32], XrbRenderCookie
    attach_function :xcb_render, [:pointer,:uint8,:uint8,:uint16,:xrb_context_tag_t,:uint32], XrbRenderCookie
    class XrbRenderLargeRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :context_tag, :xrb_context_tag_t,
          :request_num, :uint16,
          :request_total, :uint16,
          :data_len, :uint32
    end

    class XrbRenderLargeCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_render_large_checked, [:pointer,:uint8,:uint8,:uint16,:xrb_context_tag_t,:uint16,:uint16,:uint32,:uint32], XrbRenderLargeCookie
    attach_function :xcb_render_large, [:pointer,:uint8,:uint8,:uint16,:xrb_context_tag_t,:uint16,:uint16,:uint32,:uint32], XrbRenderLargeCookie
    class XrbCreateContextRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :context, :xrb_context_t,
          :visual, :xrb_visualid_t,
          :screen, :uint32,
          :share_list, :xrb_context_t,
          :is_direct, :bool,
          :pad1, [:uint8, 3]
    end

    class XrbCreateContextCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_create_context_checked, [:pointer,:uint8,:uint8,:uint16,:xrb_context_t,:xrb_visualid_t,:uint32,:xrb_context_t,:bool], XrbCreateContextCookie
    attach_function :xcb_create_context, [:pointer,:uint8,:uint8,:uint16,:xrb_context_t,:xrb_visualid_t,:uint32,:xrb_context_t,:bool], XrbCreateContextCookie
    class XrbDestroyContextRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :context, :xrb_context_t
    end

    class XrbDestroyContextCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_destroy_context_checked, [:pointer,:uint8,:uint8,:uint16,:xrb_context_t], XrbDestroyContextCookie
    attach_function :xcb_destroy_context, [:pointer,:uint8,:uint8,:uint16,:xrb_context_t], XrbDestroyContextCookie
    class XrbMakeCurrentRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :context_tag, :xrb_context_tag_t,
          :pad2, [:uint8, 20]
    end

    class XrbMakeCurrentCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_make_current, [:pointer,:uint8,:uint8,:uint16,:xrb_context_tag_t], XrbMakeCurrentCookie
    class XrbMakeCurrentReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :context_tag, :xrb_context_tag_t,
          :pad2, [:uint8, 20]
    end

    attach_function :xcb_make_current_reply, [:pointer, XrbMakeCurrentCookie, :pointer], :pointer

        
    class XrbIsDirectRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :is_direct, :bool,
          :pad2, [:uint8, 23]
    end

    class XrbIsDirectCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_is_direct, [:pointer,:uint8,:uint8,:uint16,:bool], XrbIsDirectCookie
    class XrbIsDirectReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :is_direct, :bool,
          :pad2, [:uint8, 23]
    end

    attach_function :xcb_is_direct_reply, [:pointer, XrbIsDirectCookie, :pointer], :pointer

        
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

        
    class XrbWaitGLRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :context_tag, :xrb_context_tag_t
    end

    class XrbWaitGLCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_wait_gl_checked, [:pointer,:uint8,:uint8,:uint16,:xrb_context_tag_t], XrbWaitGLCookie
    attach_function :xcb_wait_gl, [:pointer,:uint8,:uint8,:uint16,:xrb_context_tag_t], XrbWaitGLCookie
    class XrbWaitXRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :context_tag, :xrb_context_tag_t
    end

    class XrbWaitXCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_wait_x_checked, [:pointer,:uint8,:uint8,:uint16,:xrb_context_tag_t], XrbWaitXCookie
    attach_function :xcb_wait_x, [:pointer,:uint8,:uint8,:uint16,:xrb_context_tag_t], XrbWaitXCookie
    class XrbCopyContextRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :src, :xrb_context_t,
          :dest, :xrb_context_t,
          :mask, :uint32,
          :src_context_tag, :xrb_context_tag_t
    end

    class XrbCopyContextCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_copy_context_checked, [:pointer,:uint8,:uint8,:uint16,:xrb_context_t,:xrb_context_t,:uint32,:xrb_context_tag_t], XrbCopyContextCookie
    attach_function :xcb_copy_context, [:pointer,:uint8,:uint8,:uint16,:xrb_context_t,:xrb_context_t,:uint32,:xrb_context_tag_t], XrbCopyContextCookie
    class XrbSwapBuffersRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :context_tag, :xrb_context_tag_t,
          :drawable, :xrb_drawable_t
    end

    class XrbSwapBuffersCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_swap_buffers_checked, [:pointer,:uint8,:uint8,:uint16,:xrb_context_tag_t,:xrb_drawable_t], XrbSwapBuffersCookie
    attach_function :xcb_swap_buffers, [:pointer,:uint8,:uint8,:uint16,:xrb_context_tag_t,:xrb_drawable_t], XrbSwapBuffersCookie
    class XrbUseXFontRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :context_tag, :xrb_context_tag_t,
          :font, :xrb_font_t,
          :first, :uint32,
          :count, :uint32,
          :list_base, :uint32
    end

    class XrbUseXFontCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_use_x_font_checked, [:pointer,:uint8,:uint8,:uint16,:xrb_context_tag_t,:xrb_font_t,:uint32,:uint32,:uint32], XrbUseXFontCookie
    attach_function :xcb_use_x_font, [:pointer,:uint8,:uint8,:uint16,:xrb_context_tag_t,:xrb_font_t,:uint32,:uint32,:uint32], XrbUseXFontCookie
    class XrbCreateGLXPixmapRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :screen, :uint32,
          :visual, :xrb_visualid_t,
          :pixmap, :xrb_pixmap_t,
          :glx_pixmap, :xrb_pixmap_t
    end

    class XrbCreateGLXPixmapCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_create_glx_pixmap_checked, [:pointer,:uint8,:uint8,:uint16,:uint32,:xrb_visualid_t,:xrb_pixmap_t,:xrb_pixmap_t], XrbCreateGLXPixmapCookie
    attach_function :xcb_create_glx_pixmap, [:pointer,:uint8,:uint8,:uint16,:uint32,:xrb_visualid_t,:xrb_pixmap_t,:xrb_pixmap_t], XrbCreateGLXPixmapCookie
    class XrbGetVisualConfigsRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :num_visuals, :uint32,
          :num_properties, :uint32,
          :pad2, [:uint8, 16]
    end

    class XrbGetVisualConfigsCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_visual_configs, [:pointer,:uint8,:uint8,:uint16,:uint32,:uint32,:uint32], XrbGetVisualConfigsCookie
    class XrbGetVisualConfigsReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :num_visuals, :uint32,
          :num_properties, :uint32,
          :pad2, [:uint8, 16]
    end

    attach_function :xcb_get_visual_configs_reply, [:pointer, XrbGetVisualConfigsCookie, :pointer], :pointer

        
    class XrbDestroyGLXPixmapRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :glx_pixmap, :xrb_pixmap_t
    end

    class XrbDestroyGLXPixmapCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_destroy_glx_pixmap_checked, [:pointer,:uint8,:uint8,:uint16,:xrb_pixmap_t], XrbDestroyGLXPixmapCookie
    attach_function :xcb_destroy_glx_pixmap, [:pointer,:uint8,:uint8,:uint16,:xrb_pixmap_t], XrbDestroyGLXPixmapCookie
    class XrbVendorPrivateRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :vendor_code, :uint32,
          :context_tag, :xrb_context_tag_t
    end

    class XrbVendorPrivateCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_vendor_private_checked, [:pointer,:uint8,:uint8,:uint16,:uint32,:xrb_context_tag_t,:uint32], XrbVendorPrivateCookie
    attach_function :xcb_vendor_private, [:pointer,:uint8,:uint8,:uint16,:uint32,:xrb_context_tag_t,:uint32], XrbVendorPrivateCookie
    class XrbVendorPrivateWithReplyRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :retval, :uint32,
          :data1_len, [:uint32 , 24]
    end

    class XrbVendorPrivateWithReplyCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_vendor_private_with_reply, [:pointer,:uint8,:uint8,:uint16,:uint32,:uint32,:uint32], XrbVendorPrivateWithReplyCookie
    class XrbVendorPrivateWithReplyReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :retval, :uint32,
          :data1_len, [:uint32 , 24]
    end

    attach_function :xcb_vendor_private_with_reply_reply, [:pointer, XrbVendorPrivateWithReplyCookie, :pointer], :pointer

        
    class XrbQueryExtensionsStringRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :pad2, [:uint8, 4],
          :n, :uint32,
          :pad3, [:uint8, 16]
    end

    class XrbQueryExtensionsStringCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_query_extensions_string, [:pointer,:uint8,:uint8,:uint16,:uint32], XrbQueryExtensionsStringCookie
    class XrbQueryExtensionsStringReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :pad2, [:uint8, 4],
          :n, :uint32,
          :pad3, [:uint8, 16]
    end

    attach_function :xcb_query_extensions_string_reply, [:pointer, XrbQueryExtensionsStringCookie, :pointer], :pointer

        
    class XrbQueryServerStringRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :pad2, [:uint8, 4],
          :str_len, :uint32,
          :pad3, [:uint8, 16]
    end

    class XrbQueryServerStringCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_query_server_string, [:pointer,:uint8,:uint8,:uint16,:uint32,:uint32], XrbQueryServerStringCookie
    class XrbQueryServerStringReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :pad2, [:uint8, 4],
          :str_len, :uint32,
          :pad3, [:uint8, 16]
    end

    attach_function :xcb_query_server_string_reply, [:pointer, XrbQueryServerStringCookie, :pointer], :pointer

        
    class XrbClientInfoRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :major_version, :uint32,
          :minor_version, :uint32,
          :str_len, :uint32
    end

    class XrbClientInfoCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_client_info_checked, [:pointer,:uint8,:uint8,:uint16,:uint32,:uint32,:uint32,:uint32], XrbClientInfoCookie
    attach_function :xcb_client_info, [:pointer,:uint8,:uint8,:uint16,:uint32,:uint32,:uint32,:uint32], XrbClientInfoCookie
    class XrbGetFBConfigsRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :num_FB_configs, :uint32,
          :num_properties, :uint32,
          :pad2, [:uint8, 16]
    end

    class XrbGetFBConfigsCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_fb_configs, [:pointer,:uint8,:uint8,:uint16,:uint32,:uint32,:uint32], XrbGetFBConfigsCookie
    class XrbGetFBConfigsReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :num_FB_configs, :uint32,
          :num_properties, :uint32,
          :pad2, [:uint8, 16]
    end

    attach_function :xcb_get_fb_configs_reply, [:pointer, XrbGetFBConfigsCookie, :pointer], :pointer

        
    class XrbCreatePixmapRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :screen, :uint32,
          :fbconfig, :xrb_fbconfig_t,
          :pixmap, :xrb_pixmap_t,
          :glx_pixmap, :xrb_pixmap_t,
          :num_attribs, :uint32
    end

    class XrbCreatePixmapCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_create_pixmap_checked, [:pointer,:uint8,:uint8,:uint16,:uint32,:xrb_fbconfig_t,:xrb_pixmap_t,:xrb_pixmap_t,:uint32,:uint32], XrbCreatePixmapCookie
    attach_function :xcb_create_pixmap, [:pointer,:uint8,:uint8,:uint16,:uint32,:xrb_fbconfig_t,:xrb_pixmap_t,:xrb_pixmap_t,:uint32,:uint32], XrbCreatePixmapCookie
    class XrbDestroyPixmapRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :glx_pixmap, :xrb_pixmap_t
    end

    class XrbDestroyPixmapCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_destroy_pixmap_checked, [:pointer,:uint8,:uint8,:uint16,:xrb_pixmap_t], XrbDestroyPixmapCookie
    attach_function :xcb_destroy_pixmap, [:pointer,:uint8,:uint8,:uint16,:xrb_pixmap_t], XrbDestroyPixmapCookie
    class XrbCreateNewContextRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :context, :xrb_context_t,
          :fbconfig, :xrb_fbconfig_t,
          :screen, :uint32,
          :render_type, :uint32,
          :share_list, :xrb_context_t,
          :is_direct, :bool,
          :pad1, [:uint8, 3]
    end

    class XrbCreateNewContextCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_create_new_context_checked, [:pointer,:uint8,:uint8,:uint16,:xrb_context_t,:xrb_fbconfig_t,:uint32,:uint32,:xrb_context_t,:bool], XrbCreateNewContextCookie
    attach_function :xcb_create_new_context, [:pointer,:uint8,:uint8,:uint16,:xrb_context_t,:xrb_fbconfig_t,:uint32,:uint32,:xrb_context_t,:bool], XrbCreateNewContextCookie
    class XrbQueryContextRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :num_attribs, :uint32,
          :pad2, [:uint8, 20]
    end

    class XrbQueryContextCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_query_context, [:pointer,:uint8,:uint8,:uint16,:uint32,:uint32], XrbQueryContextCookie
    class XrbQueryContextReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :num_attribs, :uint32,
          :pad2, [:uint8, 20]
    end

    attach_function :xcb_query_context_reply, [:pointer, XrbQueryContextCookie, :pointer], :pointer

        
    class XrbMakeContextCurrentRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :context_tag, :xrb_context_tag_t,
          :pad2, [:uint8, 20]
    end

    class XrbMakeContextCurrentCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_make_context_current, [:pointer,:uint8,:uint8,:uint16,:xrb_context_tag_t], XrbMakeContextCurrentCookie
    class XrbMakeContextCurrentReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :context_tag, :xrb_context_tag_t,
          :pad2, [:uint8, 20]
    end

    attach_function :xcb_make_context_current_reply, [:pointer, XrbMakeContextCurrentCookie, :pointer], :pointer

        
    class XrbCreatePbufferRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :screen, :uint32,
          :fbconfig, :xrb_fbconfig_t,
          :pbuffer, :xrb_pbuffer_t,
          :num_attribs, :uint32
    end

    class XrbCreatePbufferCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_create_pbuffer_checked, [:pointer,:uint8,:uint8,:uint16,:uint32,:xrb_fbconfig_t,:xrb_pbuffer_t,:uint32,:uint32], XrbCreatePbufferCookie
    attach_function :xcb_create_pbuffer, [:pointer,:uint8,:uint8,:uint16,:uint32,:xrb_fbconfig_t,:xrb_pbuffer_t,:uint32,:uint32], XrbCreatePbufferCookie
    class XrbDestroyPbufferRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :pbuffer, :xrb_pbuffer_t
    end

    class XrbDestroyPbufferCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_destroy_pbuffer_checked, [:pointer,:uint8,:uint8,:uint16,:xrb_pbuffer_t], XrbDestroyPbufferCookie
    attach_function :xcb_destroy_pbuffer, [:pointer,:uint8,:uint8,:uint16,:xrb_pbuffer_t], XrbDestroyPbufferCookie
    class XrbGetDrawableAttributesRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :num_attribs, :uint32,
          :pad2, [:uint8, 20]
    end

    class XrbGetDrawableAttributesCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_drawable_attributes, [:pointer,:uint8,:uint8,:uint16,:uint32,:uint32], XrbGetDrawableAttributesCookie
    class XrbGetDrawableAttributesReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :num_attribs, :uint32,
          :pad2, [:uint8, 20]
    end

    attach_function :xcb_get_drawable_attributes_reply, [:pointer, XrbGetDrawableAttributesCookie, :pointer], :pointer

        
    class XrbChangeDrawableAttributesRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :drawable, :xrb_drawable_t,
          :num_attribs, :uint32
    end

    class XrbChangeDrawableAttributesCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_change_drawable_attributes_checked, [:pointer,:uint8,:uint8,:uint16,:xrb_drawable_t,:uint32,:uint32], XrbChangeDrawableAttributesCookie
    attach_function :xcb_change_drawable_attributes, [:pointer,:uint8,:uint8,:uint16,:xrb_drawable_t,:uint32,:uint32], XrbChangeDrawableAttributesCookie
    class XrbCreateWindowRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :screen, :uint32,
          :fbconfig, :xrb_fbconfig_t,
          :window, :xrb_window_t,
          :glx_window, :xrb_window_t,
          :num_attribs, :uint32
    end

    class XrbCreateWindowCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_create_window_checked, [:pointer,:uint8,:uint8,:uint16,:uint32,:xrb_fbconfig_t,:xrb_window_t,:xrb_window_t,:uint32,:uint32], XrbCreateWindowCookie
    attach_function :xcb_create_window, [:pointer,:uint8,:uint8,:uint16,:uint32,:xrb_fbconfig_t,:xrb_window_t,:xrb_window_t,:uint32,:uint32], XrbCreateWindowCookie
    class XrbDeleteWindowRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :glxwindow, :xrb_window_t
    end

    class XrbDeleteWindowCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_delete_window_checked, [:pointer,:uint8,:uint8,:uint16,:xrb_window_t], XrbDeleteWindowCookie
    attach_function :xcb_delete_window, [:pointer,:uint8,:uint8,:uint16,:xrb_window_t], XrbDeleteWindowCookie
    class XrbSetClientInfoARBRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :major_version, :uint32,
          :minor_version, :uint32,
          :num_versions, :uint32,
          :gl_str_len, :uint32,
          :glx_str_len, :uint32
    end

    class XrbSetClientInfoARBCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_set_client_info_arb_checked, [:pointer,:uint8,:uint8,:uint16,:uint32,:uint32,:uint32,:uint32,:uint32,:uint32,:uint32,:uint32], XrbSetClientInfoARBCookie
    attach_function :xcb_set_client_info_arb, [:pointer,:uint8,:uint8,:uint16,:uint32,:uint32,:uint32,:uint32,:uint32,:uint32,:uint32,:uint32], XrbSetClientInfoARBCookie
    class XrbCreateContextAttribsARBRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :context, :xrb_context_t,
          :fbconfig, :xrb_fbconfig_t,
          :screen, :uint32,
          :share_list, :xrb_context_t,
          :is_direct, :bool,
          :pad1, [:uint8, 3],
          :num_attribs, :uint32
    end

    class XrbCreateContextAttribsARBCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_create_context_attribs_arb_checked, [:pointer,:uint8,:uint8,:uint16,:xrb_context_t,:xrb_fbconfig_t,:uint32,:xrb_context_t,:bool,:uint32,:uint32], XrbCreateContextAttribsARBCookie
    attach_function :xcb_create_context_attribs_arb, [:pointer,:uint8,:uint8,:uint16,:xrb_context_t,:xrb_fbconfig_t,:uint32,:xrb_context_t,:bool,:uint32,:uint32], XrbCreateContextAttribsARBCookie
    class XrbSetClientInfo2ARBRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :major_version, :uint32,
          :minor_version, :uint32,
          :num_versions, :uint32,
          :gl_str_len, :uint32,
          :glx_str_len, :uint32
    end

    class XrbSetClientInfo2ARBCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_set_client_info_2arb_checked, [:pointer,:uint8,:uint8,:uint16,:uint32,:uint32,:uint32,:uint32,:uint32,:uint32,:uint32,:uint32], XrbSetClientInfo2ARBCookie
    attach_function :xcb_set_client_info_2arb, [:pointer,:uint8,:uint8,:uint16,:uint32,:uint32,:uint32,:uint32,:uint32,:uint32,:uint32,:uint32], XrbSetClientInfo2ARBCookie
    class XrbNewListRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :context_tag, :xrb_context_tag_t,
          :list, :uint32,
          :mode, :uint32
    end

    class XrbNewListCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_new_list_checked, [:pointer,:uint8,:uint8,:uint16,:xrb_context_tag_t,:uint32,:uint32], XrbNewListCookie
    attach_function :xcb_new_list, [:pointer,:uint8,:uint8,:uint16,:xrb_context_tag_t,:uint32,:uint32], XrbNewListCookie
    class XrbEndListRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :context_tag, :xrb_context_tag_t
    end

    class XrbEndListCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_end_list_checked, [:pointer,:uint8,:uint8,:uint16,:xrb_context_tag_t], XrbEndListCookie
    attach_function :xcb_end_list, [:pointer,:uint8,:uint8,:uint16,:xrb_context_tag_t], XrbEndListCookie
    class XrbDeleteListsRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :context_tag, :xrb_context_tag_t,
          :list, :uint32,
          :range, :int32
    end

    class XrbDeleteListsCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_delete_lists_checked, [:pointer,:uint8,:uint8,:uint16,:xrb_context_tag_t,:uint32,:int32], XrbDeleteListsCookie
    attach_function :xcb_delete_lists, [:pointer,:uint8,:uint8,:uint16,:xrb_context_tag_t,:uint32,:int32], XrbDeleteListsCookie
    class XrbGenListsRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :ret_val, :uint32
    end

    class XrbGenListsCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_gen_lists, [:pointer,:uint8,:uint8,:uint16,:uint32], XrbGenListsCookie
    class XrbGenListsReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :ret_val, :uint32
    end

    attach_function :xcb_gen_lists_reply, [:pointer, XrbGenListsCookie, :pointer], :pointer

        
    class XrbFeedbackBufferRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :context_tag, :xrb_context_tag_t,
          :size, :int32,
          :type, :int32
    end

    class XrbFeedbackBufferCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_feedback_buffer_checked, [:pointer,:uint8,:uint8,:uint16,:xrb_context_tag_t,:int32,:int32], XrbFeedbackBufferCookie
    attach_function :xcb_feedback_buffer, [:pointer,:uint8,:uint8,:uint16,:xrb_context_tag_t,:int32,:int32], XrbFeedbackBufferCookie
    class XrbSelectBufferRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :context_tag, :xrb_context_tag_t,
          :size, :int32
    end

    class XrbSelectBufferCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_select_buffer_checked, [:pointer,:uint8,:uint8,:uint16,:xrb_context_tag_t,:int32], XrbSelectBufferCookie
    attach_function :xcb_select_buffer, [:pointer,:uint8,:uint8,:uint16,:xrb_context_tag_t,:int32], XrbSelectBufferCookie
    class XrbRenderModeRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :ret_val, :uint32,
          :n, :uint32,
          :new_mode, :uint32,
          :pad2, [:uint8, 12]
    end

    class XrbRenderModeCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_render_mode, [:pointer,:uint8,:uint8,:uint16,:uint32,:uint32,:uint32,:uint32], XrbRenderModeCookie
    class XrbRenderModeReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :ret_val, :uint32,
          :n, :uint32,
          :new_mode, :uint32,
          :pad2, [:uint8, 12]
    end

    attach_function :xcb_render_mode_reply, [:pointer, XrbRenderModeCookie, :pointer], :pointer

        
    class XrbFinishRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16
    end

    class XrbFinishCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_finish, [:pointer,:uint8,:uint8,:uint16], XrbFinishCookie
    class XrbFinishReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32
    end

    attach_function :xcb_finish_reply, [:pointer, XrbFinishCookie, :pointer], :pointer

        
    class XrbPixelStorefRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :context_tag, :xrb_context_tag_t,
          :pname, :uint32,
          :datum, :xrb_float32_t
    end

    class XrbPixelStorefCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_pixel_storef_checked, [:pointer,:uint8,:uint8,:uint16,:xrb_context_tag_t,:uint32,:xrb_float32_t], XrbPixelStorefCookie
    attach_function :xcb_pixel_storef, [:pointer,:uint8,:uint8,:uint16,:xrb_context_tag_t,:uint32,:xrb_float32_t], XrbPixelStorefCookie
    class XrbPixelStoreiRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :context_tag, :xrb_context_tag_t,
          :pname, :uint32,
          :datum, :int32
    end

    class XrbPixelStoreiCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_pixel_storei_checked, [:pointer,:uint8,:uint8,:uint16,:xrb_context_tag_t,:uint32,:int32], XrbPixelStoreiCookie
    attach_function :xcb_pixel_storei, [:pointer,:uint8,:uint8,:uint16,:xrb_context_tag_t,:uint32,:int32], XrbPixelStoreiCookie
    class XrbReadPixelsRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :pad2, [:uint8, 24]
    end

    class XrbReadPixelsCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_read_pixels, [:pointer,:uint8,:uint8,:uint16,:uint32], XrbReadPixelsCookie
    class XrbReadPixelsReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :pad2, [:uint8, 24]
    end

    attach_function :xcb_read_pixels_reply, [:pointer, XrbReadPixelsCookie, :pointer], :pointer

        
    class XrbGetBooleanvRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :pad2, [:uint8, 4],
          :n, :uint32,
          :datum, :bool,
          :pad3, [:uint8, 15]
    end

    class XrbGetBooleanvCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_booleanv, [:pointer,:uint8,:uint8,:uint16,:uint32,:bool,:uint32], XrbGetBooleanvCookie
    class XrbGetBooleanvReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :pad2, [:uint8, 4],
          :n, :uint32,
          :datum, :bool,
          :pad3, [:uint8, 15]
    end

    attach_function :xcb_get_booleanv_reply, [:pointer, XrbGetBooleanvCookie, :pointer], :pointer

        
    class XrbGetClipPlaneRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :pad2, [:uint8, 24]
    end

    class XrbGetClipPlaneCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_clip_plane, [:pointer,:uint8,:uint8,:uint16,:uint32], XrbGetClipPlaneCookie
    class XrbGetClipPlaneReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :pad2, [:uint8, 24]
    end

    attach_function :xcb_get_clip_plane_reply, [:pointer, XrbGetClipPlaneCookie, :pointer], :pointer

        
    class XrbGetDoublevRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :pad2, [:uint8, 4],
          :n, :uint32,
          :datum, :xrb_float64_t,
          :pad3, [:uint8, 8]
    end

    class XrbGetDoublevCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_doublev, [:pointer,:uint8,:uint8,:uint16,:uint32,:xrb_float64_t,:uint32], XrbGetDoublevCookie
    class XrbGetDoublevReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :pad2, [:uint8, 4],
          :n, :uint32,
          :datum, :xrb_float64_t,
          :pad3, [:uint8, 8]
    end

    attach_function :xcb_get_doublev_reply, [:pointer, XrbGetDoublevCookie, :pointer], :pointer

        
    class XrbGetErrorRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :error, :int32
    end

    class XrbGetErrorCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_error, [:pointer,:uint8,:uint8,:uint16,:int32], XrbGetErrorCookie
    class XrbGetErrorReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :error, :int32
    end

    attach_function :xcb_get_error_reply, [:pointer, XrbGetErrorCookie, :pointer], :pointer

        
    class XrbGetFloatvRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :pad2, [:uint8, 4],
          :n, :uint32,
          :datum, :xrb_float32_t,
          :pad3, [:uint8, 12]
    end

    class XrbGetFloatvCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_floatv, [:pointer,:uint8,:uint8,:uint16,:uint32,:xrb_float32_t,:uint32], XrbGetFloatvCookie
    class XrbGetFloatvReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :pad2, [:uint8, 4],
          :n, :uint32,
          :datum, :xrb_float32_t,
          :pad3, [:uint8, 12]
    end

    attach_function :xcb_get_floatv_reply, [:pointer, XrbGetFloatvCookie, :pointer], :pointer

        
    class XrbGetIntegervRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :pad2, [:uint8, 4],
          :n, :uint32,
          :datum, :int32,
          :pad3, [:uint8, 12]
    end

    class XrbGetIntegervCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_integerv, [:pointer,:uint8,:uint8,:uint16,:uint32,:int32,:uint32], XrbGetIntegervCookie
    class XrbGetIntegervReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :pad2, [:uint8, 4],
          :n, :uint32,
          :datum, :int32,
          :pad3, [:uint8, 12]
    end

    attach_function :xcb_get_integerv_reply, [:pointer, XrbGetIntegervCookie, :pointer], :pointer

        
    class XrbGetLightfvRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :pad2, [:uint8, 4],
          :n, :uint32,
          :datum, :xrb_float32_t,
          :pad3, [:uint8, 12]
    end

    class XrbGetLightfvCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_lightfv, [:pointer,:uint8,:uint8,:uint16,:uint32,:xrb_float32_t,:uint32], XrbGetLightfvCookie
    class XrbGetLightfvReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :pad2, [:uint8, 4],
          :n, :uint32,
          :datum, :xrb_float32_t,
          :pad3, [:uint8, 12]
    end

    attach_function :xcb_get_lightfv_reply, [:pointer, XrbGetLightfvCookie, :pointer], :pointer

        
    class XrbGetLightivRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :pad2, [:uint8, 4],
          :n, :uint32,
          :datum, :int32,
          :pad3, [:uint8, 12]
    end

    class XrbGetLightivCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_lightiv, [:pointer,:uint8,:uint8,:uint16,:uint32,:int32,:uint32], XrbGetLightivCookie
    class XrbGetLightivReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :pad2, [:uint8, 4],
          :n, :uint32,
          :datum, :int32,
          :pad3, [:uint8, 12]
    end

    attach_function :xcb_get_lightiv_reply, [:pointer, XrbGetLightivCookie, :pointer], :pointer

        
    class XrbGetMapdvRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :pad2, [:uint8, 4],
          :n, :uint32,
          :datum, :xrb_float64_t,
          :pad3, [:uint8, 8]
    end

    class XrbGetMapdvCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_mapdv, [:pointer,:uint8,:uint8,:uint16,:uint32,:xrb_float64_t,:uint32], XrbGetMapdvCookie
    class XrbGetMapdvReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :pad2, [:uint8, 4],
          :n, :uint32,
          :datum, :xrb_float64_t,
          :pad3, [:uint8, 8]
    end

    attach_function :xcb_get_mapdv_reply, [:pointer, XrbGetMapdvCookie, :pointer], :pointer

        
    class XrbGetMapfvRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :pad2, [:uint8, 4],
          :n, :uint32,
          :datum, :xrb_float32_t,
          :pad3, [:uint8, 12]
    end

    class XrbGetMapfvCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_mapfv, [:pointer,:uint8,:uint8,:uint16,:uint32,:xrb_float32_t,:uint32], XrbGetMapfvCookie
    class XrbGetMapfvReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :pad2, [:uint8, 4],
          :n, :uint32,
          :datum, :xrb_float32_t,
          :pad3, [:uint8, 12]
    end

    attach_function :xcb_get_mapfv_reply, [:pointer, XrbGetMapfvCookie, :pointer], :pointer

        
    class XrbGetMapivRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :pad2, [:uint8, 4],
          :n, :uint32,
          :datum, :int32,
          :pad3, [:uint8, 12]
    end

    class XrbGetMapivCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_mapiv, [:pointer,:uint8,:uint8,:uint16,:uint32,:int32,:uint32], XrbGetMapivCookie
    class XrbGetMapivReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :pad2, [:uint8, 4],
          :n, :uint32,
          :datum, :int32,
          :pad3, [:uint8, 12]
    end

    attach_function :xcb_get_mapiv_reply, [:pointer, XrbGetMapivCookie, :pointer], :pointer

        
    class XrbGetMaterialfvRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :pad2, [:uint8, 4],
          :n, :uint32,
          :datum, :xrb_float32_t,
          :pad3, [:uint8, 12]
    end

    class XrbGetMaterialfvCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_materialfv, [:pointer,:uint8,:uint8,:uint16,:uint32,:xrb_float32_t,:uint32], XrbGetMaterialfvCookie
    class XrbGetMaterialfvReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :pad2, [:uint8, 4],
          :n, :uint32,
          :datum, :xrb_float32_t,
          :pad3, [:uint8, 12]
    end

    attach_function :xcb_get_materialfv_reply, [:pointer, XrbGetMaterialfvCookie, :pointer], :pointer

        
    class XrbGetMaterialivRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :pad2, [:uint8, 4],
          :n, :uint32,
          :datum, :int32,
          :pad3, [:uint8, 12]
    end

    class XrbGetMaterialivCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_materialiv, [:pointer,:uint8,:uint8,:uint16,:uint32,:int32,:uint32], XrbGetMaterialivCookie
    class XrbGetMaterialivReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :pad2, [:uint8, 4],
          :n, :uint32,
          :datum, :int32,
          :pad3, [:uint8, 12]
    end

    attach_function :xcb_get_materialiv_reply, [:pointer, XrbGetMaterialivCookie, :pointer], :pointer

        
    class XrbGetPixelMapfvRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :pad2, [:uint8, 4],
          :n, :uint32,
          :datum, :xrb_float32_t,
          :pad3, [:uint8, 12]
    end

    class XrbGetPixelMapfvCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_pixel_mapfv, [:pointer,:uint8,:uint8,:uint16,:uint32,:xrb_float32_t,:uint32], XrbGetPixelMapfvCookie
    class XrbGetPixelMapfvReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :pad2, [:uint8, 4],
          :n, :uint32,
          :datum, :xrb_float32_t,
          :pad3, [:uint8, 12]
    end

    attach_function :xcb_get_pixel_mapfv_reply, [:pointer, XrbGetPixelMapfvCookie, :pointer], :pointer

        
    class XrbGetPixelMapuivRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :pad2, [:uint8, 4],
          :n, :uint32,
          :datum, :uint32,
          :pad3, [:uint8, 12]
    end

    class XrbGetPixelMapuivCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_pixel_mapuiv, [:pointer,:uint8,:uint8,:uint16,:uint32,:uint32,:uint32], XrbGetPixelMapuivCookie
    class XrbGetPixelMapuivReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :pad2, [:uint8, 4],
          :n, :uint32,
          :datum, :uint32,
          :pad3, [:uint8, 12]
    end

    attach_function :xcb_get_pixel_mapuiv_reply, [:pointer, XrbGetPixelMapuivCookie, :pointer], :pointer

        
    class XrbGetPixelMapusvRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :pad2, [:uint8, 4],
          :n, :uint32,
          :datum, :uint16,
          :pad3, [:uint8, 16]
    end

    class XrbGetPixelMapusvCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_pixel_mapusv, [:pointer,:uint8,:uint8,:uint16,:uint32,:uint16,:uint32], XrbGetPixelMapusvCookie
    class XrbGetPixelMapusvReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :pad2, [:uint8, 4],
          :n, :uint32,
          :datum, :uint16,
          :pad3, [:uint8, 16]
    end

    attach_function :xcb_get_pixel_mapusv_reply, [:pointer, XrbGetPixelMapusvCookie, :pointer], :pointer

        
    class XrbGetPolygonStippleRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :pad2, [:uint8, 24]
    end

    class XrbGetPolygonStippleCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_polygon_stipple, [:pointer,:uint8,:uint8,:uint16,:uint32], XrbGetPolygonStippleCookie
    class XrbGetPolygonStippleReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :pad2, [:uint8, 24]
    end

    attach_function :xcb_get_polygon_stipple_reply, [:pointer, XrbGetPolygonStippleCookie, :pointer], :pointer

        
    class XrbGetStringRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :pad2, [:uint8, 4],
          :n, :uint32,
          :pad3, [:uint8, 16]
    end

    class XrbGetStringCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_string, [:pointer,:uint8,:uint8,:uint16,:uint32,:uint32], XrbGetStringCookie
    class XrbGetStringReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :pad2, [:uint8, 4],
          :n, :uint32,
          :pad3, [:uint8, 16]
    end

    attach_function :xcb_get_string_reply, [:pointer, XrbGetStringCookie, :pointer], :pointer

        
    class XrbGetTexEnvfvRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :pad2, [:uint8, 4],
          :n, :uint32,
          :datum, :xrb_float32_t,
          :pad3, [:uint8, 12]
    end

    class XrbGetTexEnvfvCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_tex_envfv, [:pointer,:uint8,:uint8,:uint16,:uint32,:xrb_float32_t,:uint32], XrbGetTexEnvfvCookie
    class XrbGetTexEnvfvReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :pad2, [:uint8, 4],
          :n, :uint32,
          :datum, :xrb_float32_t,
          :pad3, [:uint8, 12]
    end

    attach_function :xcb_get_tex_envfv_reply, [:pointer, XrbGetTexEnvfvCookie, :pointer], :pointer

        
    class XrbGetTexEnvivRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :pad2, [:uint8, 4],
          :n, :uint32,
          :datum, :int32,
          :pad3, [:uint8, 12]
    end

    class XrbGetTexEnvivCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_tex_enviv, [:pointer,:uint8,:uint8,:uint16,:uint32,:int32,:uint32], XrbGetTexEnvivCookie
    class XrbGetTexEnvivReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :pad2, [:uint8, 4],
          :n, :uint32,
          :datum, :int32,
          :pad3, [:uint8, 12]
    end

    attach_function :xcb_get_tex_enviv_reply, [:pointer, XrbGetTexEnvivCookie, :pointer], :pointer

        
    class XrbGetTexGendvRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :pad2, [:uint8, 4],
          :n, :uint32,
          :datum, :xrb_float64_t,
          :pad3, [:uint8, 8]
    end

    class XrbGetTexGendvCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_tex_gendv, [:pointer,:uint8,:uint8,:uint16,:uint32,:xrb_float64_t,:uint32], XrbGetTexGendvCookie
    class XrbGetTexGendvReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :pad2, [:uint8, 4],
          :n, :uint32,
          :datum, :xrb_float64_t,
          :pad3, [:uint8, 8]
    end

    attach_function :xcb_get_tex_gendv_reply, [:pointer, XrbGetTexGendvCookie, :pointer], :pointer

        
    class XrbGetTexGenfvRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :pad2, [:uint8, 4],
          :n, :uint32,
          :datum, :xrb_float32_t,
          :pad3, [:uint8, 12]
    end

    class XrbGetTexGenfvCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_tex_genfv, [:pointer,:uint8,:uint8,:uint16,:uint32,:xrb_float32_t,:uint32], XrbGetTexGenfvCookie
    class XrbGetTexGenfvReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :pad2, [:uint8, 4],
          :n, :uint32,
          :datum, :xrb_float32_t,
          :pad3, [:uint8, 12]
    end

    attach_function :xcb_get_tex_genfv_reply, [:pointer, XrbGetTexGenfvCookie, :pointer], :pointer

        
    class XrbGetTexGenivRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :pad2, [:uint8, 4],
          :n, :uint32,
          :datum, :int32,
          :pad3, [:uint8, 12]
    end

    class XrbGetTexGenivCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_tex_geniv, [:pointer,:uint8,:uint8,:uint16,:uint32,:int32,:uint32], XrbGetTexGenivCookie
    class XrbGetTexGenivReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :pad2, [:uint8, 4],
          :n, :uint32,
          :datum, :int32,
          :pad3, [:uint8, 12]
    end

    attach_function :xcb_get_tex_geniv_reply, [:pointer, XrbGetTexGenivCookie, :pointer], :pointer

        
    class XrbGetTexImageRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :pad2, [:uint8, 8],
          :width, :int32,
          :height, :int32,
          :depth, :int32,
          :pad3, [:uint8, 4]
    end

    class XrbGetTexImageCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_tex_image, [:pointer,:uint8,:uint8,:uint16,:int32,:int32,:int32,:uint32], XrbGetTexImageCookie
    class XrbGetTexImageReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :pad2, [:uint8, 8],
          :width, :int32,
          :height, :int32,
          :depth, :int32,
          :pad3, [:uint8, 4]
    end

    attach_function :xcb_get_tex_image_reply, [:pointer, XrbGetTexImageCookie, :pointer], :pointer

        
    class XrbGetTexParameterfvRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :pad2, [:uint8, 4],
          :n, :uint32,
          :datum, :xrb_float32_t,
          :pad3, [:uint8, 12]
    end

    class XrbGetTexParameterfvCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_tex_parameterfv, [:pointer,:uint8,:uint8,:uint16,:uint32,:xrb_float32_t,:uint32], XrbGetTexParameterfvCookie
    class XrbGetTexParameterfvReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :pad2, [:uint8, 4],
          :n, :uint32,
          :datum, :xrb_float32_t,
          :pad3, [:uint8, 12]
    end

    attach_function :xcb_get_tex_parameterfv_reply, [:pointer, XrbGetTexParameterfvCookie, :pointer], :pointer

        
    class XrbGetTexParameterivRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :pad2, [:uint8, 4],
          :n, :uint32,
          :datum, :int32,
          :pad3, [:uint8, 12]
    end

    class XrbGetTexParameterivCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_tex_parameteriv, [:pointer,:uint8,:uint8,:uint16,:uint32,:int32,:uint32], XrbGetTexParameterivCookie
    class XrbGetTexParameterivReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :pad2, [:uint8, 4],
          :n, :uint32,
          :datum, :int32,
          :pad3, [:uint8, 12]
    end

    attach_function :xcb_get_tex_parameteriv_reply, [:pointer, XrbGetTexParameterivCookie, :pointer], :pointer

        
    class XrbGetTexLevelParameterfvRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :pad2, [:uint8, 4],
          :n, :uint32,
          :datum, :xrb_float32_t,
          :pad3, [:uint8, 12]
    end

    class XrbGetTexLevelParameterfvCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_tex_level_parameterfv, [:pointer,:uint8,:uint8,:uint16,:uint32,:xrb_float32_t,:uint32], XrbGetTexLevelParameterfvCookie
    class XrbGetTexLevelParameterfvReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :pad2, [:uint8, 4],
          :n, :uint32,
          :datum, :xrb_float32_t,
          :pad3, [:uint8, 12]
    end

    attach_function :xcb_get_tex_level_parameterfv_reply, [:pointer, XrbGetTexLevelParameterfvCookie, :pointer], :pointer

        
    class XrbGetTexLevelParameterivRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :pad2, [:uint8, 4],
          :n, :uint32,
          :datum, :int32,
          :pad3, [:uint8, 12]
    end

    class XrbGetTexLevelParameterivCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_tex_level_parameteriv, [:pointer,:uint8,:uint8,:uint16,:uint32,:int32,:uint32], XrbGetTexLevelParameterivCookie
    class XrbGetTexLevelParameterivReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :pad2, [:uint8, 4],
          :n, :uint32,
          :datum, :int32,
          :pad3, [:uint8, 12]
    end

    attach_function :xcb_get_tex_level_parameteriv_reply, [:pointer, XrbGetTexLevelParameterivCookie, :pointer], :pointer

        
    class XrbIsListRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :ret_val, :xrb_bool32_t
    end

    class XrbIsListCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_is_list, [:pointer,:uint8,:uint8,:uint16,:xrb_bool32_t], XrbIsListCookie
    class XrbIsListReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :ret_val, :xrb_bool32_t
    end

    attach_function :xcb_is_list_reply, [:pointer, XrbIsListCookie, :pointer], :pointer

        
    class XrbFlushRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :context_tag, :xrb_context_tag_t
    end

    class XrbFlushCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_flush_checked, [:pointer,:uint8,:uint8,:uint16,:xrb_context_tag_t], XrbFlushCookie
    attach_function :xcb_flush, [:pointer,:uint8,:uint8,:uint16,:xrb_context_tag_t], XrbFlushCookie
    class XrbAreTexturesResidentRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :ret_val, :xrb_bool32_t,
          :pad2, [:uint8, 20]
    end

    class XrbAreTexturesResidentCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_are_textures_resident, [:pointer,:uint8,:uint8,:uint16,:xrb_bool32_t,:uint32], XrbAreTexturesResidentCookie
    class XrbAreTexturesResidentReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :ret_val, :xrb_bool32_t,
          :pad2, [:uint8, 20]
    end

    attach_function :xcb_are_textures_resident_reply, [:pointer, XrbAreTexturesResidentCookie, :pointer], :pointer

        
    class XrbDeleteTexturesRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :context_tag, :xrb_context_tag_t,
          :n, :int32
    end

    class XrbDeleteTexturesCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_delete_textures_checked, [:pointer,:uint8,:uint8,:uint16,:xrb_context_tag_t,:int32,:uint32], XrbDeleteTexturesCookie
    attach_function :xcb_delete_textures, [:pointer,:uint8,:uint8,:uint16,:xrb_context_tag_t,:int32,:uint32], XrbDeleteTexturesCookie
    class XrbGenTexturesRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :pad2, [:uint8, 24]
    end

    class XrbGenTexturesCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_gen_textures, [:pointer,:uint8,:uint8,:uint16,:uint32], XrbGenTexturesCookie
    class XrbGenTexturesReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :pad2, [:uint8, 24]
    end

    attach_function :xcb_gen_textures_reply, [:pointer, XrbGenTexturesCookie, :pointer], :pointer

        
    class XrbIsTextureRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :ret_val, :xrb_bool32_t
    end

    class XrbIsTextureCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_is_texture, [:pointer,:uint8,:uint8,:uint16,:xrb_bool32_t], XrbIsTextureCookie
    class XrbIsTextureReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :ret_val, :xrb_bool32_t
    end

    attach_function :xcb_is_texture_reply, [:pointer, XrbIsTextureCookie, :pointer], :pointer

        
    class XrbGetColorTableRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :pad2, [:uint8, 8],
          :width, :int32,
          :pad3, [:uint8, 12]
    end

    class XrbGetColorTableCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_color_table, [:pointer,:uint8,:uint8,:uint16,:int32,:uint32], XrbGetColorTableCookie
    class XrbGetColorTableReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :pad2, [:uint8, 8],
          :width, :int32,
          :pad3, [:uint8, 12]
    end

    attach_function :xcb_get_color_table_reply, [:pointer, XrbGetColorTableCookie, :pointer], :pointer

        
    class XrbGetColorTableParameterfvRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :pad2, [:uint8, 4],
          :n, :uint32,
          :datum, :xrb_float32_t,
          :pad3, [:uint8, 12]
    end

    class XrbGetColorTableParameterfvCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_color_table_parameterfv, [:pointer,:uint8,:uint8,:uint16,:uint32,:xrb_float32_t,:uint32], XrbGetColorTableParameterfvCookie
    class XrbGetColorTableParameterfvReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :pad2, [:uint8, 4],
          :n, :uint32,
          :datum, :xrb_float32_t,
          :pad3, [:uint8, 12]
    end

    attach_function :xcb_get_color_table_parameterfv_reply, [:pointer, XrbGetColorTableParameterfvCookie, :pointer], :pointer

        
    class XrbGetColorTableParameterivRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :pad2, [:uint8, 4],
          :n, :uint32,
          :datum, :int32,
          :pad3, [:uint8, 12]
    end

    class XrbGetColorTableParameterivCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_color_table_parameteriv, [:pointer,:uint8,:uint8,:uint16,:uint32,:int32,:uint32], XrbGetColorTableParameterivCookie
    class XrbGetColorTableParameterivReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :pad2, [:uint8, 4],
          :n, :uint32,
          :datum, :int32,
          :pad3, [:uint8, 12]
    end

    attach_function :xcb_get_color_table_parameteriv_reply, [:pointer, XrbGetColorTableParameterivCookie, :pointer], :pointer

        
    class XrbGetConvolutionFilterRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :pad2, [:uint8, 8],
          :width, :int32,
          :height, :int32,
          :pad3, [:uint8, 8]
    end

    class XrbGetConvolutionFilterCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_convolution_filter, [:pointer,:uint8,:uint8,:uint16,:int32,:int32,:uint32], XrbGetConvolutionFilterCookie
    class XrbGetConvolutionFilterReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :pad2, [:uint8, 8],
          :width, :int32,
          :height, :int32,
          :pad3, [:uint8, 8]
    end

    attach_function :xcb_get_convolution_filter_reply, [:pointer, XrbGetConvolutionFilterCookie, :pointer], :pointer

        
    class XrbGetConvolutionParameterfvRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :pad2, [:uint8, 4],
          :n, :uint32,
          :datum, :xrb_float32_t,
          :pad3, [:uint8, 12]
    end

    class XrbGetConvolutionParameterfvCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_convolution_parameterfv, [:pointer,:uint8,:uint8,:uint16,:uint32,:xrb_float32_t,:uint32], XrbGetConvolutionParameterfvCookie
    class XrbGetConvolutionParameterfvReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :pad2, [:uint8, 4],
          :n, :uint32,
          :datum, :xrb_float32_t,
          :pad3, [:uint8, 12]
    end

    attach_function :xcb_get_convolution_parameterfv_reply, [:pointer, XrbGetConvolutionParameterfvCookie, :pointer], :pointer

        
    class XrbGetConvolutionParameterivRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :pad2, [:uint8, 4],
          :n, :uint32,
          :datum, :int32,
          :pad3, [:uint8, 12]
    end

    class XrbGetConvolutionParameterivCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_convolution_parameteriv, [:pointer,:uint8,:uint8,:uint16,:uint32,:int32,:uint32], XrbGetConvolutionParameterivCookie
    class XrbGetConvolutionParameterivReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :pad2, [:uint8, 4],
          :n, :uint32,
          :datum, :int32,
          :pad3, [:uint8, 12]
    end

    attach_function :xcb_get_convolution_parameteriv_reply, [:pointer, XrbGetConvolutionParameterivCookie, :pointer], :pointer

        
    class XrbGetSeparableFilterRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :pad2, [:uint8, 8],
          :row_w, :int32,
          :col_h, :int32,
          :pad3, [:uint8, 8]
    end

    class XrbGetSeparableFilterCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_separable_filter, [:pointer,:uint8,:uint8,:uint16,:int32,:int32,:uint32], XrbGetSeparableFilterCookie
    class XrbGetSeparableFilterReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :pad2, [:uint8, 8],
          :row_w, :int32,
          :col_h, :int32,
          :pad3, [:uint8, 8]
    end

    attach_function :xcb_get_separable_filter_reply, [:pointer, XrbGetSeparableFilterCookie, :pointer], :pointer

        
    class XrbGetHistogramRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :pad2, [:uint8, 8],
          :width, :int32,
          :pad3, [:uint8, 12]
    end

    class XrbGetHistogramCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_histogram, [:pointer,:uint8,:uint8,:uint16,:int32,:uint32], XrbGetHistogramCookie
    class XrbGetHistogramReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :pad2, [:uint8, 8],
          :width, :int32,
          :pad3, [:uint8, 12]
    end

    attach_function :xcb_get_histogram_reply, [:pointer, XrbGetHistogramCookie, :pointer], :pointer

        
    class XrbGetHistogramParameterfvRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :pad2, [:uint8, 4],
          :n, :uint32,
          :datum, :xrb_float32_t,
          :pad3, [:uint8, 12]
    end

    class XrbGetHistogramParameterfvCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_histogram_parameterfv, [:pointer,:uint8,:uint8,:uint16,:uint32,:xrb_float32_t,:uint32], XrbGetHistogramParameterfvCookie
    class XrbGetHistogramParameterfvReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :pad2, [:uint8, 4],
          :n, :uint32,
          :datum, :xrb_float32_t,
          :pad3, [:uint8, 12]
    end

    attach_function :xcb_get_histogram_parameterfv_reply, [:pointer, XrbGetHistogramParameterfvCookie, :pointer], :pointer

        
    class XrbGetHistogramParameterivRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :pad2, [:uint8, 4],
          :n, :uint32,
          :datum, :int32,
          :pad3, [:uint8, 12]
    end

    class XrbGetHistogramParameterivCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_histogram_parameteriv, [:pointer,:uint8,:uint8,:uint16,:uint32,:int32,:uint32], XrbGetHistogramParameterivCookie
    class XrbGetHistogramParameterivReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :pad2, [:uint8, 4],
          :n, :uint32,
          :datum, :int32,
          :pad3, [:uint8, 12]
    end

    attach_function :xcb_get_histogram_parameteriv_reply, [:pointer, XrbGetHistogramParameterivCookie, :pointer], :pointer

        
    class XrbGetMinmaxRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :pad2, [:uint8, 24]
    end

    class XrbGetMinmaxCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_minmax, [:pointer,:uint8,:uint8,:uint16,:uint32], XrbGetMinmaxCookie
    class XrbGetMinmaxReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :pad2, [:uint8, 24]
    end

    attach_function :xcb_get_minmax_reply, [:pointer, XrbGetMinmaxCookie, :pointer], :pointer

        
    class XrbGetMinmaxParameterfvRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :pad2, [:uint8, 4],
          :n, :uint32,
          :datum, :xrb_float32_t,
          :pad3, [:uint8, 12]
    end

    class XrbGetMinmaxParameterfvCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_minmax_parameterfv, [:pointer,:uint8,:uint8,:uint16,:uint32,:xrb_float32_t,:uint32], XrbGetMinmaxParameterfvCookie
    class XrbGetMinmaxParameterfvReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :pad2, [:uint8, 4],
          :n, :uint32,
          :datum, :xrb_float32_t,
          :pad3, [:uint8, 12]
    end

    attach_function :xcb_get_minmax_parameterfv_reply, [:pointer, XrbGetMinmaxParameterfvCookie, :pointer], :pointer

        
    class XrbGetMinmaxParameterivRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :pad2, [:uint8, 4],
          :n, :uint32,
          :datum, :int32,
          :pad3, [:uint8, 12]
    end

    class XrbGetMinmaxParameterivCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_minmax_parameteriv, [:pointer,:uint8,:uint8,:uint16,:uint32,:int32,:uint32], XrbGetMinmaxParameterivCookie
    class XrbGetMinmaxParameterivReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :pad2, [:uint8, 4],
          :n, :uint32,
          :datum, :int32,
          :pad3, [:uint8, 12]
    end

    attach_function :xcb_get_minmax_parameteriv_reply, [:pointer, XrbGetMinmaxParameterivCookie, :pointer], :pointer

        
    class XrbGetCompressedTexImageARBRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :pad2, [:uint8, 8],
          :size, :int32,
          :pad3, [:uint8, 12]
    end

    class XrbGetCompressedTexImageARBCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_compressed_tex_image_arb, [:pointer,:uint8,:uint8,:uint16,:int32,:uint32], XrbGetCompressedTexImageARBCookie
    class XrbGetCompressedTexImageARBReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :pad2, [:uint8, 8],
          :size, :int32,
          :pad3, [:uint8, 12]
    end

    attach_function :xcb_get_compressed_tex_image_arb_reply, [:pointer, XrbGetCompressedTexImageARBCookie, :pointer], :pointer

        
    class XrbDeleteQueriesARBRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :context_tag, :xrb_context_tag_t,
          :n, :int32
    end

    class XrbDeleteQueriesARBCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_delete_queries_arb_checked, [:pointer,:uint8,:uint8,:uint16,:xrb_context_tag_t,:int32,:uint32], XrbDeleteQueriesARBCookie
    attach_function :xcb_delete_queries_arb, [:pointer,:uint8,:uint8,:uint16,:xrb_context_tag_t,:int32,:uint32], XrbDeleteQueriesARBCookie
    class XrbGenQueriesARBRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :pad2, [:uint8, 24]
    end

    class XrbGenQueriesARBCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_gen_queries_arb, [:pointer,:uint8,:uint8,:uint16,:uint32], XrbGenQueriesARBCookie
    class XrbGenQueriesARBReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :pad2, [:uint8, 24]
    end

    attach_function :xcb_gen_queries_arb_reply, [:pointer, XrbGenQueriesARBCookie, :pointer], :pointer

        
    class XrbIsQueryARBRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :ret_val, :xrb_bool32_t
    end

    class XrbIsQueryARBCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_is_query_arb, [:pointer,:uint8,:uint8,:uint16,:xrb_bool32_t], XrbIsQueryARBCookie
    class XrbIsQueryARBReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :ret_val, :xrb_bool32_t
    end

    attach_function :xcb_is_query_arb_reply, [:pointer, XrbIsQueryARBCookie, :pointer], :pointer

        
    class XrbGetQueryivARBRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :pad2, [:uint8, 4],
          :n, :uint32,
          :datum, :int32,
          :pad3, [:uint8, 12]
    end

    class XrbGetQueryivARBCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_queryiv_arb, [:pointer,:uint8,:uint8,:uint16,:uint32,:int32,:uint32], XrbGetQueryivARBCookie
    class XrbGetQueryivARBReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :pad2, [:uint8, 4],
          :n, :uint32,
          :datum, :int32,
          :pad3, [:uint8, 12]
    end

    attach_function :xcb_get_queryiv_arb_reply, [:pointer, XrbGetQueryivARBCookie, :pointer], :pointer

        
    class XrbGetQueryObjectivARBRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :pad2, [:uint8, 4],
          :n, :uint32,
          :datum, :int32,
          :pad3, [:uint8, 12]
    end

    class XrbGetQueryObjectivARBCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_query_objectiv_arb, [:pointer,:uint8,:uint8,:uint16,:uint32,:int32,:uint32], XrbGetQueryObjectivARBCookie
    class XrbGetQueryObjectivARBReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :pad2, [:uint8, 4],
          :n, :uint32,
          :datum, :int32,
          :pad3, [:uint8, 12]
    end

    attach_function :xcb_get_query_objectiv_arb_reply, [:pointer, XrbGetQueryObjectivARBCookie, :pointer], :pointer

        
    class XrbGetQueryObjectuivARBRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :pad2, [:uint8, 4],
          :n, :uint32,
          :datum, :uint32,
          :pad3, [:uint8, 12]
    end

    class XrbGetQueryObjectuivARBCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_query_objectuiv_arb, [:pointer,:uint8,:uint8,:uint16,:uint32,:uint32,:uint32], XrbGetQueryObjectuivARBCookie
    class XrbGetQueryObjectuivARBReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :pad2, [:uint8, 4],
          :n, :uint32,
          :datum, :uint32,
          :pad3, [:uint8, 12]
    end

    attach_function :xcb_get_query_objectuiv_arb_reply, [:pointer, XrbGetQueryObjectuivARBCookie, :pointer], :pointer

        
  end
end
