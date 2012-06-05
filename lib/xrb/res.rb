#
# This file auto-generated. Do not edit.
#

require 'ffi'
require 'xrb/xproto'
class Xrb
  class Res
    extend FFI::Library
    ffi_lib 'res'
    MAJOR_VERSION = 1
    MINOR_VERSION = 0
    class XrbClient < FFI::Struct
      layout \
          :resource_base, :uint32,
          :resource_mask, :uint32
    end

    class XrbClientIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_client_next, [:pointer], :void
    attach_function :xcb_client_end, [:pointer], XrbGenericIterator
    class XrbType < FFI::Struct
      layout \
          :resource_type, :xrb_atom_t,
          :count, :uint32
    end

    class XrbTypeIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_type_next, [:pointer], :void
    attach_function :xcb_type_end, [:pointer], XrbGenericIterator
    class XrbQueryVersionRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :server_major, :uint16,
          :server_minor, :uint16
    end

    class XrbQueryVersionCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_query_version, [:pointer,:uint8,:uint8,:uint16,:uint16,:uint16], XrbQueryVersionCookie
    class XrbQueryVersionReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :server_major, :uint16,
          :server_minor, :uint16
    end

    attach_function :xcb_query_version_reply, [:pointer, XrbQueryVersionCookie, :pointer], :pointer

        
    class XrbQueryClientsRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :num_clients, :uint32,
          :pad2, [:uint8, 20]
    end

    class XrbQueryClientsCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_query_clients, [:pointer,:uint8,:uint8,:uint16,:uint32,:uint32], XrbQueryClientsCookie
    class XrbQueryClientsReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :num_clients, :uint32,
          :pad2, [:uint8, 20]
    end

    attach_function :xcb_query_clients_reply, [:pointer, XrbQueryClientsCookie, :pointer], :pointer

        
    class XrbQueryClientResourcesRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :num_types, :uint32,
          :pad2, [:uint8, 20]
    end

    class XrbQueryClientResourcesCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_query_client_resources, [:pointer,:uint8,:uint8,:uint16,:uint32,:uint32], XrbQueryClientResourcesCookie
    class XrbQueryClientResourcesReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :num_types, :uint32,
          :pad2, [:uint8, 20]
    end

    attach_function :xcb_query_client_resources_reply, [:pointer, XrbQueryClientResourcesCookie, :pointer], :pointer

        
    class XrbQueryClientPixmapBytesRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :bytes, :uint32,
          :bytes_overflow, :uint32
    end

    class XrbQueryClientPixmapBytesCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_query_client_pixmap_bytes, [:pointer,:uint8,:uint8,:uint16,:uint32,:uint32], XrbQueryClientPixmapBytesCookie
    class XrbQueryClientPixmapBytesReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :bytes, :uint32,
          :bytes_overflow, :uint32
    end

    attach_function :xcb_query_client_pixmap_bytes_reply, [:pointer, XrbQueryClientPixmapBytesCookie, :pointer], :pointer

        
  end
end
