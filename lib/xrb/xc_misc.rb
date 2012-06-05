#
# This file auto-generated. Do not edit.
#

require 'ffi'
class Xrb
  class XCMisc
    extend FFI::Library
    ffi_lib 'xc_misc'
    MAJOR_VERSION = 1
    MINOR_VERSION = 1
    class XrbGetVersionRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :server_major_version, :uint16,
          :server_minor_version, :uint16
    end

    class XrbGetVersionCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_version, [:pointer,:uint8,:uint16,:uint16], XrbGetVersionCookie
    class XrbGetVersionReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :server_major_version, :uint16,
          :server_minor_version, :uint16
    end

    attach_function :xcb_get_version_reply, [:pointer, XrbGetVersionCookie, :pointer], :pointer

        
    class XrbGetXIDRangeRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :start_id, :uint32,
          :count, :uint32
    end

    class XrbGetXIDRangeCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_xid_range, [:pointer,:uint8,:uint32,:uint32], XrbGetXIDRangeCookie
    class XrbGetXIDRangeReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :start_id, :uint32,
          :count, :uint32
    end

    attach_function :xcb_get_xid_range_reply, [:pointer, XrbGetXIDRangeCookie, :pointer], :pointer

        
    class XrbGetXIDListRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :ids_len, :uint32,
          :pad2, [:uint8, 20]
    end

    class XrbGetXIDListCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_xid_list, [:pointer,:uint8,:uint32,:uint32], XrbGetXIDListCookie
    class XrbGetXIDListReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :ids_len, :uint32,
          :pad2, [:uint8, 20]
    end

    attach_function :xcb_get_xid_list_reply, [:pointer, XrbGetXIDListCookie, :pointer], :pointer

        
  end
end
