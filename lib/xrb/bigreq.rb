#
# This file auto-generated. Do not edit.
#

require 'ffi'
class Xrb
  class BigRequests
    extend FFI::Library
    ffi_lib 'bigreq'
    MAJOR_VERSION = 0
    MINOR_VERSION = 0
    class XrbEnableRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :maximum_request_length, :uint32
    end

    class XrbEnableCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_enable, [:pointer,:uint8,:uint32], XrbEnableCookie
    class XrbEnableReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :maximum_request_length, :uint32
    end

    attach_function :xcb_enable_reply, [:pointer, XrbEnableCookie, :pointer], :pointer

        
  end
end
