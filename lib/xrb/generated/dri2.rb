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
    ATTACHMENT_BUFFER_FRONT_LEFT = 1
    ATTACHMENT_BUFFER_BACK_LEFT = 2
    ATTACHMENT_BUFFER_FRONT_RIGHT = 3
    ATTACHMENT_BUFFER_BACK_RIGHT = 4
    ATTACHMENT_BUFFER_DEPTH = 5
    ATTACHMENT_BUFFER_STENCIL = 6
    ATTACHMENT_BUFFER_ACCUM = 7
    ATTACHMENT_BUFFER_FAKE_FRONT_LEFT = 8
    ATTACHMENT_BUFFER_FAKE_FRONT_RIGHT = 9
    ATTACHMENT_BUFFER_DEPTH_STENCIL = 10
    ATTACHMENT_BUFFER_HIZ = 11
    DRIVER_TYPE_DRI = 1
    DRIVER_TYPE_VDPAU = 2
    EVENT_TYPE_EXCHANGE_COMPLETE = 1
    EVENT_TYPE_BLIT_COMPLETE = 2
    EVENT_TYPE_FLIP_COMPLETE = 3
    class DRI2Buffer < FFI::Struct
      layout \
          :attachment, :uint32,
          :name, :uint32,
          :pitch, :uint32,
          :cpp, :uint32,
          :flags, :uint32
    end

    class DRI2BufferIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_dri2buffer_next, [:pointer], :void
    attach_function :xcb_dri2buffer_end, [:pointer], GenericIterator
    class AttachFormat < FFI::Struct
      layout \
          :attachment, :uint32,
          :format, :uint32
    end

    class AttachFormatIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_attach_format_next, [:pointer], :void
    attach_function :xcb_attach_format_end, [:pointer], GenericIterator
    class BufferSwapCompleteEvent < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :event_type, :uint16,
          :pad2, [:uint8, 2],
          :drawable, :drawable_t,
          :ust_hi, :uint32,
          :ust_lo, :uint32,
          :msc_hi, :uint32,
          :msc_lo, :uint32,
          :sbc, :uint32
    end

    class InvalidateBuffersEvent < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :drawable, :drawable_t
    end

    class QueryVersionRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :major_version, :uint32,
          :minor_version, :uint32
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
          :minor_version, :uint32
    end

    attach_function :xcb_query_version_reply, [:pointer, QueryVersionCookie, :pointer], :pointer

        
    class ConnectRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :driver_name_length, :uint32,
          :device_name_length, :uint32,
          :pad2, [:uint8, 16],
          :alignment_pad_len, [:uint32 , 3]
    end

    class ConnectCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_connect, [:pointer,:uint8,:uint32,:uint32,:uint32,:uint32,:uint32], ConnectCookie
    class ConnectReply < FFI::Struct
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

    attach_function :xcb_connect_reply, [:pointer, ConnectCookie, :pointer], :pointer

        
    class AuthenticateRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :authenticated, :uint32
    end

    class AuthenticateCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_authenticate, [:pointer,:uint8,:uint32], AuthenticateCookie
    class AuthenticateReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :authenticated, :uint32
    end

    attach_function :xcb_authenticate_reply, [:pointer, AuthenticateCookie, :pointer], :pointer

        
    class CreateDrawableRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :drawable, :drawable_t
    end

    class CreateDrawableCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_create_drawable_checked, [:pointer,:uint8,:drawable_t], CreateDrawableCookie
    attach_function :xcb_create_drawable, [:pointer,:uint8,:drawable_t], CreateDrawableCookie
    class DestroyDrawableRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :drawable, :drawable_t
    end

    class DestroyDrawableCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_destroy_drawable_checked, [:pointer,:uint8,:drawable_t], DestroyDrawableCookie
    attach_function :xcb_destroy_drawable, [:pointer,:uint8,:drawable_t], DestroyDrawableCookie
    class GetBuffersRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :width, :uint32,
          :height, :uint32,
          :count, :uint32,
          :pad2, [:uint8, 12]
    end

    class GetBuffersCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_buffers, [:pointer,:uint8,:uint32,:uint32,:uint32,:uint32], GetBuffersCookie
    class GetBuffersReply < FFI::Struct
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

    attach_function :xcb_get_buffers_reply, [:pointer, GetBuffersCookie, :pointer], :pointer

        
    class CopyRegionRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16
    end

    class CopyRegionCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_copy_region, [:pointer,:uint8], CopyRegionCookie
    class CopyRegionReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32
    end

    attach_function :xcb_copy_region_reply, [:pointer, CopyRegionCookie, :pointer], :pointer

        
    class GetBuffersWithFormatRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :width, :uint32,
          :height, :uint32,
          :count, :uint32,
          :pad2, [:uint8, 12]
    end

    class GetBuffersWithFormatCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_buffers_with_format, [:pointer,:uint8,:uint32,:uint32,:uint32,:uint32], GetBuffersWithFormatCookie
    class GetBuffersWithFormatReply < FFI::Struct
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

    attach_function :xcb_get_buffers_with_format_reply, [:pointer, GetBuffersWithFormatCookie, :pointer], :pointer

        
    class SwapBuffersRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :swap_hi, :uint32,
          :swap_lo, :uint32
    end

    class SwapBuffersCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_swap_buffers, [:pointer,:uint8,:uint32,:uint32], SwapBuffersCookie
    class SwapBuffersReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :swap_hi, :uint32,
          :swap_lo, :uint32
    end

    attach_function :xcb_swap_buffers_reply, [:pointer, SwapBuffersCookie, :pointer], :pointer

        
    class GetMSCRequest < FFI::Struct
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

    class GetMSCCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_msc, [:pointer,:uint8,:uint32,:uint32,:uint32,:uint32,:uint32,:uint32], GetMSCCookie
    class GetMSCReply < FFI::Struct
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

    attach_function :xcb_get_msc_reply, [:pointer, GetMSCCookie, :pointer], :pointer

        
    class WaitMSCRequest < FFI::Struct
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

    class WaitMSCCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_wait_msc, [:pointer,:uint8,:uint32,:uint32,:uint32,:uint32,:uint32,:uint32], WaitMSCCookie
    class WaitMSCReply < FFI::Struct
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

    attach_function :xcb_wait_msc_reply, [:pointer, WaitMSCCookie, :pointer], :pointer

        
    class WaitSBCRequest < FFI::Struct
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

    class WaitSBCCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_wait_sbc, [:pointer,:uint8,:uint32,:uint32,:uint32,:uint32,:uint32,:uint32], WaitSBCCookie
    class WaitSBCReply < FFI::Struct
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

    attach_function :xcb_wait_sbc_reply, [:pointer, WaitSBCCookie, :pointer], :pointer

        
    class SwapIntervalRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :drawable, :drawable_t,
          :interval, :uint32
    end

    class SwapIntervalCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_swap_interval_checked, [:pointer,:uint8,:drawable_t,:uint32], SwapIntervalCookie
    attach_function :xcb_swap_interval, [:pointer,:uint8,:drawable_t,:uint32], SwapIntervalCookie
  end
end
