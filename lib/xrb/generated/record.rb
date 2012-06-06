#
# This file auto-generated. Do not edit.
#

require 'ffi'
class Xrb
  class Record
    extend FFI::Library
    ffi_lib 'record'
    MAJOR_VERSION = 1
    MINOR_VERSION = 13
    typedef :uint32, :context_t
    class ContextIterator < FFI::Struct
      layout \
          :data, :window_t,
          :rem, :int,
          :indent, :int
    end
    attach_function :context_next, :xcb_context_next, [:pointer], :void
    attach_function :context_end, :xcb_context_end, [:pointer], GenericIterator
    class Range8 < FFI::Struct
      layout \
          :first, :uint8,
          :last, :uint8
    end

    class Range8Iterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :range_8_next, :xcb_range_8_next, [:pointer], :void
    attach_function :range_8_end, :xcb_range_8_end, [:pointer], GenericIterator
    class Range16 < FFI::Struct
      layout \
          :first, :uint16,
          :last, :uint16
    end

    class Range16Iterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :range_16_next, :xcb_range_16_next, [:pointer], :void
    attach_function :range_16_end, :xcb_range_16_end, [:pointer], GenericIterator
    class ExtRange < FFI::Struct
      layout \
          :major, Range8,
          :minor, Range16
    end

    class ExtRangeIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :ext_range_next, :xcb_ext_range_next, [:pointer], :void
    attach_function :ext_range_end, :xcb_ext_range_end, [:pointer], GenericIterator
    class Range < FFI::Struct
      layout \
          :core_requests, Range8,
          :core_replies, Range8,
          :ext_requests, ExtRange,
          :ext_replies, ExtRange,
          :delivered_events, Range8,
          :device_events, Range8,
          :errors, Range8,
          :client_started, :bool,
          :client_died, :bool
    end

    class RangeIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :range_next, :xcb_range_next, [:pointer], :void
    attach_function :range_end, :xcb_range_end, [:pointer], GenericIterator
    typedef :uint8, :elementheader_t
    class ElementHeaderIterator < FFI::Struct
      layout \
          :data, :window_t,
          :rem, :int,
          :indent, :int
    end
    attach_function :element_header_next, :xcb_element_header_next, [:pointer], :void
    attach_function :element_header_end, :xcb_element_header_end, [:pointer], GenericIterator
    H_TYPE_FROM_SERVER_TIME = 1 << 0
    H_TYPE_FROM_CLIENT_TIME = 1 << 1
    H_TYPE_FROM_CLIENT_SEQUENCE = 1 << 2
    typedef :uint32, :clientspec_t
    class ClientSpecIterator < FFI::Struct
      layout \
          :data, :window_t,
          :rem, :int,
          :indent, :int
    end
    attach_function :client_spec_next, :xcb_client_spec_next, [:pointer], :void
    attach_function :client_spec_end, :xcb_client_spec_end, [:pointer], GenericIterator
    CS_CURRENT_CLIENTS = 1
    CS_FUTURE_CLIENTS = 2
    CS_ALL_CLIENTS = 3
    class ClientInfo < FFI::Struct
      layout \
          :client_resource, :clientspec_t,
          :num_ranges, :uint32
    end

    class ClientInfoIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :client_info_next, :xcb_client_info_next, [:pointer], :void
    attach_function :client_info_end, :xcb_client_info_end, [:pointer], GenericIterator
    attach_function :client_info_sizeof, :xcb_client_info_sizeof, [:pointer], :int
    attach_function :client_info_ranges_iterator, :xcb_client_info_ranges_iterator, [:pointer], ClientInfoIterator
    attach_function :client_info_ranges_length, :xcb_client_info_ranges_length, [:pointer], :int
    class BadContextError < FFI::Struct
      layout \
          :response_type, :uint8,
          :error_code, :uint8,
          :sequence, :uint16,
          :invalid_record, :uint32
    end

    class QueryVersionRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :major_version, :uint16,
          :minor_version, :uint16
    end

    class QueryVersionCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :query_version, :xcb_query_version, [:pointer,:uint8,:uint16,:uint16], QueryVersionCookie
    class QueryVersionReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :major_version, :uint16,
          :minor_version, :uint16
    end

    attach_function :query_version_reply, :xcb_query_version_reply, [:pointer, QueryVersionCookie, :pointer], :pointer

        
    class CreateContextRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :context, :context_t,
          :element_header, :elementheader_t,
          :pad1, [:uint8, 3],
          :num_client_specs, :uint32,
          :num_ranges, :uint32
    end

    class CreateContextCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :create_context_checked, :xcb_create_context_checked, [:pointer,:uint8,:context_t,:elementheader_t,:uint32,:uint32,:uint32,:uint32], CreateContextCookie
    attach_function :create_context, :xcb_create_context, [:pointer,:uint8,:context_t,:elementheader_t,:uint32,:uint32,:uint32,:uint32], CreateContextCookie
    class RegisterClientsRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :context, :context_t,
          :element_header, :elementheader_t,
          :pad1, [:uint8, 3],
          :num_client_specs, :uint32,
          :num_ranges, :uint32
    end

    class RegisterClientsCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :register_clients_checked, :xcb_register_clients_checked, [:pointer,:uint8,:context_t,:elementheader_t,:uint32,:uint32,:uint32,:uint32], RegisterClientsCookie
    attach_function :register_clients, :xcb_register_clients, [:pointer,:uint8,:context_t,:elementheader_t,:uint32,:uint32,:uint32,:uint32], RegisterClientsCookie
    class UnregisterClientsRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :context, :context_t,
          :num_client_specs, :uint32
    end

    class UnregisterClientsCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :unregister_clients_checked, :xcb_unregister_clients_checked, [:pointer,:uint8,:context_t,:uint32,:uint32], UnregisterClientsCookie
    attach_function :unregister_clients, :xcb_unregister_clients, [:pointer,:uint8,:context_t,:uint32,:uint32], UnregisterClientsCookie
    class GetContextRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :element_header, :elementheader_t,
          :pad1, [:uint8, 3],
          :num_intercepted_clients, :uint32,
          :pad2, [:uint8, 16]
    end

    class GetContextCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :get_context, :xcb_get_context, [:pointer,:uint8,:elementheader_t,:uint32,:uint32], GetContextCookie
    class GetContextReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :enabled, :bool,
          :sequence, :uint16,
          :length, :uint32,
          :element_header, :elementheader_t,
          :pad1, [:uint8, 3],
          :num_intercepted_clients, :uint32,
          :pad2, [:uint8, 16]
    end

    attach_function :get_context_reply, :xcb_get_context_reply, [:pointer, GetContextCookie, :pointer], :pointer

        
    class EnableContextRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :element_header, :elementheader_t,
          :client_swapped, :bool,
          :pad1, [:uint8, 2],
          :xid_base, :uint32,
          :server_time, :uint32,
          :rec_sequence_num, :uint32,
          :pad2, [:uint8, 8]
    end

    class EnableContextCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :enable_context, :xcb_enable_context, [:pointer,:uint8,:elementheader_t,:bool,:uint32,:uint32,:uint32,:uint32], EnableContextCookie
    class EnableContextReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :category, :uint8,
          :sequence, :uint16,
          :length, :uint32,
          :element_header, :elementheader_t,
          :client_swapped, :bool,
          :pad1, [:uint8, 2],
          :xid_base, :uint32,
          :server_time, :uint32,
          :rec_sequence_num, :uint32,
          :pad2, [:uint8, 8]
    end

    attach_function :enable_context_reply, :xcb_enable_context_reply, [:pointer, EnableContextCookie, :pointer], :pointer

        
    class DisableContextRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :context, :context_t
    end

    class DisableContextCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :disable_context_checked, :xcb_disable_context_checked, [:pointer,:uint8,:context_t], DisableContextCookie
    attach_function :disable_context, :xcb_disable_context, [:pointer,:uint8,:context_t], DisableContextCookie
    class FreeContextRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :context, :context_t
    end

    class FreeContextCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :free_context_checked, :xcb_free_context_checked, [:pointer,:uint8,:context_t], FreeContextCookie
    attach_function :free_context, :xcb_free_context, [:pointer,:uint8,:context_t], FreeContextCookie
  end
end
