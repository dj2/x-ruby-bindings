#
# This file auto-generated. Do not edit.
#

require 'ffi'
require 'xrb/xproto'
class Xrb
  class DRI2
    extend FFI::Library
    ffi_lib 'dri2'
    MAJOR_VERSION = 1
    MINOR_VERSION = 3
    XRB_ATTACHMENT_BUFFER_FRONT_LEFT = 1
    XRB_ATTACHMENT_BUFFER_BACK_LEFT = 2
    XRB_ATTACHMENT_BUFFER_FRONT_RIGHT = 3
    XRB_ATTACHMENT_BUFFER_BACK_RIGHT = 4
    XRB_ATTACHMENT_BUFFER_DEPTH = 5
    XRB_ATTACHMENT_BUFFER_STENCIL = 6
    XRB_ATTACHMENT_BUFFER_ACCUM = 7
    XRB_ATTACHMENT_BUFFER_FAKE_FRONT_LEFT = 8
    XRB_ATTACHMENT_BUFFER_FAKE_FRONT_RIGHT = 9
    XRB_ATTACHMENT_BUFFER_DEPTH_STENCIL = 10
    XRB_ATTACHMENT_BUFFER_HIZ = 11
    XRB_DRIVER_TYPE_DRI = 1
    XRB_DRIVER_TYPE_VDPAU = 2
    XRB_EVENT_TYPE_EXCHANGE_COMPLETE = 1
    XRB_EVENT_TYPE_BLIT_COMPLETE = 2
    XRB_EVENT_TYPE_FLIP_COMPLETE = 3
    class XrbDRI2Buffer < FFI::Struct
      layout \
          :attachment, :uint32,
          :name, :uint32,
          :pitch, :uint32,
          :cpp, :uint32,
          :flags, :uint32
    end

    class XrbDRI2BufferIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_dri2buffer_next, [:pointer], :void
    attach_function :xcb_dri2buffer_end, [:pointer], XrbGenericIterator
    class XrbAttachFormat < FFI::Struct
      layout \
          :attachment, :uint32,
          :format, :uint32
    end

    class XrbAttachFormatIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_attach_format_next, [:pointer], :void
    attach_function :xcb_attach_format_end, [:pointer], XrbGenericIterator
    class XrbBufferSwapCompleteEvent < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :event_type, :uint16,
          :pad2, [:uint8, 2],
          :drawable, :xrb_drawable_t,
          :ust_hi, :uint32,
          :ust_lo, :uint32,
          :msc_hi, :uint32,
          :msc_lo, :uint32,
          :sbc, :uint32
    end

    class XrbInvalidateBuffersEvent < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :drawable, :xrb_drawable_t
    end

    class XrbQueryVersionRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :major_version, :uint32,
          :minor_version, :uint32
    end

    class XrbQueryVersionCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_query_version, [:pointer,:uint8,:uint32,:uint32], XrbQueryVersionCookie
    class XrbQueryVersionReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :major_version, :uint32,
          :minor_version, :uint32
    end

    attach_function :xcb_query_version_reply, [:pointer, XrbQueryVersionCookie, :pointer], :pointer

        
    class XrbConnectRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :driver_name_length, :uint32,
          :device_name_length, :uint32,
          :pad2, [:uint8, 16],
          :alignment_pad_len, [:uint32 , 3]
    end

    class XrbConnectCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_connect, [:pointer,:uint8,:uint32,:uint32,:uint32,:uint32,:uint32], XrbConnectCookie
    class XrbConnectReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :driver_name_length, :uint32,
          :device_name_length, :uint32,
          :pad2, [:uint8, 16],
          :alignment_pad_len, [:uint32 , 3]
    end

    attach_function :xcb_connect_reply, [:pointer, XrbConnectCookie, :pointer], :pointer

        
    class XrbAuthenticateRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :authenticated, :uint32
    end

    class XrbAuthenticateCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_authenticate, [:pointer,:uint8,:uint32], XrbAuthenticateCookie
    class XrbAuthenticateReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :authenticated, :uint32
    end

    attach_function :xcb_authenticate_reply, [:pointer, XrbAuthenticateCookie, :pointer], :pointer

        
    class XrbCreateDrawableRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :drawable, :xrb_drawable_t
    end

    class XrbCreateDrawableCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_create_drawable_checked, [:pointer,:uint8,:xrb_drawable_t], XrbCreateDrawableCookie
    attach_function :xcb_create_drawable, [:pointer,:uint8,:xrb_drawable_t], XrbCreateDrawableCookie
    class XrbDestroyDrawableRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :drawable, :xrb_drawable_t
    end

    class XrbDestroyDrawableCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_destroy_drawable_checked, [:pointer,:uint8,:xrb_drawable_t], XrbDestroyDrawableCookie
    attach_function :xcb_destroy_drawable, [:pointer,:uint8,:xrb_drawable_t], XrbDestroyDrawableCookie
    class XrbGetBuffersRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :width, :uint32,
          :height, :uint32,
          :count, :uint32,
          :pad2, [:uint8, 12]
    end

    class XrbGetBuffersCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_buffers, [:pointer,:uint8,:uint32,:uint32,:uint32,:uint32], XrbGetBuffersCookie
    class XrbGetBuffersReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :width, :uint32,
          :height, :uint32,
          :count, :uint32,
          :pad2, [:uint8, 12]
    end

    attach_function :xcb_get_buffers_reply, [:pointer, XrbGetBuffersCookie, :pointer], :pointer

        
    class XrbCopyRegionRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16
    end

    class XrbCopyRegionCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_copy_region, [:pointer,:uint8], XrbCopyRegionCookie
    class XrbCopyRegionReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32
    end

    attach_function :xcb_copy_region_reply, [:pointer, XrbCopyRegionCookie, :pointer], :pointer

        
    class XrbGetBuffersWithFormatRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :width, :uint32,
          :height, :uint32,
          :count, :uint32,
          :pad2, [:uint8, 12]
    end

    class XrbGetBuffersWithFormatCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_buffers_with_format, [:pointer,:uint8,:uint32,:uint32,:uint32,:uint32], XrbGetBuffersWithFormatCookie
    class XrbGetBuffersWithFormatReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :width, :uint32,
          :height, :uint32,
          :count, :uint32,
          :pad2, [:uint8, 12]
    end

    attach_function :xcb_get_buffers_with_format_reply, [:pointer, XrbGetBuffersWithFormatCookie, :pointer], :pointer

        
    class XrbSwapBuffersRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :swap_hi, :uint32,
          :swap_lo, :uint32
    end

    class XrbSwapBuffersCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_swap_buffers, [:pointer,:uint8,:uint32,:uint32], XrbSwapBuffersCookie
    class XrbSwapBuffersReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :swap_hi, :uint32,
          :swap_lo, :uint32
    end

    attach_function :xcb_swap_buffers_reply, [:pointer, XrbSwapBuffersCookie, :pointer], :pointer

        
    class XrbGetMSCRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :ust_hi, :uint32,
          :ust_lo, :uint32,
          :msc_hi, :uint32,
          :msc_lo, :uint32,
          :sbc_hi, :uint32,
          :sbc_lo, :uint32
    end

    class XrbGetMSCCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_msc, [:pointer,:uint8,:uint32,:uint32,:uint32,:uint32,:uint32,:uint32], XrbGetMSCCookie
    class XrbGetMSCReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :ust_hi, :uint32,
          :ust_lo, :uint32,
          :msc_hi, :uint32,
          :msc_lo, :uint32,
          :sbc_hi, :uint32,
          :sbc_lo, :uint32
    end

    attach_function :xcb_get_msc_reply, [:pointer, XrbGetMSCCookie, :pointer], :pointer

        
    class XrbWaitMSCRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :ust_hi, :uint32,
          :ust_lo, :uint32,
          :msc_hi, :uint32,
          :msc_lo, :uint32,
          :sbc_hi, :uint32,
          :sbc_lo, :uint32
    end

    class XrbWaitMSCCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_wait_msc, [:pointer,:uint8,:uint32,:uint32,:uint32,:uint32,:uint32,:uint32], XrbWaitMSCCookie
    class XrbWaitMSCReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :ust_hi, :uint32,
          :ust_lo, :uint32,
          :msc_hi, :uint32,
          :msc_lo, :uint32,
          :sbc_hi, :uint32,
          :sbc_lo, :uint32
    end

    attach_function :xcb_wait_msc_reply, [:pointer, XrbWaitMSCCookie, :pointer], :pointer

        
    class XrbWaitSBCRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :ust_hi, :uint32,
          :ust_lo, :uint32,
          :msc_hi, :uint32,
          :msc_lo, :uint32,
          :sbc_hi, :uint32,
          :sbc_lo, :uint32
    end

    class XrbWaitSBCCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_wait_sbc, [:pointer,:uint8,:uint32,:uint32,:uint32,:uint32,:uint32,:uint32], XrbWaitSBCCookie
    class XrbWaitSBCReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :ust_hi, :uint32,
          :ust_lo, :uint32,
          :msc_hi, :uint32,
          :msc_lo, :uint32,
          :sbc_hi, :uint32,
          :sbc_lo, :uint32
    end

    attach_function :xcb_wait_sbc_reply, [:pointer, XrbWaitSBCCookie, :pointer], :pointer

        
    class XrbSwapIntervalRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :drawable, :xrb_drawable_t,
          :interval, :uint32
    end

    class XrbSwapIntervalCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_swap_interval_checked, [:pointer,:uint8,:xrb_drawable_t,:uint32], XrbSwapIntervalCookie
    attach_function :xcb_swap_interval, [:pointer,:uint8,:xrb_drawable_t,:uint32], XrbSwapIntervalCookie
  end
end
