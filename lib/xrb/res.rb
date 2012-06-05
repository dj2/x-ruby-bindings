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
    class Client < FFI::Struct
      layout \
          :resource_base, :uint32,
          :resource_mask, :uint32
    end

    class ClientIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_client_next, [:pointer], :void
    attach_function :xcb_client_end, [:pointer], GenericIterator
    class Type < FFI::Struct
      layout \
          :resource_type, :atom_t,
          :count, :uint32
    end

    class TypeIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_type_next, [:pointer], :void
    attach_function :xcb_type_end, [:pointer], GenericIterator
    class QueryVersionRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :server_major, :uint16,
          :server_minor, :uint16
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
          :server_major, :uint16,
          :server_minor, :uint16
    end

    attach_function :xcb_query_version_reply, [:pointer, QueryVersionCookie, :pointer], :pointer

        
    class QueryClientsRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :num_clients, :uint32,
          :pad2, [:uint8, 20]
    end

    class QueryClientsCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_query_clients, [:pointer,:uint8,:uint32,:uint32], QueryClientsCookie
    class QueryClientsReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :num_clients, :uint32,
          :pad2, [:uint8, 20]
    end

    attach_function :xcb_query_clients_reply, [:pointer, QueryClientsCookie, :pointer], :pointer

        
    class QueryClientResourcesRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :num_types, :uint32,
          :pad2, [:uint8, 20]
    end

    class QueryClientResourcesCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_query_client_resources, [:pointer,:uint8,:uint32,:uint32], QueryClientResourcesCookie
    class QueryClientResourcesReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :num_types, :uint32,
          :pad2, [:uint8, 20]
    end

    attach_function :xcb_query_client_resources_reply, [:pointer, QueryClientResourcesCookie, :pointer], :pointer

        
    class QueryClientPixmapBytesRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :bytes, :uint32,
          :bytes_overflow, :uint32
    end

    class QueryClientPixmapBytesCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_query_client_pixmap_bytes, [:pointer,:uint8,:uint32,:uint32], QueryClientPixmapBytesCookie
    class QueryClientPixmapBytesReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :bytes, :uint32,
          :bytes_overflow, :uint32
    end

    attach_function :xcb_query_client_pixmap_bytes_reply, [:pointer, QueryClientPixmapBytesCookie, :pointer], :pointer

        
  end
end
