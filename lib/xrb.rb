require 'ffi'

class Xrb
  extend FFI::Library

  PROTOCOL = 11
  PROTOCOL_REVISION = 0
  TCP_PORT = 6000

  NONE = 0
  COPY_FROM_PARENT = 0
  CURRENT_TIME = 0
  NO_SYMBOL = 0

  CONN_ERROR = 1
  CONN_CLOSED_EXT_NOTSUPPORTED = 2
  CONN_CLOSED_MEM_INSUFFICIENT = 3
  CONN_CLOSED_REQ_LEN_EXCEED = 4
  CONN_CLOSED_PARSE_ERR = 5

  class GenericIterator < FFI::Struct
    layout \
        :data, :pointer,
        :rem, :int,
        :index, :int
  end

  class GenricReply < FFI::Struct
    layout \
        :response_type, :uint8,
        :pad0, :uint8,
        :sequence, :uint16,
        :length, :uint32
  end

  class GenericEvent < FFI::Struct
    layout \
        :response_type, :uint8,
        :pad0, :uint8,
        :sequence, :uint16,
        :pad, [:uint32, 7],
        :full_sequence, :uint32
  end

  class GeEvent < FFI::Struct
    layout \
        :response_type, :uint8,
        :pad0, :uint8,
        :sequence, :uint16,
        :length, :uint32,
        :event_type, :uint16,
        :pad1, :uint16,
        :pad, [:uint32, 5],
        :full_sequence, :uint32
  end

  class GenericError < FFI::Struct
    layout \
        :response_type, :uint8,
        :error_code, :uint8,
        :sequence, :uint16,
        :resource_id, :uint32,
        :minor_code, :uint16,
        :major_code, :uint16,
        :pad0, :uint8,
        :pad, [:uint32, 5],
        :full_sequence, :uint32
  end

  class VoidCookie < FFI::Struct
    layout \
        :sequence, :int
  end

  class AuthInfo < FFI::Struct
    layout \
        :namelen, :int,
        :name, :string,
        :datalen, :int,
        :data, :pointer
  end
end

require 'xrb/generated/xproto'

class Xrb
  typedef :pointer, :connection_t
  typedef :pointer, :extension_t

  attach_function :flush, :xcb_flush, [:connection_t], :int
  attach_function :get_maximum_request_length, :xcb_get_maximum_request_length, [:connection_t], :uint32
  attach_function :prefetch_maximum_request_length, :xcb_prefetch_maximum_request_length, [:connection_t], :void
  attach_function :wait_for_event, :xcb_wait_for_event, [:connection_t], :pointer
  attach_function :poll_for_event, :xcb_poll_for_event, [:connection_t], :pointer
  attach_function :poll_for_queued_event, :xcb_poll_for_queued_event, [:connection_t], :pointer
  attach_function :request_check, :xcb_request_check, [:connection_t, VoidCookie], :pointer
  attach_function :discard_reply, :xcb_discard_reply, [:connection_t, :uint], :void
  attach_function :get_extension_data, :xcb_get_extension_data, [:connection_t, :extension_t], :pointer
  attach_function :prefetch_extension_data, :xcb_prefetch_extension_data, [:connection_t, :extension_t], :void
  attach_function :get_setup, :xcb_get_setup, [:connection_t], :pointer
  attach_function :get_file_descriptor, :xcb_get_file_descriptor, [:connection_t], :int
  attach_function :connection_has_error, :xcb_connection_has_error, [:connection_t], :int
  attach_function :connect_to_fd, :xcb_connect_to_fd, [:int, :pointer], :connection_t
  attach_function :disconnect, :xcb_disconnect, [:connection_t], :void
  attach_function :parse_display, :xcb_parse_display, [:string, :pointer, :pointer, :pointer], :int
  attach_function :connect, :xcb_connect, [:string, :pointer], :connection_t
  attach_function :connect_to_display_with_auth_info, :xcb_connect_to_display_with_auth_info, [:string, :pointer, :pointer], :connection_t
  attach_function :generate_id, :xcb_generate_id, [:connection_t], :uint32
end
