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
    typedef :uint32, :xrb_context_t
    class XrbContextIterator < FFI::Struct
      layout \
          :data, :xrb_window_t,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_context_next, [:pointer], :void
    attach_function :xcb_context_end, [:pointer], XrbGenericIterator
    class XrbRange8 < FFI::Struct
      layout \
          :first, :uint8,
          :last, :uint8
    end

    class XrbRange8Iterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_range_8_next, [:pointer], :void
    attach_function :xcb_range_8_end, [:pointer], XrbGenericIterator
    class XrbRange16 < FFI::Struct
      layout \
          :first, :uint16,
          :last, :uint16
    end

    class XrbRange16Iterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_range_16_next, [:pointer], :void
    attach_function :xcb_range_16_end, [:pointer], XrbGenericIterator
    class XrbExtRange < FFI::Struct
      layout \
          :major, XrbRange8,
          :minor, XrbRange16
    end

    class XrbExtRangeIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_ext_range_next, [:pointer], :void
    attach_function :xcb_ext_range_end, [:pointer], XrbGenericIterator
    class XrbRange < FFI::Struct
      layout \
          :core_requests, XrbRange8,
          :core_replies, XrbRange8,
          :ext_requests, XrbExtRange,
          :ext_replies, XrbExtRange,
          :delivered_events, XrbRange8,
          :device_events, XrbRange8,
          :errors, XrbRange8,
          :client_started, :bool,
          :client_died, :bool
    end

    class XrbRangeIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_range_next, [:pointer], :void
    attach_function :xcb_range_end, [:pointer], XrbGenericIterator
    typedef :uint8, :xrb_elementheader_t
    class XrbElementHeaderIterator < FFI::Struct
      layout \
          :data, :xrb_window_t,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_element_header_next, [:pointer], :void
    attach_function :xcb_element_header_end, [:pointer], XrbGenericIterator
    enum :xrb_h_type_t, [
        :xrb_h_type_from_server_time, 1 << 0,
        :xrb_h_type_from_client_time, 1 << 1,
        :xrb_h_type_from_client_sequence, 1 << 2
    ]
    typedef :uint32, :xrb_clientspec_t
    class XrbClientSpecIterator < FFI::Struct
      layout \
          :data, :xrb_window_t,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_client_spec_next, [:pointer], :void
    attach_function :xcb_client_spec_end, [:pointer], XrbGenericIterator
    enum :xrb_cs_t, [
        :xrb_cs_current_clients, 1,
        :xrb_cs_future_clients, 2,
        :xrb_cs_all_clients, 3
    ]
    class XrbClientInfo < FFI::Struct
      layout \
          :client_resource, :xrb_clientspec_t,
          :num_ranges, :uint32
    end

    class XrbClientInfoIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_client_info_next, [:pointer], :void
    attach_function :xcb_client_info_end, [:pointer], XrbGenericIterator
    attach_function :xcb_client_info_sizeof, [:pointer], :int
    attach_function :xcb_client_info_ranges_length, [:pointer], :int
    class XrbBadContextError < FFI::Struct
      layout \
          :response_type, :uint8,
          :error_code, :uint8,
          :sequence, :uint16,
          :invalid_record, :uint32
    end

    class XrbQueryVersionRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :major_version, :uint16,
          :minor_version, :uint16
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
          :major_version, :uint16,
          :minor_version, :uint16
    end

    attach_function :xcb_query_version_reply, [:pointer, XrbQueryVersionCookie, :pointer], :pointer

        
    class XrbCreateContextRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :context, :xrb_context_t,
          :element_header, :xrb_elementheader_t,
          :pad1, [:uint8, 3],
          :num_client_specs, :uint32,
          :num_ranges, :uint32
    end

    class XrbCreateContextCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_create_context_checked, [:pointer,:uint8,:uint8,:uint16,:xrb_context_t,:xrb_elementheader_t,:uint32,:uint32,:uint32,:uint32], XrbCreateContextCookie
    attach_function :xcb_create_context, [:pointer,:uint8,:uint8,:uint16,:xrb_context_t,:xrb_elementheader_t,:uint32,:uint32,:uint32,:uint32], XrbCreateContextCookie
    class XrbRegisterClientsRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :context, :xrb_context_t,
          :element_header, :xrb_elementheader_t,
          :pad1, [:uint8, 3],
          :num_client_specs, :uint32,
          :num_ranges, :uint32
    end

    class XrbRegisterClientsCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_register_clients_checked, [:pointer,:uint8,:uint8,:uint16,:xrb_context_t,:xrb_elementheader_t,:uint32,:uint32,:uint32,:uint32], XrbRegisterClientsCookie
    attach_function :xcb_register_clients, [:pointer,:uint8,:uint8,:uint16,:xrb_context_t,:xrb_elementheader_t,:uint32,:uint32,:uint32,:uint32], XrbRegisterClientsCookie
    class XrbUnregisterClientsRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :context, :xrb_context_t,
          :num_client_specs, :uint32
    end

    class XrbUnregisterClientsCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_unregister_clients_checked, [:pointer,:uint8,:uint8,:uint16,:xrb_context_t,:uint32,:uint32], XrbUnregisterClientsCookie
    attach_function :xcb_unregister_clients, [:pointer,:uint8,:uint8,:uint16,:xrb_context_t,:uint32,:uint32], XrbUnregisterClientsCookie
    class XrbGetContextRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :element_header, :xrb_elementheader_t,
          :pad1, [:uint8, 3],
          :num_intercepted_clients, :uint32,
          :pad2, [:uint8, 16]
    end

    class XrbGetContextCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_context, [:pointer,:uint8,:uint8,:uint16,:xrb_elementheader_t,:uint32,:uint32], XrbGetContextCookie
    class XrbGetContextReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :enabled, :bool,
          :sequence, :uint16,
          :length, :uint32,
          :element_header, :xrb_elementheader_t,
          :pad1, [:uint8, 3],
          :num_intercepted_clients, :uint32,
          :pad2, [:uint8, 16]
    end

    attach_function :xcb_get_context_reply, [:pointer, XrbGetContextCookie, :pointer], :pointer

        
    class XrbEnableContextRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :element_header, :xrb_elementheader_t,
          :client_swapped, :bool,
          :pad1, [:uint8, 2],
          :xid_base, :uint32,
          :server_time, :uint32,
          :rec_sequence_num, :uint32,
          :pad2, [:uint8, 8]
    end

    class XrbEnableContextCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_enable_context, [:pointer,:uint8,:uint8,:uint16,:xrb_elementheader_t,:bool,:uint32,:uint32,:uint32,:uint32], XrbEnableContextCookie
    class XrbEnableContextReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :category, :uint8,
          :sequence, :uint16,
          :length, :uint32,
          :element_header, :xrb_elementheader_t,
          :client_swapped, :bool,
          :pad1, [:uint8, 2],
          :xid_base, :uint32,
          :server_time, :uint32,
          :rec_sequence_num, :uint32,
          :pad2, [:uint8, 8]
    end

    attach_function :xcb_enable_context_reply, [:pointer, XrbEnableContextCookie, :pointer], :pointer

        
    class XrbDisableContextRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :context, :xrb_context_t
    end

    class XrbDisableContextCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_disable_context_checked, [:pointer,:uint8,:uint8,:uint16,:xrb_context_t], XrbDisableContextCookie
    attach_function :xcb_disable_context, [:pointer,:uint8,:uint8,:uint16,:xrb_context_t], XrbDisableContextCookie
    class XrbFreeContextRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :context, :xrb_context_t
    end

    class XrbFreeContextCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_free_context_checked, [:pointer,:uint8,:uint8,:uint16,:xrb_context_t], XrbFreeContextCookie
    attach_function :xcb_free_context, [:pointer,:uint8,:uint8,:uint16,:xrb_context_t], XrbFreeContextCookie
  end
end
