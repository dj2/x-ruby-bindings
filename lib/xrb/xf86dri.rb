#
# This file auto-generated. Do not edit.
#

require 'ffi'
class Xrb
  class XF86Dri
    extend FFI::Library
    ffi_lib 'xf86dri'
    MAJOR_VERSION = 4
    MINOR_VERSION = 1
    class DrmClipRect < FFI::Struct
      layout \
          :x1, :int16,
          :y1, :int16,
          :x2, :int16,
          :x3, :int16
    end

    class DrmClipRectIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_drm_clip_rect_next, [:pointer], :void
    attach_function :xcb_drm_clip_rect_end, [:pointer], GenericIterator
    class QueryVersionRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :dri_major_version, :uint16,
          :dri_minor_version, :uint16,
          :dri_minor_patch, :uint32
    end

    class QueryVersionCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_query_version, [:pointer,:uint8,:uint16,:uint16,:uint32], QueryVersionCookie
    class QueryVersionReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :dri_major_version, :uint16,
          :dri_minor_version, :uint16,
          :dri_minor_patch, :uint32
    end

    attach_function :xcb_query_version_reply, [:pointer, QueryVersionCookie, :pointer], :pointer

        
    class QueryDirectRenderingCapableRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :is_capable, :bool
    end

    class QueryDirectRenderingCapableCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_query_direct_rendering_capable, [:pointer,:uint8,:bool], QueryDirectRenderingCapableCookie
    class QueryDirectRenderingCapableReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :is_capable, :bool
    end

    attach_function :xcb_query_direct_rendering_capable_reply, [:pointer, QueryDirectRenderingCapableCookie, :pointer], :pointer

        
    class OpenConnectionRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :sarea_handle_low, :uint32,
          :sarea_handle_high, :uint32,
          :bus_id_len, :uint32,
          :pad2, [:uint8, 12]
    end

    class OpenConnectionCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_open_connection, [:pointer,:uint8,:uint32,:uint32,:uint32,:uint32], OpenConnectionCookie
    class OpenConnectionReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :sarea_handle_low, :uint32,
          :sarea_handle_high, :uint32,
          :bus_id_len, :uint32,
          :pad2, [:uint8, 12]
    end

    attach_function :xcb_open_connection_reply, [:pointer, OpenConnectionCookie, :pointer], :pointer

        
    class CloseConnectionRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :screen, :uint32
    end

    class CloseConnectionCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_close_connection_checked, [:pointer,:uint8,:uint32], CloseConnectionCookie
    attach_function :xcb_close_connection, [:pointer,:uint8,:uint32], CloseConnectionCookie
    class GetClientDriverNameRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :client_driver_major_version, :uint32,
          :client_driver_minor_version, :uint32,
          :client_driver_patch_version, :uint32,
          :client_driver_name_len, :uint32,
          :pad2, [:uint8, 8]
    end

    class GetClientDriverNameCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_client_driver_name, [:pointer,:uint8,:uint32,:uint32,:uint32,:uint32,:uint32], GetClientDriverNameCookie
    class GetClientDriverNameReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :client_driver_major_version, :uint32,
          :client_driver_minor_version, :uint32,
          :client_driver_patch_version, :uint32,
          :client_driver_name_len, :uint32,
          :pad2, [:uint8, 8]
    end

    attach_function :xcb_get_client_driver_name_reply, [:pointer, GetClientDriverNameCookie, :pointer], :pointer

        
    class CreateContextRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :hw_context, :uint32
    end

    class CreateContextCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_create_context, [:pointer,:uint8,:uint32], CreateContextCookie
    class CreateContextReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :hw_context, :uint32
    end

    attach_function :xcb_create_context_reply, [:pointer, CreateContextCookie, :pointer], :pointer

        
    class DestroyContextRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :screen, :uint32,
          :context, :uint32
    end

    class DestroyContextCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_destroy_context_checked, [:pointer,:uint8,:uint32,:uint32], DestroyContextCookie
    attach_function :xcb_destroy_context, [:pointer,:uint8,:uint32,:uint32], DestroyContextCookie
    class CreateDrawableRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :hw_drawable_handle, :uint32
    end

    class CreateDrawableCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_create_drawable, [:pointer,:uint8,:uint32], CreateDrawableCookie
    class CreateDrawableReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :hw_drawable_handle, :uint32
    end

    attach_function :xcb_create_drawable_reply, [:pointer, CreateDrawableCookie, :pointer], :pointer

        
    class DestroyDrawableRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :screen, :uint32,
          :drawable, :uint32
    end

    class DestroyDrawableCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_destroy_drawable_checked, [:pointer,:uint8,:uint32,:uint32], DestroyDrawableCookie
    attach_function :xcb_destroy_drawable, [:pointer,:uint8,:uint32,:uint32], DestroyDrawableCookie
    class GetDrawableInfoRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :drawable_table_index, :uint32,
          :drawable_table_stamp, :uint32,
          :drawable_origin_X, :int16,
          :drawable_origin_Y, :int16,
          :drawable_size_W, :int16,
          :drawable_size_H, :int16,
          :num_clip_rects, :uint32,
          :back_x, :int16,
          :back_y, :int16,
          :num_back_clip_rects, :uint32
    end

    class GetDrawableInfoCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_drawable_info, [:pointer,:uint8,:uint32,:uint32,:int16,:int16,:int16,:int16,:uint32,:int16,:int16,:uint32,:uint32,:uint32], GetDrawableInfoCookie
    class GetDrawableInfoReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :drawable_table_index, :uint32,
          :drawable_table_stamp, :uint32,
          :drawable_origin_X, :int16,
          :drawable_origin_Y, :int16,
          :drawable_size_W, :int16,
          :drawable_size_H, :int16,
          :num_clip_rects, :uint32,
          :back_x, :int16,
          :back_y, :int16,
          :num_back_clip_rects, :uint32
    end

    attach_function :xcb_get_drawable_info_reply, [:pointer, GetDrawableInfoCookie, :pointer], :pointer

        
    class GetDeviceInfoRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :framebuffer_handle_low, :uint32,
          :framebuffer_handle_high, :uint32,
          :framebuffer_origin_offset, :uint32,
          :framebuffer_size, :uint32,
          :framebuffer_stride, :uint32,
          :device_private_size, :uint32
    end

    class GetDeviceInfoCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_device_info, [:pointer,:uint8,:uint32,:uint32,:uint32,:uint32,:uint32,:uint32,:uint32], GetDeviceInfoCookie
    class GetDeviceInfoReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :framebuffer_handle_low, :uint32,
          :framebuffer_handle_high, :uint32,
          :framebuffer_origin_offset, :uint32,
          :framebuffer_size, :uint32,
          :framebuffer_stride, :uint32,
          :device_private_size, :uint32
    end

    attach_function :xcb_get_device_info_reply, [:pointer, GetDeviceInfoCookie, :pointer], :pointer

        
    class AuthConnectionRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :authenticated, :uint32
    end

    class AuthConnectionCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_auth_connection, [:pointer,:uint8,:uint32], AuthConnectionCookie
    class AuthConnectionReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :authenticated, :uint32
    end

    attach_function :xcb_auth_connection_reply, [:pointer, AuthConnectionCookie, :pointer], :pointer

        
  end
end
