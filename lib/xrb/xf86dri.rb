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
    class XrbDrmClipRect < FFI::Struct
      layout \
          :x1, :int16,
          :y1, :int16,
          :x2, :int16,
          :x3, :int16
    end

    class XrbDrmClipRectIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_drm_clip_rect_next, [:pointer], :void
    attach_function :xcb_drm_clip_rect_end, [:pointer], XrbGenericIterator
    class XrbQueryVersionRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :dri_major_version, :uint16,
          :dri_minor_version, :uint16,
          :dri_minor_patch, :uint32
    end

    class XrbQueryVersionCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_query_version, [:pointer,:uint8,:uint8,:uint16,:uint16,:uint16,:uint32], XrbQueryVersionCookie
    class XrbQueryVersionReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :dri_major_version, :uint16,
          :dri_minor_version, :uint16,
          :dri_minor_patch, :uint32
    end

    attach_function :xcb_query_version_reply, [:pointer, XrbQueryVersionCookie, :pointer], :pointer

        
    class XrbQueryDirectRenderingCapableRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :is_capable, :bool
    end

    class XrbQueryDirectRenderingCapableCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_query_direct_rendering_capable, [:pointer,:uint8,:uint8,:uint16,:bool], XrbQueryDirectRenderingCapableCookie
    class XrbQueryDirectRenderingCapableReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :is_capable, :bool
    end

    attach_function :xcb_query_direct_rendering_capable_reply, [:pointer, XrbQueryDirectRenderingCapableCookie, :pointer], :pointer

        
    class XrbOpenConnectionRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :sarea_handle_low, :uint32,
          :sarea_handle_high, :uint32,
          :bus_id_len, :uint32,
          :pad2, [:uint8, 12]
    end

    class XrbOpenConnectionCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_open_connection, [:pointer,:uint8,:uint8,:uint16,:uint32,:uint32,:uint32,:uint32], XrbOpenConnectionCookie
    class XrbOpenConnectionReply < FFI::Struct
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

    attach_function :xcb_open_connection_reply, [:pointer, XrbOpenConnectionCookie, :pointer], :pointer

        
    class XrbCloseConnectionRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :screen, :uint32
    end

    class XrbCloseConnectionCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_close_connection_checked, [:pointer,:uint8,:uint8,:uint16,:uint32], XrbCloseConnectionCookie
    attach_function :xcb_close_connection, [:pointer,:uint8,:uint8,:uint16,:uint32], XrbCloseConnectionCookie
    class XrbGetClientDriverNameRequest < FFI::Struct
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

    class XrbGetClientDriverNameCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_client_driver_name, [:pointer,:uint8,:uint8,:uint16,:uint32,:uint32,:uint32,:uint32,:uint32], XrbGetClientDriverNameCookie
    class XrbGetClientDriverNameReply < FFI::Struct
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

    attach_function :xcb_get_client_driver_name_reply, [:pointer, XrbGetClientDriverNameCookie, :pointer], :pointer

        
    class XrbCreateContextRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :hw_context, :uint32
    end

    class XrbCreateContextCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_create_context, [:pointer,:uint8,:uint8,:uint16,:uint32], XrbCreateContextCookie
    class XrbCreateContextReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :hw_context, :uint32
    end

    attach_function :xcb_create_context_reply, [:pointer, XrbCreateContextCookie, :pointer], :pointer

        
    class XrbDestroyContextRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :screen, :uint32,
          :context, :uint32
    end

    class XrbDestroyContextCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_destroy_context_checked, [:pointer,:uint8,:uint8,:uint16,:uint32,:uint32], XrbDestroyContextCookie
    attach_function :xcb_destroy_context, [:pointer,:uint8,:uint8,:uint16,:uint32,:uint32], XrbDestroyContextCookie
    class XrbCreateDrawableRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :hw_drawable_handle, :uint32
    end

    class XrbCreateDrawableCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_create_drawable, [:pointer,:uint8,:uint8,:uint16,:uint32], XrbCreateDrawableCookie
    class XrbCreateDrawableReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :hw_drawable_handle, :uint32
    end

    attach_function :xcb_create_drawable_reply, [:pointer, XrbCreateDrawableCookie, :pointer], :pointer

        
    class XrbDestroyDrawableRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :screen, :uint32,
          :drawable, :uint32
    end

    class XrbDestroyDrawableCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_destroy_drawable_checked, [:pointer,:uint8,:uint8,:uint16,:uint32,:uint32], XrbDestroyDrawableCookie
    attach_function :xcb_destroy_drawable, [:pointer,:uint8,:uint8,:uint16,:uint32,:uint32], XrbDestroyDrawableCookie
    class XrbGetDrawableInfoRequest < FFI::Struct
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

    class XrbGetDrawableInfoCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_drawable_info, [:pointer,:uint8,:uint8,:uint16,:uint32,:uint32,:int16,:int16,:int16,:int16,:uint32,:int16,:int16,:uint32,:uint32,:uint32], XrbGetDrawableInfoCookie
    class XrbGetDrawableInfoReply < FFI::Struct
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

    attach_function :xcb_get_drawable_info_reply, [:pointer, XrbGetDrawableInfoCookie, :pointer], :pointer

        
    class XrbGetDeviceInfoRequest < FFI::Struct
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

    class XrbGetDeviceInfoCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_device_info, [:pointer,:uint8,:uint8,:uint16,:uint32,:uint32,:uint32,:uint32,:uint32,:uint32,:uint32], XrbGetDeviceInfoCookie
    class XrbGetDeviceInfoReply < FFI::Struct
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

    attach_function :xcb_get_device_info_reply, [:pointer, XrbGetDeviceInfoCookie, :pointer], :pointer

        
    class XrbAuthConnectionRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :authenticated, :uint32
    end

    class XrbAuthConnectionCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_auth_connection, [:pointer,:uint8,:uint8,:uint16,:uint32], XrbAuthConnectionCookie
    class XrbAuthConnectionReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :authenticated, :uint32
    end

    attach_function :xcb_auth_connection_reply, [:pointer, XrbAuthConnectionCookie, :pointer], :pointer

        
  end
end
