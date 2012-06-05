#
# This file auto-generated. Do not edit.
#

require 'ffi'
require 'xrb/xproto'
class Xrb
  class ScreenSaver
    extend FFI::Library
    ffi_lib 'screensaver'
    MAJOR_VERSION = 1
    MINOR_VERSION = 1
    KIND_BLANKED = 1
    KIND_INTERNAL = 2
    KIND_EXTERNAL = 3
    EVENT_NOTIFY_MASK = 1 << 0
    EVENT_CYCLE_MASK = 1 << 1
    STATE_OFF = 1
    STATE_ON = 2
    STATE_CYCLE = 3
    STATE_DISABLED = 4
    class NotifyEvent < FFI::Struct
      layout \
          :response_type, :uint8,
          :code, :uint8,
          :state, :uint8,
          :pad1, [:uint8, 1],
          :sequence_number, :uint16,
          :time, :timestamp_t,
          :root, :window_t,
          :window, :window_t,
          :kind, :uint8,
          :forced, :bool,
          :pad2, [:uint8, 14]
    end

    class QueryVersionRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :server_major_version, :uint16,
          :server_minor_version, :uint16,
          :pad2, [:uint8, 20]
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
          :server_major_version, :uint16,
          :server_minor_version, :uint16,
          :pad2, [:uint8, 20]
    end

    attach_function :xcb_query_version_reply, [:pointer, QueryVersionCookie, :pointer], :pointer

        
    class QueryInfoRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :saver_window, :window_t,
          :ms_until_server, :uint32,
          :ms_since_user_input, :uint32,
          :event_mask, :uint32,
          :kind, :uint8,
          :pad1, [:uint8, 7]
    end

    class QueryInfoCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_query_info, [:pointer,:uint8,:window_t,:uint32,:uint32,:uint32,:uint8], QueryInfoCookie
    class QueryInfoReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :state, :uint8,
          :sequence, :uint16,
          :length, :uint32,
          :saver_window, :window_t,
          :ms_until_server, :uint32,
          :ms_since_user_input, :uint32,
          :event_mask, :uint32,
          :kind, :uint8,
          :pad1, [:uint8, 7]
    end

    attach_function :xcb_query_info_reply, [:pointer, QueryInfoCookie, :pointer], :pointer

        
    class SelectInputRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :drawable, :drawable_t,
          :event_mask, :uint32
    end

    class SelectInputCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_select_input_checked, [:pointer,:uint8,:drawable_t,:uint32], SelectInputCookie
    attach_function :xcb_select_input, [:pointer,:uint8,:drawable_t,:uint32], SelectInputCookie
    class SetAttributesRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :drawable, :drawable_t,
          :x, :int16,
          :y, :int16,
          :width, :uint16,
          :height, :uint16,
          :border_width, :uint16,
          :class, :uint8,
          :depth, :uint8,
          :visual, :visualid_t,
          :value_mask, :uint32
    end

    class SetAttributesCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_set_attributes_checked, [:pointer,:uint8,:drawable_t,:int16,:int16,:uint16,:uint16,:uint16,:uint8,:uint8,:visualid_t,:uint32,:pointer], SetAttributesCookie
    attach_function :xcb_set_attributes, [:pointer,:uint8,:drawable_t,:int16,:int16,:uint16,:uint16,:uint16,:uint8,:uint8,:visualid_t,:uint32,:pointer], SetAttributesCookie
    class UnsetAttributesRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :drawable, :drawable_t
    end

    class UnsetAttributesCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_unset_attributes_checked, [:pointer,:uint8,:drawable_t], UnsetAttributesCookie
    attach_function :xcb_unset_attributes, [:pointer,:uint8,:drawable_t], UnsetAttributesCookie
    class SuspendRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :suspend, :bool,
          :pad1, [:uint8, 3]
    end

    class SuspendCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_suspend_checked, [:pointer,:uint8,:bool], SuspendCookie
    attach_function :xcb_suspend, [:pointer,:uint8,:bool], SuspendCookie
  end
end
