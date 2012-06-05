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
    XRB_DATATYPE_UNMODIFIED = 1
    XRB_DATATYPE_MODIFIED = 2
    class XrbEvent < FFI::Struct
      layout \
          :pad1, [:uint8, 32]
    end

    class XrbEventIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_event_next, [:pointer], :void
    attach_function :xcb_event_end, [:pointer], XrbGenericIterator
    class XrbQueryVersionRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :server_major_version, :uint16,
          :server_minor_version, :uint16,
          :pad2, [:uint8, 20]
    end

    class XrbQueryVersionCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_query_version, [:pointer,:uint8,:uint16,:uint16], XrbQueryVersionCookie
    class XrbQueryVersionReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :server_major_version, :uint16,
          :server_minor_version, :uint16,
          :pad2, [:uint8, 20]
    end

    attach_function :xcb_query_version_reply, [:pointer, XrbQueryVersionCookie, :pointer], :pointer

        
    class XrbStartRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :pad2, [:uint8, 24]
    end

    class XrbStartCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_start, [:pointer,:uint8], XrbStartCookie
    class XrbStartReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :pad2, [:uint8, 24]
    end

    attach_function :xcb_start_reply, [:pointer, XrbStartCookie, :pointer], :pointer

        
    class XrbEndRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :pad2, [:uint8, 24]
    end

    class XrbEndCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_end, [:pointer,:uint8], XrbEndCookie
    class XrbEndReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :pad2, [:uint8, 24]
    end

    attach_function :xcb_end_reply, [:pointer, XrbEndCookie, :pointer], :pointer

        
    class XrbSendRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :pad2, [:uint8, 24]
    end

    class XrbSendCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_send, [:pointer,:uint8], XrbSendCookie
    class XrbSendReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :pad2, [:uint8, 24]
    end

    attach_function :xcb_send_reply, [:pointer, XrbSendCookie, :pointer], :pointer

        
    class XrbSelectInputRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :pad2, [:uint8, 24]
    end

    class XrbSelectInputCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_select_input, [:pointer,:uint8], XrbSelectInputCookie
    class XrbSelectInputReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :pad2, [:uint8, 24]
    end

    attach_function :xcb_select_input_reply, [:pointer, XrbSelectInputCookie, :pointer], :pointer

        
  end
end
