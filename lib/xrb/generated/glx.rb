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
    typedef :uint32, :pixmap_t
    class PixmapIterator < FFI::Struct
      layout \
          :data, :window_t,
          :rem, :int,
          :indent, :int
    end
    attach_function :pixmap_next, :xcb_pixmap_next, [:pointer], :void
    attach_function :pixmap_end, :xcb_pixmap_end, [:pointer], GenericIterator
    typedef :uint32, :context_t
    class ContextIterator < FFI::Struct
      layout \
          :data, :window_t,
          :rem, :int,
          :indent, :int
    end
    attach_function :context_next, :xcb_context_next, [:pointer], :void
    attach_function :context_end, :xcb_context_end, [:pointer], GenericIterator
    typedef :uint32, :pbuffer_t
    class PbufferIterator < FFI::Struct
      layout \
          :data, :window_t,
          :rem, :int,
          :indent, :int
    end
    attach_function :pbuffer_next, :xcb_pbuffer_next, [:pointer], :void
    attach_function :pbuffer_end, :xcb_pbuffer_end, [:pointer], GenericIterator
    typedef :uint32, :window_t
    class WindowIterator < FFI::Struct
      layout \
          :data, :window_t,
          :rem, :int,
          :indent, :int
    end
    attach_function :window_next, :xcb_window_next, [:pointer], :void
    attach_function :window_end, :xcb_window_end, [:pointer], GenericIterator
    typedef :uint32, :fbconfig_t
    class FbconfigIterator < FFI::Struct
      layout \
          :data, :window_t,
          :rem, :int,
          :indent, :int
    end
    attach_function :fbconfig_next, :xcb_fbconfig_next, [:pointer], :void
    attach_function :fbconfig_end, :xcb_fbconfig_end, [:pointer], GenericIterator
    typedef :uint32, :drawable_t
    class DrawableIterator < FFI::Struct
      layout \
          :data, :window_t,
          :rem, :int,
          :indent, :int
    end
    attach_function :drawable_next, :xcb_drawable_next, [:pointer], :void
    attach_function :drawable_end, :xcb_drawable_end, [:pointer], GenericIterator
    typedef :float, :float32_t
    class Float32Iterator < FFI::Struct
      layout \
          :data, :window_t,
          :rem, :int,
          :indent, :int
    end
    attach_function :float32_next, :xcb_float32_next, [:pointer], :void
    attach_function :float32_end, :xcb_float32_end, [:pointer], GenericIterator
    typedef :double, :float64_t
    class Float64Iterator < FFI::Struct
      layout \
          :data, :window_t,
          :rem, :int,
          :indent, :int
    end
    attach_function :float64_next, :xcb_float64_next, [:pointer], :void
    attach_function :float64_end, :xcb_float64_end, [:pointer], GenericIterator
    typedef :uint32, :bool32_t
    class Bool32Iterator < FFI::Struct
      layout \
          :data, :window_t,
          :rem, :int,
          :indent, :int
    end
    attach_function :bool32_next, :xcb_bool32_next, [:pointer], :void
    attach_function :bool32_end, :xcb_bool32_end, [:pointer], GenericIterator
    typedef :uint32, :context_tag_t
    class CONTEXT_TAGIterator < FFI::Struct
      layout \
          :data, :window_t,
          :rem, :int,
          :indent, :int
    end
    attach_function :context_tag_next, :xcb_context_tag_next, [:pointer], :void
    attach_function :context_tag_end, :xcb_context_tag_end, [:pointer], GenericIterator
    PBCET_DAMAGED = 32791
    PBCET_SAVED = 32792
    PBCDT_WINDOW = 32793
    PBCDT_PBUFFER = 32794
    GC_GL_CURRENT_BIT = 1 << 0
    GC_GL_POINT_BIT = 1 << 1
    GC_GL_LINE_BIT = 1 << 2
    GC_GL_POLYGON_BIT = 1 << 3
    GC_GL_POLYGON_STIPPLE_BIT = 1 << 4
    GC_GL_PIXEL_MODE_BIT = 1 << 5
    GC_GL_LIGHTING_BIT = 1 << 6
    GC_GL_FOG_BIT = 1 << 7
    GC_GL_DEPTH_BUFFER_BIT = 1 << 8
    GC_GL_ACCUM_BUFFER_BIT = 1 << 9
    GC_GL_STENCIL_BUFFER_BIT = 1 << 10
    GC_GL_VIEWPORT_BIT = 1 << 11
    GC_GL_TRANSFORM_BIT = 1 << 12
    GC_GL_ENABLE_BIT = 1 << 13
    GC_GL_COLOR_BUFFER_BIT = 1 << 14
    GC_GL_HINT_BIT = 1 << 15
    GC_GL_EVAL_BIT = 1 << 16
    GC_GL_LIST_BIT = 1 << 17
    GC_GL_TEXTURE_BIT = 1 << 18
    GC_GL_SCISSOR_BIT = 1 << 19
    GC_GL_ALL_ATTRIB_BITS = 16777215
    RM_GL_RENDER = 7168
    RM_GL_FEEDBACK = 7169
    RM_GL_SELECT = 7170
    class PbufferClobberEvent < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :event_type, :uint16,
          :draw_type, :uint16,
          :drawable, :drawable_t,
          :b_mask, :uint32,
          :aux_buffer, :uint16,
          :x, :uint16,
          :y, :uint16,
          :width, :uint16,
          :height, :uint16,
          :count, :uint16,
          :pad2, [:uint8, 4]
    end

    class GenericError < FFI::Struct
      layout \
          :response_type, :uint8,
          :error_code, :uint8,
          :sequence, :uint16,
          :bad_value, :uint32,
          :minor_opcode, :uint16,
          :major_opcode, :uint8,
          :pad1, [:uint8, 21]
    end

    class BadContextError < FFI::Struct
      layout \
          :response_type, :uint8,
          :error_code, :uint8,
          :sequence, :uint16,
          :bad_value, :uint32,
          :minor_opcode, :uint16,
          :major_opcode, :uint8,
          :pad1, [:uint8, 21]
    end

    class BadContextStateError < FFI::Struct
      layout \
          :response_type, :uint8,
          :error_code, :uint8,
          :sequence, :uint16,
          :bad_value, :uint32,
          :minor_opcode, :uint16,
          :major_opcode, :uint8,
          :pad1, [:uint8, 21]
    end

    class BadDrawableError < FFI::Struct
      layout \
          :response_type, :uint8,
          :error_code, :uint8,
          :sequence, :uint16,
          :bad_value, :uint32,
          :minor_opcode, :uint16,
          :major_opcode, :uint8,
          :pad1, [:uint8, 21]
    end

    class BadPixmapError < FFI::Struct
      layout \
          :response_type, :uint8,
          :error_code, :uint8,
          :sequence, :uint16,
          :bad_value, :uint32,
          :minor_opcode, :uint16,
          :major_opcode, :uint8,
          :pad1, [:uint8, 21]
    end

    class BadContextTagError < FFI::Struct
      layout \
          :response_type, :uint8,
          :error_code, :uint8,
          :sequence, :uint16,
          :bad_value, :uint32,
          :minor_opcode, :uint16,
          :major_opcode, :uint8,
          :pad1, [:uint8, 21]
    end

    class BadCurrentWindowError < FFI::Struct
      layout \
          :response_type, :uint8,
          :error_code, :uint8,
          :sequence, :uint16,
          :bad_value, :uint32,
          :minor_opcode, :uint16,
          :major_opcode, :uint8,
          :pad1, [:uint8, 21]
    end

    class BadRenderRequestError < FFI::Struct
      layout \
          :response_type, :uint8,
          :error_code, :uint8,
          :sequence, :uint16,
          :bad_value, :uint32,
          :minor_opcode, :uint16,
          :major_opcode, :uint8,
          :pad1, [:uint8, 21]
    end

    class BadLargeRequestError < FFI::Struct
      layout \
          :response_type, :uint8,
          :error_code, :uint8,
          :sequence, :uint16,
          :bad_value, :uint32,
          :minor_opcode, :uint16,
          :major_opcode, :uint8,
          :pad1, [:uint8, 21]
    end

    class UnsupportedPrivateRequestError < FFI::Struct
      layout \
          :response_type, :uint8,
          :error_code, :uint8,
          :sequence, :uint16,
          :bad_value, :uint32,
          :minor_opcode, :uint16,
          :major_opcode, :uint8,
          :pad1, [:uint8, 21]
    end

    class BadFBConfigError < FFI::Struct
      layout \
          :response_type, :uint8,
          :error_code, :uint8,
          :sequence, :uint16,
          :bad_value, :uint32,
          :minor_opcode, :uint16,
          :major_opcode, :uint8,
          :pad1, [:uint8, 21]
    end

    class BadPbufferError < FFI::Struct
      layout \
          :response_type, :uint8,
          :error_code, :uint8,
          :sequence, :uint16,
          :bad_value, :uint32,
          :minor_opcode, :uint16,
          :major_opcode, :uint8,
          :pad1, [:uint8, 21]
    end

    class BadCurrentDrawableError < FFI::Struct
      layout \
          :response_type, :uint8,
          :error_code, :uint8,
          :sequence, :uint16,
          :bad_value, :uint32,
          :minor_opcode, :uint16,
          :major_opcode, :uint8,
          :pad1, [:uint8, 21]
    end

    class BadWindowError < FFI::Struct
      layout \
          :response_type, :uint8,
          :error_code, :uint8,
          :sequence, :uint16,
          :bad_value, :uint32,
          :minor_opcode, :uint16,
          :major_opcode, :uint8,
          :pad1, [:uint8, 21]
    end

    class GLXBadProfileARBError < FFI::Struct
      layout \
          :response_type, :uint8,
          :error_code, :uint8,
          :sequence, :uint16,
          :bad_value, :uint32,
          :minor_opcode, :uint16,
          :major_opcode, :uint8,
          :pad1, [:uint8, 21]
    end

    class RenderRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :context_tag, :context_tag_t
    end

    class RenderCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :render_checked, :xcb_render_checked, [:pointer,:uint8,:context_tag_t,:uint32], RenderCookie
    attach_function :render, :xcb_render, [:pointer,:uint8,:context_tag_t,:uint32], RenderCookie
    class RenderLargeRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :context_tag, :context_tag_t,
          :request_num, :uint16,
          :request_total, :uint16,
          :data_len, :uint32
    end

    class RenderLargeCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :render_large_checked, :xcb_render_large_checked, [:pointer,:uint8,:context_tag_t,:uint16,:uint16,:uint32,:uint32], RenderLargeCookie
    attach_function :render_large, :xcb_render_large, [:pointer,:uint8,:context_tag_t,:uint16,:uint16,:uint32,:uint32], RenderLargeCookie
    class CreateContextRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :context, :context_t,
          :visual, :visualid_t,
          :screen, :uint32,
          :share_list, :context_t,
          :is_direct, :bool,
          :pad1, [:uint8, 3]
    end

    class CreateContextCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :create_context_checked, :xcb_create_context_checked, [:pointer,:uint8,:context_t,:visualid_t,:uint32,:context_t,:bool], CreateContextCookie
    attach_function :create_context, :xcb_create_context, [:pointer,:uint8,:context_t,:visualid_t,:uint32,:context_t,:bool], CreateContextCookie
    class DestroyContextRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :context, :context_t
    end

    class DestroyContextCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :destroy_context_checked, :xcb_destroy_context_checked, [:pointer,:uint8,:context_t], DestroyContextCookie
    attach_function :destroy_context, :xcb_destroy_context, [:pointer,:uint8,:context_t], DestroyContextCookie
    class MakeCurrentRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :context_tag, :context_tag_t,
          :pad2, [:uint8, 20]
    end

    class MakeCurrentCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :make_current, :xcb_make_current, [:pointer,:uint8,:context_tag_t], MakeCurrentCookie
    class MakeCurrentReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :context_tag, :context_tag_t,
          :pad2, [:uint8, 20]
    end

    attach_function :make_current_reply, :xcb_make_current_reply, [:pointer, MakeCurrentCookie, :pointer], :pointer

        
    class IsDirectRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :is_direct, :bool,
          :pad2, [:uint8, 23]
    end

    class IsDirectCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :is_direct, :xcb_is_direct, [:pointer,:uint8,:bool], IsDirectCookie
    class IsDirectReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :is_direct, :bool,
          :pad2, [:uint8, 23]
    end

    attach_function :is_direct_reply, :xcb_is_direct_reply, [:pointer, IsDirectCookie, :pointer], :pointer

        
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
    attach_function :query_version, :xcb_query_version, [:pointer,:uint8,:uint32,:uint32], QueryVersionCookie
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

    attach_function :query_version_reply, :xcb_query_version_reply, [:pointer, QueryVersionCookie, :pointer], :pointer

        
    class WaitGLRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :context_tag, :context_tag_t
    end

    class WaitGLCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :wait_gl_checked, :xcb_wait_gl_checked, [:pointer,:uint8,:context_tag_t], WaitGLCookie
    attach_function :wait_gl, :xcb_wait_gl, [:pointer,:uint8,:context_tag_t], WaitGLCookie
    class WaitXRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :context_tag, :context_tag_t
    end

    class WaitXCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :wait_x_checked, :xcb_wait_x_checked, [:pointer,:uint8,:context_tag_t], WaitXCookie
    attach_function :wait_x, :xcb_wait_x, [:pointer,:uint8,:context_tag_t], WaitXCookie
    class CopyContextRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :src, :context_t,
          :dest, :context_t,
          :mask, :uint32,
          :src_context_tag, :context_tag_t
    end

    class CopyContextCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :copy_context_checked, :xcb_copy_context_checked, [:pointer,:uint8,:context_t,:context_t,:uint32,:context_tag_t], CopyContextCookie
    attach_function :copy_context, :xcb_copy_context, [:pointer,:uint8,:context_t,:context_t,:uint32,:context_tag_t], CopyContextCookie
    class SwapBuffersRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :context_tag, :context_tag_t,
          :drawable, :drawable_t
    end

    class SwapBuffersCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :swap_buffers_checked, :xcb_swap_buffers_checked, [:pointer,:uint8,:context_tag_t,:drawable_t], SwapBuffersCookie
    attach_function :swap_buffers, :xcb_swap_buffers, [:pointer,:uint8,:context_tag_t,:drawable_t], SwapBuffersCookie
    class UseXFontRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :context_tag, :context_tag_t,
          :font, :font_t,
          :first, :uint32,
          :count, :uint32,
          :list_base, :uint32
    end

    class UseXFontCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :use_x_font_checked, :xcb_use_x_font_checked, [:pointer,:uint8,:context_tag_t,:font_t,:uint32,:uint32,:uint32], UseXFontCookie
    attach_function :use_x_font, :xcb_use_x_font, [:pointer,:uint8,:context_tag_t,:font_t,:uint32,:uint32,:uint32], UseXFontCookie
    class CreateGLXPixmapRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :screen, :uint32,
          :visual, :visualid_t,
          :pixmap, :pixmap_t,
          :glx_pixmap, :pixmap_t
    end

    class CreateGLXPixmapCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :create_glx_pixmap_checked, :xcb_create_glx_pixmap_checked, [:pointer,:uint8,:uint32,:visualid_t,:pixmap_t,:pixmap_t], CreateGLXPixmapCookie
    attach_function :create_glx_pixmap, :xcb_create_glx_pixmap, [:pointer,:uint8,:uint32,:visualid_t,:pixmap_t,:pixmap_t], CreateGLXPixmapCookie
    class GetVisualConfigsRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :num_visuals, :uint32,
          :num_properties, :uint32,
          :pad2, [:uint8, 16]
    end

    class GetVisualConfigsCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :get_visual_configs, :xcb_get_visual_configs, [:pointer,:uint8,:uint32,:uint32,:uint32], GetVisualConfigsCookie
    class GetVisualConfigsReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :num_visuals, :uint32,
          :num_properties, :uint32,
          :pad2, [:uint8, 16]
    end

    attach_function :get_visual_configs_reply, :xcb_get_visual_configs_reply, [:pointer, GetVisualConfigsCookie, :pointer], :pointer

        
    class DestroyGLXPixmapRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :glx_pixmap, :pixmap_t
    end

    class DestroyGLXPixmapCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :destroy_glx_pixmap_checked, :xcb_destroy_glx_pixmap_checked, [:pointer,:uint8,:pixmap_t], DestroyGLXPixmapCookie
    attach_function :destroy_glx_pixmap, :xcb_destroy_glx_pixmap, [:pointer,:uint8,:pixmap_t], DestroyGLXPixmapCookie
    class VendorPrivateRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :vendor_code, :uint32,
          :context_tag, :context_tag_t
    end

    class VendorPrivateCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :vendor_private_checked, :xcb_vendor_private_checked, [:pointer,:uint8,:uint32,:context_tag_t,:uint32], VendorPrivateCookie
    attach_function :vendor_private, :xcb_vendor_private, [:pointer,:uint8,:uint32,:context_tag_t,:uint32], VendorPrivateCookie
    class VendorPrivateWithReplyRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :retval, :uint32,
          :data1_len, [:uint32 , 24]
    end

    class VendorPrivateWithReplyCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :vendor_private_with_reply, :xcb_vendor_private_with_reply, [:pointer,:uint8,:uint32,:uint32,:uint32], VendorPrivateWithReplyCookie
    class VendorPrivateWithReplyReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :retval, :uint32,
          :data1_len, [:uint32 , 24]
    end

    attach_function :vendor_private_with_reply_reply, :xcb_vendor_private_with_reply_reply, [:pointer, VendorPrivateWithReplyCookie, :pointer], :pointer

        
    class QueryExtensionsStringRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :pad2, [:uint8, 4],
          :n, :uint32,
          :pad3, [:uint8, 16]
    end

    class QueryExtensionsStringCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :query_extensions_string, :xcb_query_extensions_string, [:pointer,:uint8,:uint32], QueryExtensionsStringCookie
    class QueryExtensionsStringReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :pad2, [:uint8, 4],
          :n, :uint32,
          :pad3, [:uint8, 16]
    end

    attach_function :query_extensions_string_reply, :xcb_query_extensions_string_reply, [:pointer, QueryExtensionsStringCookie, :pointer], :pointer

        
    class QueryServerStringRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :pad2, [:uint8, 4],
          :str_len, :uint32,
          :pad3, [:uint8, 16]
    end

    class QueryServerStringCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :query_server_string, :xcb_query_server_string, [:pointer,:uint8,:uint32,:uint32], QueryServerStringCookie
    class QueryServerStringReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :pad2, [:uint8, 4],
          :str_len, :uint32,
          :pad3, [:uint8, 16]
    end

    attach_function :query_server_string_reply, :xcb_query_server_string_reply, [:pointer, QueryServerStringCookie, :pointer], :pointer

        
    class ClientInfoRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :major_version, :uint32,
          :minor_version, :uint32,
          :str_len, :uint32
    end

    class ClientInfoCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :client_info_checked, :xcb_client_info_checked, [:pointer,:uint8,:uint32,:uint32,:uint32,:uint32], ClientInfoCookie
    attach_function :client_info, :xcb_client_info, [:pointer,:uint8,:uint32,:uint32,:uint32,:uint32], ClientInfoCookie
    class GetFBConfigsRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :num_FB_configs, :uint32,
          :num_properties, :uint32,
          :pad2, [:uint8, 16]
    end

    class GetFBConfigsCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :get_fb_configs, :xcb_get_fb_configs, [:pointer,:uint8,:uint32,:uint32,:uint32], GetFBConfigsCookie
    class GetFBConfigsReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :num_FB_configs, :uint32,
          :num_properties, :uint32,
          :pad2, [:uint8, 16]
    end

    attach_function :get_fb_configs_reply, :xcb_get_fb_configs_reply, [:pointer, GetFBConfigsCookie, :pointer], :pointer

        
    class CreatePixmapRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :screen, :uint32,
          :fbconfig, :fbconfig_t,
          :pixmap, :pixmap_t,
          :glx_pixmap, :pixmap_t,
          :num_attribs, :uint32
    end

    class CreatePixmapCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :create_pixmap_checked, :xcb_create_pixmap_checked, [:pointer,:uint8,:uint32,:fbconfig_t,:pixmap_t,:pixmap_t,:uint32,:uint32], CreatePixmapCookie
    attach_function :create_pixmap, :xcb_create_pixmap, [:pointer,:uint8,:uint32,:fbconfig_t,:pixmap_t,:pixmap_t,:uint32,:uint32], CreatePixmapCookie
    class DestroyPixmapRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :glx_pixmap, :pixmap_t
    end

    class DestroyPixmapCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :destroy_pixmap_checked, :xcb_destroy_pixmap_checked, [:pointer,:uint8,:pixmap_t], DestroyPixmapCookie
    attach_function :destroy_pixmap, :xcb_destroy_pixmap, [:pointer,:uint8,:pixmap_t], DestroyPixmapCookie
    class CreateNewContextRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :context, :context_t,
          :fbconfig, :fbconfig_t,
          :screen, :uint32,
          :render_type, :uint32,
          :share_list, :context_t,
          :is_direct, :bool,
          :pad1, [:uint8, 3]
    end

    class CreateNewContextCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :create_new_context_checked, :xcb_create_new_context_checked, [:pointer,:uint8,:context_t,:fbconfig_t,:uint32,:uint32,:context_t,:bool], CreateNewContextCookie
    attach_function :create_new_context, :xcb_create_new_context, [:pointer,:uint8,:context_t,:fbconfig_t,:uint32,:uint32,:context_t,:bool], CreateNewContextCookie
    class QueryContextRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :num_attribs, :uint32,
          :pad2, [:uint8, 20]
    end

    class QueryContextCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :query_context, :xcb_query_context, [:pointer,:uint8,:uint32,:uint32], QueryContextCookie
    class QueryContextReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :num_attribs, :uint32,
          :pad2, [:uint8, 20]
    end

    attach_function :query_context_reply, :xcb_query_context_reply, [:pointer, QueryContextCookie, :pointer], :pointer

        
    class MakeContextCurrentRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :context_tag, :context_tag_t,
          :pad2, [:uint8, 20]
    end

    class MakeContextCurrentCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :make_context_current, :xcb_make_context_current, [:pointer,:uint8,:context_tag_t], MakeContextCurrentCookie
    class MakeContextCurrentReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :context_tag, :context_tag_t,
          :pad2, [:uint8, 20]
    end

    attach_function :make_context_current_reply, :xcb_make_context_current_reply, [:pointer, MakeContextCurrentCookie, :pointer], :pointer

        
    class CreatePbufferRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :screen, :uint32,
          :fbconfig, :fbconfig_t,
          :pbuffer, :pbuffer_t,
          :num_attribs, :uint32
    end

    class CreatePbufferCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :create_pbuffer_checked, :xcb_create_pbuffer_checked, [:pointer,:uint8,:uint32,:fbconfig_t,:pbuffer_t,:uint32,:uint32], CreatePbufferCookie
    attach_function :create_pbuffer, :xcb_create_pbuffer, [:pointer,:uint8,:uint32,:fbconfig_t,:pbuffer_t,:uint32,:uint32], CreatePbufferCookie
    class DestroyPbufferRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :pbuffer, :pbuffer_t
    end

    class DestroyPbufferCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :destroy_pbuffer_checked, :xcb_destroy_pbuffer_checked, [:pointer,:uint8,:pbuffer_t], DestroyPbufferCookie
    attach_function :destroy_pbuffer, :xcb_destroy_pbuffer, [:pointer,:uint8,:pbuffer_t], DestroyPbufferCookie
    class GetDrawableAttributesRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :num_attribs, :uint32,
          :pad2, [:uint8, 20]
    end

    class GetDrawableAttributesCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :get_drawable_attributes, :xcb_get_drawable_attributes, [:pointer,:uint8,:uint32,:uint32], GetDrawableAttributesCookie
    class GetDrawableAttributesReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :num_attribs, :uint32,
          :pad2, [:uint8, 20]
    end

    attach_function :get_drawable_attributes_reply, :xcb_get_drawable_attributes_reply, [:pointer, GetDrawableAttributesCookie, :pointer], :pointer

        
    class ChangeDrawableAttributesRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :drawable, :drawable_t,
          :num_attribs, :uint32
    end

    class ChangeDrawableAttributesCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :change_drawable_attributes_checked, :xcb_change_drawable_attributes_checked, [:pointer,:uint8,:drawable_t,:uint32,:uint32], ChangeDrawableAttributesCookie
    attach_function :change_drawable_attributes, :xcb_change_drawable_attributes, [:pointer,:uint8,:drawable_t,:uint32,:uint32], ChangeDrawableAttributesCookie
    class CreateWindowRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :screen, :uint32,
          :fbconfig, :fbconfig_t,
          :window, :window_t,
          :glx_window, :window_t,
          :num_attribs, :uint32
    end

    class CreateWindowCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :create_window_checked, :xcb_create_window_checked, [:pointer,:uint8,:uint32,:fbconfig_t,:window_t,:window_t,:uint32,:uint32], CreateWindowCookie
    attach_function :create_window, :xcb_create_window, [:pointer,:uint8,:uint32,:fbconfig_t,:window_t,:window_t,:uint32,:uint32], CreateWindowCookie
    class DeleteWindowRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :glxwindow, :window_t
    end

    class DeleteWindowCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :delete_window_checked, :xcb_delete_window_checked, [:pointer,:uint8,:window_t], DeleteWindowCookie
    attach_function :delete_window, :xcb_delete_window, [:pointer,:uint8,:window_t], DeleteWindowCookie
    class SetClientInfoARBRequest < FFI::Struct
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

    class SetClientInfoARBCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :set_client_info_arb_checked, :xcb_set_client_info_arb_checked, [:pointer,:uint8,:uint32,:uint32,:uint32,:uint32,:uint32,:uint32,:uint32,:uint32], SetClientInfoARBCookie
    attach_function :set_client_info_arb, :xcb_set_client_info_arb, [:pointer,:uint8,:uint32,:uint32,:uint32,:uint32,:uint32,:uint32,:uint32,:uint32], SetClientInfoARBCookie
    class CreateContextAttribsARBRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :context, :context_t,
          :fbconfig, :fbconfig_t,
          :screen, :uint32,
          :share_list, :context_t,
          :is_direct, :bool,
          :pad1, [:uint8, 3],
          :num_attribs, :uint32
    end

    class CreateContextAttribsARBCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :create_context_attribs_arb_checked, :xcb_create_context_attribs_arb_checked, [:pointer,:uint8,:context_t,:fbconfig_t,:uint32,:context_t,:bool,:uint32,:uint32], CreateContextAttribsARBCookie
    attach_function :create_context_attribs_arb, :xcb_create_context_attribs_arb, [:pointer,:uint8,:context_t,:fbconfig_t,:uint32,:context_t,:bool,:uint32,:uint32], CreateContextAttribsARBCookie
    class SetClientInfo2ARBRequest < FFI::Struct
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

    class SetClientInfo2ARBCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :set_client_info_2arb_checked, :xcb_set_client_info_2arb_checked, [:pointer,:uint8,:uint32,:uint32,:uint32,:uint32,:uint32,:uint32,:uint32,:uint32], SetClientInfo2ARBCookie
    attach_function :set_client_info_2arb, :xcb_set_client_info_2arb, [:pointer,:uint8,:uint32,:uint32,:uint32,:uint32,:uint32,:uint32,:uint32,:uint32], SetClientInfo2ARBCookie
    class NewListRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :context_tag, :context_tag_t,
          :list, :uint32,
          :mode, :uint32
    end

    class NewListCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :new_list_checked, :xcb_new_list_checked, [:pointer,:uint8,:context_tag_t,:uint32,:uint32], NewListCookie
    attach_function :new_list, :xcb_new_list, [:pointer,:uint8,:context_tag_t,:uint32,:uint32], NewListCookie
    class EndListRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :context_tag, :context_tag_t
    end

    class EndListCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :end_list_checked, :xcb_end_list_checked, [:pointer,:uint8,:context_tag_t], EndListCookie
    attach_function :end_list, :xcb_end_list, [:pointer,:uint8,:context_tag_t], EndListCookie
    class DeleteListsRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :context_tag, :context_tag_t,
          :list, :uint32,
          :range, :int32
    end

    class DeleteListsCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :delete_lists_checked, :xcb_delete_lists_checked, [:pointer,:uint8,:context_tag_t,:uint32,:int32], DeleteListsCookie
    attach_function :delete_lists, :xcb_delete_lists, [:pointer,:uint8,:context_tag_t,:uint32,:int32], DeleteListsCookie
    class GenListsRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :ret_val, :uint32
    end

    class GenListsCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :gen_lists, :xcb_gen_lists, [:pointer,:uint8,:uint32], GenListsCookie
    class GenListsReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :ret_val, :uint32
    end

    attach_function :gen_lists_reply, :xcb_gen_lists_reply, [:pointer, GenListsCookie, :pointer], :pointer

        
    class FeedbackBufferRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :context_tag, :context_tag_t,
          :size, :int32,
          :type, :int32
    end

    class FeedbackBufferCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :feedback_buffer_checked, :xcb_feedback_buffer_checked, [:pointer,:uint8,:context_tag_t,:int32,:int32], FeedbackBufferCookie
    attach_function :feedback_buffer, :xcb_feedback_buffer, [:pointer,:uint8,:context_tag_t,:int32,:int32], FeedbackBufferCookie
    class SelectBufferRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :context_tag, :context_tag_t,
          :size, :int32
    end

    class SelectBufferCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :select_buffer_checked, :xcb_select_buffer_checked, [:pointer,:uint8,:context_tag_t,:int32], SelectBufferCookie
    attach_function :select_buffer, :xcb_select_buffer, [:pointer,:uint8,:context_tag_t,:int32], SelectBufferCookie
    class RenderModeRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :ret_val, :uint32,
          :n, :uint32,
          :new_mode, :uint32,
          :pad2, [:uint8, 12]
    end

    class RenderModeCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :render_mode, :xcb_render_mode, [:pointer,:uint8,:uint32,:uint32,:uint32,:uint32], RenderModeCookie
    class RenderModeReply < FFI::Struct
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

    attach_function :render_mode_reply, :xcb_render_mode_reply, [:pointer, RenderModeCookie, :pointer], :pointer

        
    class FinishRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16
    end

    class FinishCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :finish, :xcb_finish, [:pointer,:uint8], FinishCookie
    class FinishReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32
    end

    attach_function :finish_reply, :xcb_finish_reply, [:pointer, FinishCookie, :pointer], :pointer

        
    class PixelStorefRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :context_tag, :context_tag_t,
          :pname, :uint32,
          :datum, :float32_t
    end

    class PixelStorefCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :pixel_storef_checked, :xcb_pixel_storef_checked, [:pointer,:uint8,:context_tag_t,:uint32,:float32_t], PixelStorefCookie
    attach_function :pixel_storef, :xcb_pixel_storef, [:pointer,:uint8,:context_tag_t,:uint32,:float32_t], PixelStorefCookie
    class PixelStoreiRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :context_tag, :context_tag_t,
          :pname, :uint32,
          :datum, :int32
    end

    class PixelStoreiCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :pixel_storei_checked, :xcb_pixel_storei_checked, [:pointer,:uint8,:context_tag_t,:uint32,:int32], PixelStoreiCookie
    attach_function :pixel_storei, :xcb_pixel_storei, [:pointer,:uint8,:context_tag_t,:uint32,:int32], PixelStoreiCookie
    class ReadPixelsRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :pad2, [:uint8, 24]
    end

    class ReadPixelsCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :read_pixels, :xcb_read_pixels, [:pointer,:uint8,:uint32], ReadPixelsCookie
    class ReadPixelsReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :pad2, [:uint8, 24]
    end

    attach_function :read_pixels_reply, :xcb_read_pixels_reply, [:pointer, ReadPixelsCookie, :pointer], :pointer

        
    class GetBooleanvRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :pad2, [:uint8, 4],
          :n, :uint32,
          :datum, :bool,
          :pad3, [:uint8, 15]
    end

    class GetBooleanvCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :get_booleanv, :xcb_get_booleanv, [:pointer,:uint8,:uint32,:bool,:uint32], GetBooleanvCookie
    class GetBooleanvReply < FFI::Struct
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

    attach_function :get_booleanv_reply, :xcb_get_booleanv_reply, [:pointer, GetBooleanvCookie, :pointer], :pointer

        
    class GetClipPlaneRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :pad2, [:uint8, 24]
    end

    class GetClipPlaneCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :get_clip_plane, :xcb_get_clip_plane, [:pointer,:uint8,:uint32], GetClipPlaneCookie
    class GetClipPlaneReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :pad2, [:uint8, 24]
    end

    attach_function :get_clip_plane_reply, :xcb_get_clip_plane_reply, [:pointer, GetClipPlaneCookie, :pointer], :pointer

        
    class GetDoublevRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :pad2, [:uint8, 4],
          :n, :uint32,
          :datum, :float64_t,
          :pad3, [:uint8, 8]
    end

    class GetDoublevCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :get_doublev, :xcb_get_doublev, [:pointer,:uint8,:uint32,:float64_t,:uint32], GetDoublevCookie
    class GetDoublevReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :pad2, [:uint8, 4],
          :n, :uint32,
          :datum, :float64_t,
          :pad3, [:uint8, 8]
    end

    attach_function :get_doublev_reply, :xcb_get_doublev_reply, [:pointer, GetDoublevCookie, :pointer], :pointer

        
    class GetErrorRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :error, :int32
    end

    class GetErrorCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :get_error, :xcb_get_error, [:pointer,:uint8,:int32], GetErrorCookie
    class GetErrorReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :error, :int32
    end

    attach_function :get_error_reply, :xcb_get_error_reply, [:pointer, GetErrorCookie, :pointer], :pointer

        
    class GetFloatvRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :pad2, [:uint8, 4],
          :n, :uint32,
          :datum, :float32_t,
          :pad3, [:uint8, 12]
    end

    class GetFloatvCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :get_floatv, :xcb_get_floatv, [:pointer,:uint8,:uint32,:float32_t,:uint32], GetFloatvCookie
    class GetFloatvReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :pad2, [:uint8, 4],
          :n, :uint32,
          :datum, :float32_t,
          :pad3, [:uint8, 12]
    end

    attach_function :get_floatv_reply, :xcb_get_floatv_reply, [:pointer, GetFloatvCookie, :pointer], :pointer

        
    class GetIntegervRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :pad2, [:uint8, 4],
          :n, :uint32,
          :datum, :int32,
          :pad3, [:uint8, 12]
    end

    class GetIntegervCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :get_integerv, :xcb_get_integerv, [:pointer,:uint8,:uint32,:int32,:uint32], GetIntegervCookie
    class GetIntegervReply < FFI::Struct
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

    attach_function :get_integerv_reply, :xcb_get_integerv_reply, [:pointer, GetIntegervCookie, :pointer], :pointer

        
    class GetLightfvRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :pad2, [:uint8, 4],
          :n, :uint32,
          :datum, :float32_t,
          :pad3, [:uint8, 12]
    end

    class GetLightfvCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :get_lightfv, :xcb_get_lightfv, [:pointer,:uint8,:uint32,:float32_t,:uint32], GetLightfvCookie
    class GetLightfvReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :pad2, [:uint8, 4],
          :n, :uint32,
          :datum, :float32_t,
          :pad3, [:uint8, 12]
    end

    attach_function :get_lightfv_reply, :xcb_get_lightfv_reply, [:pointer, GetLightfvCookie, :pointer], :pointer

        
    class GetLightivRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :pad2, [:uint8, 4],
          :n, :uint32,
          :datum, :int32,
          :pad3, [:uint8, 12]
    end

    class GetLightivCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :get_lightiv, :xcb_get_lightiv, [:pointer,:uint8,:uint32,:int32,:uint32], GetLightivCookie
    class GetLightivReply < FFI::Struct
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

    attach_function :get_lightiv_reply, :xcb_get_lightiv_reply, [:pointer, GetLightivCookie, :pointer], :pointer

        
    class GetMapdvRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :pad2, [:uint8, 4],
          :n, :uint32,
          :datum, :float64_t,
          :pad3, [:uint8, 8]
    end

    class GetMapdvCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :get_mapdv, :xcb_get_mapdv, [:pointer,:uint8,:uint32,:float64_t,:uint32], GetMapdvCookie
    class GetMapdvReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :pad2, [:uint8, 4],
          :n, :uint32,
          :datum, :float64_t,
          :pad3, [:uint8, 8]
    end

    attach_function :get_mapdv_reply, :xcb_get_mapdv_reply, [:pointer, GetMapdvCookie, :pointer], :pointer

        
    class GetMapfvRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :pad2, [:uint8, 4],
          :n, :uint32,
          :datum, :float32_t,
          :pad3, [:uint8, 12]
    end

    class GetMapfvCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :get_mapfv, :xcb_get_mapfv, [:pointer,:uint8,:uint32,:float32_t,:uint32], GetMapfvCookie
    class GetMapfvReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :pad2, [:uint8, 4],
          :n, :uint32,
          :datum, :float32_t,
          :pad3, [:uint8, 12]
    end

    attach_function :get_mapfv_reply, :xcb_get_mapfv_reply, [:pointer, GetMapfvCookie, :pointer], :pointer

        
    class GetMapivRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :pad2, [:uint8, 4],
          :n, :uint32,
          :datum, :int32,
          :pad3, [:uint8, 12]
    end

    class GetMapivCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :get_mapiv, :xcb_get_mapiv, [:pointer,:uint8,:uint32,:int32,:uint32], GetMapivCookie
    class GetMapivReply < FFI::Struct
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

    attach_function :get_mapiv_reply, :xcb_get_mapiv_reply, [:pointer, GetMapivCookie, :pointer], :pointer

        
    class GetMaterialfvRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :pad2, [:uint8, 4],
          :n, :uint32,
          :datum, :float32_t,
          :pad3, [:uint8, 12]
    end

    class GetMaterialfvCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :get_materialfv, :xcb_get_materialfv, [:pointer,:uint8,:uint32,:float32_t,:uint32], GetMaterialfvCookie
    class GetMaterialfvReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :pad2, [:uint8, 4],
          :n, :uint32,
          :datum, :float32_t,
          :pad3, [:uint8, 12]
    end

    attach_function :get_materialfv_reply, :xcb_get_materialfv_reply, [:pointer, GetMaterialfvCookie, :pointer], :pointer

        
    class GetMaterialivRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :pad2, [:uint8, 4],
          :n, :uint32,
          :datum, :int32,
          :pad3, [:uint8, 12]
    end

    class GetMaterialivCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :get_materialiv, :xcb_get_materialiv, [:pointer,:uint8,:uint32,:int32,:uint32], GetMaterialivCookie
    class GetMaterialivReply < FFI::Struct
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

    attach_function :get_materialiv_reply, :xcb_get_materialiv_reply, [:pointer, GetMaterialivCookie, :pointer], :pointer

        
    class GetPixelMapfvRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :pad2, [:uint8, 4],
          :n, :uint32,
          :datum, :float32_t,
          :pad3, [:uint8, 12]
    end

    class GetPixelMapfvCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :get_pixel_mapfv, :xcb_get_pixel_mapfv, [:pointer,:uint8,:uint32,:float32_t,:uint32], GetPixelMapfvCookie
    class GetPixelMapfvReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :pad2, [:uint8, 4],
          :n, :uint32,
          :datum, :float32_t,
          :pad3, [:uint8, 12]
    end

    attach_function :get_pixel_mapfv_reply, :xcb_get_pixel_mapfv_reply, [:pointer, GetPixelMapfvCookie, :pointer], :pointer

        
    class GetPixelMapuivRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :pad2, [:uint8, 4],
          :n, :uint32,
          :datum, :uint32,
          :pad3, [:uint8, 12]
    end

    class GetPixelMapuivCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :get_pixel_mapuiv, :xcb_get_pixel_mapuiv, [:pointer,:uint8,:uint32,:uint32,:uint32], GetPixelMapuivCookie
    class GetPixelMapuivReply < FFI::Struct
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

    attach_function :get_pixel_mapuiv_reply, :xcb_get_pixel_mapuiv_reply, [:pointer, GetPixelMapuivCookie, :pointer], :pointer

        
    class GetPixelMapusvRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :pad2, [:uint8, 4],
          :n, :uint32,
          :datum, :uint16,
          :pad3, [:uint8, 16]
    end

    class GetPixelMapusvCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :get_pixel_mapusv, :xcb_get_pixel_mapusv, [:pointer,:uint8,:uint32,:uint16,:uint32], GetPixelMapusvCookie
    class GetPixelMapusvReply < FFI::Struct
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

    attach_function :get_pixel_mapusv_reply, :xcb_get_pixel_mapusv_reply, [:pointer, GetPixelMapusvCookie, :pointer], :pointer

        
    class GetPolygonStippleRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :pad2, [:uint8, 24]
    end

    class GetPolygonStippleCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :get_polygon_stipple, :xcb_get_polygon_stipple, [:pointer,:uint8,:uint32], GetPolygonStippleCookie
    class GetPolygonStippleReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :pad2, [:uint8, 24]
    end

    attach_function :get_polygon_stipple_reply, :xcb_get_polygon_stipple_reply, [:pointer, GetPolygonStippleCookie, :pointer], :pointer

        
    class GetStringRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :pad2, [:uint8, 4],
          :n, :uint32,
          :pad3, [:uint8, 16]
    end

    class GetStringCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :get_string, :xcb_get_string, [:pointer,:uint8,:uint32,:uint32], GetStringCookie
    class GetStringReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :pad2, [:uint8, 4],
          :n, :uint32,
          :pad3, [:uint8, 16]
    end

    attach_function :get_string_reply, :xcb_get_string_reply, [:pointer, GetStringCookie, :pointer], :pointer

        
    class GetTexEnvfvRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :pad2, [:uint8, 4],
          :n, :uint32,
          :datum, :float32_t,
          :pad3, [:uint8, 12]
    end

    class GetTexEnvfvCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :get_tex_envfv, :xcb_get_tex_envfv, [:pointer,:uint8,:uint32,:float32_t,:uint32], GetTexEnvfvCookie
    class GetTexEnvfvReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :pad2, [:uint8, 4],
          :n, :uint32,
          :datum, :float32_t,
          :pad3, [:uint8, 12]
    end

    attach_function :get_tex_envfv_reply, :xcb_get_tex_envfv_reply, [:pointer, GetTexEnvfvCookie, :pointer], :pointer

        
    class GetTexEnvivRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :pad2, [:uint8, 4],
          :n, :uint32,
          :datum, :int32,
          :pad3, [:uint8, 12]
    end

    class GetTexEnvivCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :get_tex_enviv, :xcb_get_tex_enviv, [:pointer,:uint8,:uint32,:int32,:uint32], GetTexEnvivCookie
    class GetTexEnvivReply < FFI::Struct
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

    attach_function :get_tex_enviv_reply, :xcb_get_tex_enviv_reply, [:pointer, GetTexEnvivCookie, :pointer], :pointer

        
    class GetTexGendvRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :pad2, [:uint8, 4],
          :n, :uint32,
          :datum, :float64_t,
          :pad3, [:uint8, 8]
    end

    class GetTexGendvCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :get_tex_gendv, :xcb_get_tex_gendv, [:pointer,:uint8,:uint32,:float64_t,:uint32], GetTexGendvCookie
    class GetTexGendvReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :pad2, [:uint8, 4],
          :n, :uint32,
          :datum, :float64_t,
          :pad3, [:uint8, 8]
    end

    attach_function :get_tex_gendv_reply, :xcb_get_tex_gendv_reply, [:pointer, GetTexGendvCookie, :pointer], :pointer

        
    class GetTexGenfvRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :pad2, [:uint8, 4],
          :n, :uint32,
          :datum, :float32_t,
          :pad3, [:uint8, 12]
    end

    class GetTexGenfvCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :get_tex_genfv, :xcb_get_tex_genfv, [:pointer,:uint8,:uint32,:float32_t,:uint32], GetTexGenfvCookie
    class GetTexGenfvReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :pad2, [:uint8, 4],
          :n, :uint32,
          :datum, :float32_t,
          :pad3, [:uint8, 12]
    end

    attach_function :get_tex_genfv_reply, :xcb_get_tex_genfv_reply, [:pointer, GetTexGenfvCookie, :pointer], :pointer

        
    class GetTexGenivRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :pad2, [:uint8, 4],
          :n, :uint32,
          :datum, :int32,
          :pad3, [:uint8, 12]
    end

    class GetTexGenivCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :get_tex_geniv, :xcb_get_tex_geniv, [:pointer,:uint8,:uint32,:int32,:uint32], GetTexGenivCookie
    class GetTexGenivReply < FFI::Struct
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

    attach_function :get_tex_geniv_reply, :xcb_get_tex_geniv_reply, [:pointer, GetTexGenivCookie, :pointer], :pointer

        
    class GetTexImageRequest < FFI::Struct
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

    class GetTexImageCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :get_tex_image, :xcb_get_tex_image, [:pointer,:uint8,:int32,:int32,:int32,:uint32], GetTexImageCookie
    class GetTexImageReply < FFI::Struct
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

    attach_function :get_tex_image_reply, :xcb_get_tex_image_reply, [:pointer, GetTexImageCookie, :pointer], :pointer

        
    class GetTexParameterfvRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :pad2, [:uint8, 4],
          :n, :uint32,
          :datum, :float32_t,
          :pad3, [:uint8, 12]
    end

    class GetTexParameterfvCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :get_tex_parameterfv, :xcb_get_tex_parameterfv, [:pointer,:uint8,:uint32,:float32_t,:uint32], GetTexParameterfvCookie
    class GetTexParameterfvReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :pad2, [:uint8, 4],
          :n, :uint32,
          :datum, :float32_t,
          :pad3, [:uint8, 12]
    end

    attach_function :get_tex_parameterfv_reply, :xcb_get_tex_parameterfv_reply, [:pointer, GetTexParameterfvCookie, :pointer], :pointer

        
    class GetTexParameterivRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :pad2, [:uint8, 4],
          :n, :uint32,
          :datum, :int32,
          :pad3, [:uint8, 12]
    end

    class GetTexParameterivCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :get_tex_parameteriv, :xcb_get_tex_parameteriv, [:pointer,:uint8,:uint32,:int32,:uint32], GetTexParameterivCookie
    class GetTexParameterivReply < FFI::Struct
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

    attach_function :get_tex_parameteriv_reply, :xcb_get_tex_parameteriv_reply, [:pointer, GetTexParameterivCookie, :pointer], :pointer

        
    class GetTexLevelParameterfvRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :pad2, [:uint8, 4],
          :n, :uint32,
          :datum, :float32_t,
          :pad3, [:uint8, 12]
    end

    class GetTexLevelParameterfvCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :get_tex_level_parameterfv, :xcb_get_tex_level_parameterfv, [:pointer,:uint8,:uint32,:float32_t,:uint32], GetTexLevelParameterfvCookie
    class GetTexLevelParameterfvReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :pad2, [:uint8, 4],
          :n, :uint32,
          :datum, :float32_t,
          :pad3, [:uint8, 12]
    end

    attach_function :get_tex_level_parameterfv_reply, :xcb_get_tex_level_parameterfv_reply, [:pointer, GetTexLevelParameterfvCookie, :pointer], :pointer

        
    class GetTexLevelParameterivRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :pad2, [:uint8, 4],
          :n, :uint32,
          :datum, :int32,
          :pad3, [:uint8, 12]
    end

    class GetTexLevelParameterivCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :get_tex_level_parameteriv, :xcb_get_tex_level_parameteriv, [:pointer,:uint8,:uint32,:int32,:uint32], GetTexLevelParameterivCookie
    class GetTexLevelParameterivReply < FFI::Struct
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

    attach_function :get_tex_level_parameteriv_reply, :xcb_get_tex_level_parameteriv_reply, [:pointer, GetTexLevelParameterivCookie, :pointer], :pointer

        
    class IsListRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :ret_val, :bool32_t
    end

    class IsListCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :is_list, :xcb_is_list, [:pointer,:uint8,:bool32_t], IsListCookie
    class IsListReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :ret_val, :bool32_t
    end

    attach_function :is_list_reply, :xcb_is_list_reply, [:pointer, IsListCookie, :pointer], :pointer

        
    class FlushRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :context_tag, :context_tag_t
    end

    class FlushCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :flush_checked, :xcb_flush_checked, [:pointer,:uint8,:context_tag_t], FlushCookie
    attach_function :flush, :xcb_flush, [:pointer,:uint8,:context_tag_t], FlushCookie
    class AreTexturesResidentRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :ret_val, :bool32_t,
          :pad2, [:uint8, 20]
    end

    class AreTexturesResidentCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :are_textures_resident, :xcb_are_textures_resident, [:pointer,:uint8,:bool32_t,:uint32], AreTexturesResidentCookie
    class AreTexturesResidentReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :ret_val, :bool32_t,
          :pad2, [:uint8, 20]
    end

    attach_function :are_textures_resident_reply, :xcb_are_textures_resident_reply, [:pointer, AreTexturesResidentCookie, :pointer], :pointer

        
    class DeleteTexturesRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :context_tag, :context_tag_t,
          :n, :int32
    end

    class DeleteTexturesCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :delete_textures_checked, :xcb_delete_textures_checked, [:pointer,:uint8,:context_tag_t,:int32,:uint32], DeleteTexturesCookie
    attach_function :delete_textures, :xcb_delete_textures, [:pointer,:uint8,:context_tag_t,:int32,:uint32], DeleteTexturesCookie
    class GenTexturesRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :pad2, [:uint8, 24]
    end

    class GenTexturesCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :gen_textures, :xcb_gen_textures, [:pointer,:uint8,:uint32], GenTexturesCookie
    class GenTexturesReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :pad2, [:uint8, 24]
    end

    attach_function :gen_textures_reply, :xcb_gen_textures_reply, [:pointer, GenTexturesCookie, :pointer], :pointer

        
    class IsTextureRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :ret_val, :bool32_t
    end

    class IsTextureCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :is_texture, :xcb_is_texture, [:pointer,:uint8,:bool32_t], IsTextureCookie
    class IsTextureReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :ret_val, :bool32_t
    end

    attach_function :is_texture_reply, :xcb_is_texture_reply, [:pointer, IsTextureCookie, :pointer], :pointer

        
    class GetColorTableRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :pad2, [:uint8, 8],
          :width, :int32,
          :pad3, [:uint8, 12]
    end

    class GetColorTableCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :get_color_table, :xcb_get_color_table, [:pointer,:uint8,:int32,:uint32], GetColorTableCookie
    class GetColorTableReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :pad2, [:uint8, 8],
          :width, :int32,
          :pad3, [:uint8, 12]
    end

    attach_function :get_color_table_reply, :xcb_get_color_table_reply, [:pointer, GetColorTableCookie, :pointer], :pointer

        
    class GetColorTableParameterfvRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :pad2, [:uint8, 4],
          :n, :uint32,
          :datum, :float32_t,
          :pad3, [:uint8, 12]
    end

    class GetColorTableParameterfvCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :get_color_table_parameterfv, :xcb_get_color_table_parameterfv, [:pointer,:uint8,:uint32,:float32_t,:uint32], GetColorTableParameterfvCookie
    class GetColorTableParameterfvReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :pad2, [:uint8, 4],
          :n, :uint32,
          :datum, :float32_t,
          :pad3, [:uint8, 12]
    end

    attach_function :get_color_table_parameterfv_reply, :xcb_get_color_table_parameterfv_reply, [:pointer, GetColorTableParameterfvCookie, :pointer], :pointer

        
    class GetColorTableParameterivRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :pad2, [:uint8, 4],
          :n, :uint32,
          :datum, :int32,
          :pad3, [:uint8, 12]
    end

    class GetColorTableParameterivCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :get_color_table_parameteriv, :xcb_get_color_table_parameteriv, [:pointer,:uint8,:uint32,:int32,:uint32], GetColorTableParameterivCookie
    class GetColorTableParameterivReply < FFI::Struct
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

    attach_function :get_color_table_parameteriv_reply, :xcb_get_color_table_parameteriv_reply, [:pointer, GetColorTableParameterivCookie, :pointer], :pointer

        
    class GetConvolutionFilterRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :pad2, [:uint8, 8],
          :width, :int32,
          :height, :int32,
          :pad3, [:uint8, 8]
    end

    class GetConvolutionFilterCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :get_convolution_filter, :xcb_get_convolution_filter, [:pointer,:uint8,:int32,:int32,:uint32], GetConvolutionFilterCookie
    class GetConvolutionFilterReply < FFI::Struct
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

    attach_function :get_convolution_filter_reply, :xcb_get_convolution_filter_reply, [:pointer, GetConvolutionFilterCookie, :pointer], :pointer

        
    class GetConvolutionParameterfvRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :pad2, [:uint8, 4],
          :n, :uint32,
          :datum, :float32_t,
          :pad3, [:uint8, 12]
    end

    class GetConvolutionParameterfvCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :get_convolution_parameterfv, :xcb_get_convolution_parameterfv, [:pointer,:uint8,:uint32,:float32_t,:uint32], GetConvolutionParameterfvCookie
    class GetConvolutionParameterfvReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :pad2, [:uint8, 4],
          :n, :uint32,
          :datum, :float32_t,
          :pad3, [:uint8, 12]
    end

    attach_function :get_convolution_parameterfv_reply, :xcb_get_convolution_parameterfv_reply, [:pointer, GetConvolutionParameterfvCookie, :pointer], :pointer

        
    class GetConvolutionParameterivRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :pad2, [:uint8, 4],
          :n, :uint32,
          :datum, :int32,
          :pad3, [:uint8, 12]
    end

    class GetConvolutionParameterivCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :get_convolution_parameteriv, :xcb_get_convolution_parameteriv, [:pointer,:uint8,:uint32,:int32,:uint32], GetConvolutionParameterivCookie
    class GetConvolutionParameterivReply < FFI::Struct
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

    attach_function :get_convolution_parameteriv_reply, :xcb_get_convolution_parameteriv_reply, [:pointer, GetConvolutionParameterivCookie, :pointer], :pointer

        
    class GetSeparableFilterRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :pad2, [:uint8, 8],
          :row_w, :int32,
          :col_h, :int32,
          :pad3, [:uint8, 8]
    end

    class GetSeparableFilterCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :get_separable_filter, :xcb_get_separable_filter, [:pointer,:uint8,:int32,:int32,:uint32], GetSeparableFilterCookie
    class GetSeparableFilterReply < FFI::Struct
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

    attach_function :get_separable_filter_reply, :xcb_get_separable_filter_reply, [:pointer, GetSeparableFilterCookie, :pointer], :pointer

        
    class GetHistogramRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :pad2, [:uint8, 8],
          :width, :int32,
          :pad3, [:uint8, 12]
    end

    class GetHistogramCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :get_histogram, :xcb_get_histogram, [:pointer,:uint8,:int32,:uint32], GetHistogramCookie
    class GetHistogramReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :pad2, [:uint8, 8],
          :width, :int32,
          :pad3, [:uint8, 12]
    end

    attach_function :get_histogram_reply, :xcb_get_histogram_reply, [:pointer, GetHistogramCookie, :pointer], :pointer

        
    class GetHistogramParameterfvRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :pad2, [:uint8, 4],
          :n, :uint32,
          :datum, :float32_t,
          :pad3, [:uint8, 12]
    end

    class GetHistogramParameterfvCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :get_histogram_parameterfv, :xcb_get_histogram_parameterfv, [:pointer,:uint8,:uint32,:float32_t,:uint32], GetHistogramParameterfvCookie
    class GetHistogramParameterfvReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :pad2, [:uint8, 4],
          :n, :uint32,
          :datum, :float32_t,
          :pad3, [:uint8, 12]
    end

    attach_function :get_histogram_parameterfv_reply, :xcb_get_histogram_parameterfv_reply, [:pointer, GetHistogramParameterfvCookie, :pointer], :pointer

        
    class GetHistogramParameterivRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :pad2, [:uint8, 4],
          :n, :uint32,
          :datum, :int32,
          :pad3, [:uint8, 12]
    end

    class GetHistogramParameterivCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :get_histogram_parameteriv, :xcb_get_histogram_parameteriv, [:pointer,:uint8,:uint32,:int32,:uint32], GetHistogramParameterivCookie
    class GetHistogramParameterivReply < FFI::Struct
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

    attach_function :get_histogram_parameteriv_reply, :xcb_get_histogram_parameteriv_reply, [:pointer, GetHistogramParameterivCookie, :pointer], :pointer

        
    class GetMinmaxRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :pad2, [:uint8, 24]
    end

    class GetMinmaxCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :get_minmax, :xcb_get_minmax, [:pointer,:uint8,:uint32], GetMinmaxCookie
    class GetMinmaxReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :pad2, [:uint8, 24]
    end

    attach_function :get_minmax_reply, :xcb_get_minmax_reply, [:pointer, GetMinmaxCookie, :pointer], :pointer

        
    class GetMinmaxParameterfvRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :pad2, [:uint8, 4],
          :n, :uint32,
          :datum, :float32_t,
          :pad3, [:uint8, 12]
    end

    class GetMinmaxParameterfvCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :get_minmax_parameterfv, :xcb_get_minmax_parameterfv, [:pointer,:uint8,:uint32,:float32_t,:uint32], GetMinmaxParameterfvCookie
    class GetMinmaxParameterfvReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :pad2, [:uint8, 4],
          :n, :uint32,
          :datum, :float32_t,
          :pad3, [:uint8, 12]
    end

    attach_function :get_minmax_parameterfv_reply, :xcb_get_minmax_parameterfv_reply, [:pointer, GetMinmaxParameterfvCookie, :pointer], :pointer

        
    class GetMinmaxParameterivRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :pad2, [:uint8, 4],
          :n, :uint32,
          :datum, :int32,
          :pad3, [:uint8, 12]
    end

    class GetMinmaxParameterivCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :get_minmax_parameteriv, :xcb_get_minmax_parameteriv, [:pointer,:uint8,:uint32,:int32,:uint32], GetMinmaxParameterivCookie
    class GetMinmaxParameterivReply < FFI::Struct
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

    attach_function :get_minmax_parameteriv_reply, :xcb_get_minmax_parameteriv_reply, [:pointer, GetMinmaxParameterivCookie, :pointer], :pointer

        
    class GetCompressedTexImageARBRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :pad2, [:uint8, 8],
          :size, :int32,
          :pad3, [:uint8, 12]
    end

    class GetCompressedTexImageARBCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :get_compressed_tex_image_arb, :xcb_get_compressed_tex_image_arb, [:pointer,:uint8,:int32,:uint32], GetCompressedTexImageARBCookie
    class GetCompressedTexImageARBReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :pad2, [:uint8, 8],
          :size, :int32,
          :pad3, [:uint8, 12]
    end

    attach_function :get_compressed_tex_image_arb_reply, :xcb_get_compressed_tex_image_arb_reply, [:pointer, GetCompressedTexImageARBCookie, :pointer], :pointer

        
    class DeleteQueriesARBRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :context_tag, :context_tag_t,
          :n, :int32
    end

    class DeleteQueriesARBCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :delete_queries_arb_checked, :xcb_delete_queries_arb_checked, [:pointer,:uint8,:context_tag_t,:int32,:uint32], DeleteQueriesARBCookie
    attach_function :delete_queries_arb, :xcb_delete_queries_arb, [:pointer,:uint8,:context_tag_t,:int32,:uint32], DeleteQueriesARBCookie
    class GenQueriesARBRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :pad2, [:uint8, 24]
    end

    class GenQueriesARBCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :gen_queries_arb, :xcb_gen_queries_arb, [:pointer,:uint8,:uint32], GenQueriesARBCookie
    class GenQueriesARBReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :pad2, [:uint8, 24]
    end

    attach_function :gen_queries_arb_reply, :xcb_gen_queries_arb_reply, [:pointer, GenQueriesARBCookie, :pointer], :pointer

        
    class IsQueryARBRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :ret_val, :bool32_t
    end

    class IsQueryARBCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :is_query_arb, :xcb_is_query_arb, [:pointer,:uint8,:bool32_t], IsQueryARBCookie
    class IsQueryARBReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :ret_val, :bool32_t
    end

    attach_function :is_query_arb_reply, :xcb_is_query_arb_reply, [:pointer, IsQueryARBCookie, :pointer], :pointer

        
    class GetQueryivARBRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :pad2, [:uint8, 4],
          :n, :uint32,
          :datum, :int32,
          :pad3, [:uint8, 12]
    end

    class GetQueryivARBCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :get_queryiv_arb, :xcb_get_queryiv_arb, [:pointer,:uint8,:uint32,:int32,:uint32], GetQueryivARBCookie
    class GetQueryivARBReply < FFI::Struct
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

    attach_function :get_queryiv_arb_reply, :xcb_get_queryiv_arb_reply, [:pointer, GetQueryivARBCookie, :pointer], :pointer

        
    class GetQueryObjectivARBRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :pad2, [:uint8, 4],
          :n, :uint32,
          :datum, :int32,
          :pad3, [:uint8, 12]
    end

    class GetQueryObjectivARBCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :get_query_objectiv_arb, :xcb_get_query_objectiv_arb, [:pointer,:uint8,:uint32,:int32,:uint32], GetQueryObjectivARBCookie
    class GetQueryObjectivARBReply < FFI::Struct
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

    attach_function :get_query_objectiv_arb_reply, :xcb_get_query_objectiv_arb_reply, [:pointer, GetQueryObjectivARBCookie, :pointer], :pointer

        
    class GetQueryObjectuivARBRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :pad2, [:uint8, 4],
          :n, :uint32,
          :datum, :uint32,
          :pad3, [:uint8, 12]
    end

    class GetQueryObjectuivARBCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :get_query_objectuiv_arb, :xcb_get_query_objectuiv_arb, [:pointer,:uint8,:uint32,:uint32,:uint32], GetQueryObjectuivARBCookie
    class GetQueryObjectuivARBReply < FFI::Struct
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

    attach_function :get_query_objectuiv_arb_reply, :xcb_get_query_objectuiv_arb_reply, [:pointer, GetQueryObjectuivARBCookie, :pointer], :pointer

        
  end
end
