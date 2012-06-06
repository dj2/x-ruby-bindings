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
    class GetVersionRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :server_major_version, :uint16,
          :server_minor_version, :uint16
    end

    class GetVersionCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :get_version, :xcb_get_version, [:pointer,:uint8,:uint16,:uint16], GetVersionCookie
    class GetVersionReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :server_major_version, :uint16,
          :server_minor_version, :uint16
    end

    attach_function :get_version_reply, :xcb_get_version_reply, [:pointer, GetVersionCookie, :pointer], :pointer

        
    class GetXIDRangeRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :start_id, :uint32,
          :count, :uint32
    end

    class GetXIDRangeCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :get_xid_range, :xcb_get_xid_range, [:pointer,:uint8,:uint32,:uint32], GetXIDRangeCookie
    class GetXIDRangeReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :start_id, :uint32,
          :count, :uint32
    end

    attach_function :get_xid_range_reply, :xcb_get_xid_range_reply, [:pointer, GetXIDRangeCookie, :pointer], :pointer

        
    class GetXIDListRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :ids_len, :uint32,
          :pad2, [:uint8, 20]
    end

    class GetXIDListCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :get_xid_list, :xcb_get_xid_list, [:pointer,:uint8,:uint32,:uint32], GetXIDListCookie
    class GetXIDListReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :ids_len, :uint32,
          :pad2, [:uint8, 20]
    end

    attach_function :get_xid_list_reply, :xcb_get_xid_list_reply, [:pointer, GetXIDListCookie, :pointer], :pointer

        
  end
end
