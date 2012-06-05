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

  class XrbGenericIterator < FFI::Struct
    layout \
        :data, :pointer,
        :rem, :int,
        :index, :int
  end

  class XrbGenricReply < FFI::Struct
    layout \
        :response_type, :uint8,
        :pad0, :uint8,
        :sequence, :uint16,
        :length, :uint32
  end

  class XrbGenericEvent < FFI::Struct
    layout \
        :response_type, :uint8,
        :pad0, :uint8,
        :sequence, :uint16,
        :pad, [:uint32, 7],
        :full_sequence, :uint32
  end

  class XrbGeEvent < FFI::Struct
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

  class XrbGenericError < FFI::Struct
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

  class XrbVoidCookie < FFI::Struct
    layout \
        :sequence, :int
  end

  class XrbAuthInfo < FFI::Struct
    layout \
        :namelen, :int,
        :name, :string,
        :datalen, :int,
        :data, :pointer
  end
end

require 'xrb/xproto'

class Xrb
  typedef :pointer, :xrb_connection_t
  typedef :pointer, :xrb_extension_t

  attach_function :xcb_flush, [:xrb_connection_t], :int
  attach_function :xcb_get_maximum_request_length, [:xrb_connection_t], :uint32
  attach_function :xcb_prefetch_maximum_request_length, [:xrb_connection_t], :void
  attach_function :xcb_wait_for_event, [:xrb_connection_t], :pointer
  attach_function :xcb_poll_for_event, [:xrb_connection_t], :pointer
  attach_function :xcb_poll_for_queued_event, [:xrb_connection_t], :pointer
  attach_function :xcb_request_check, [:xrb_connection_t, XrbVoidCookie], :pointer
  attach_function :xcb_discard_reply, [:xrb_connection_t, :uint], :void
  attach_function :xcb_get_extension_data, [:xrb_connection_t, :xrb_extension_t], :pointer
  attach_function :xcb_prefetch_extension_data, [:xrb_connection_t, :xrb_extension_t], :void
  attach_function :xcb_get_setup, [:xrb_connection_t], :pointer
  attach_function :xcb_get_file_descriptor, [:xrb_connection_t], :int
  attach_function :xcb_connection_has_error, [:xrb_connection_t], :int
  attach_function :xcb_connect_to_fd, [:int, :pointer], :xrb_connection_t
  attach_function :xcb_disconnect, [:xrb_connection_t], :void
  attach_function :xcb_parse_display, [:string, :pointer, :pointer, :pointer], :int
  attach_function :xcb_connect, [:string, :pointer], :xrb_connection_t
  attach_function :xcb_connect_to_display_with_auth_info, [:string, :pointer, :pointer], :xrb_connection_t
  attach_function :xcb_generate_id, [:xrb_connection_t], :uint32
end