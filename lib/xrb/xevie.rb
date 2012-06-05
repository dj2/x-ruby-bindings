#
# This file auto-generated. Do not edit.
#

require 'ffi'
class Xrb
  class Xevie
    extend FFI::Library
    ffi_lib 'xevie'
    MAJOR_VERSION = 1
    MINOR_VERSION = 0
    DATATYPE_UNMODIFIED = 1
    DATATYPE_MODIFIED = 2
    class Event < FFI::Struct
      layout \
          :pad1, [:uint8, 32]
    end

    class EventIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_event_next, [:pointer], :void
    attach_function :xcb_event_end, [:pointer], GenericIterator
    class QueryVersionRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :server_major_version, :uint16,
          :server_minor_version, :uint16,
          :pad2, [:uint8, 20]
    end

    class QueryVersionCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_query_version, [:pointer,:uint8,:uint16,:uint16], QueryVersionCookie
    class QueryVersionReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :server_major_version, :uint16,
          :server_minor_version, :uint16,
          :pad2, [:uint8, 20]
    end

    attach_function :xcb_query_version_reply, [:pointer, QueryVersionCookie, :pointer], :pointer

        
    class StartRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :pad2, [:uint8, 24]
    end

    class StartCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_start, [:pointer,:uint8], StartCookie
    class StartReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :pad2, [:uint8, 24]
    end

    attach_function :xcb_start_reply, [:pointer, StartCookie, :pointer], :pointer

        
    class EndRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :pad2, [:uint8, 24]
    end

    class EndCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_end, [:pointer,:uint8], EndCookie
    class EndReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :pad2, [:uint8, 24]
    end

    attach_function :xcb_end_reply, [:pointer, EndCookie, :pointer], :pointer

        
    class SendRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :pad2, [:uint8, 24]
    end

    class SendCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_send, [:pointer,:uint8], SendCookie
    class SendReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :pad2, [:uint8, 24]
    end

    attach_function :xcb_send_reply, [:pointer, SendCookie, :pointer], :pointer

        
    class SelectInputRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :pad2, [:uint8, 24]
    end

    class SelectInputCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_select_input, [:pointer,:uint8], SelectInputCookie
    class SelectInputReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :pad2, [:uint8, 24]
    end

    attach_function :xcb_select_input_reply, [:pointer, SelectInputCookie, :pointer], :pointer

        
  end
end
