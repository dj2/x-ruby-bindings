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
    XRB_KIND_BLANKED = 1
    XRB_KIND_INTERNAL = 2
    XRB_KIND_EXTERNAL = 3
    XRB_EVENT_NOTIFY_MASK = 1 << 0
    XRB_EVENT_CYCLE_MASK = 1 << 1
    XRB_STATE_OFF = 1
    XRB_STATE_ON = 2
    XRB_STATE_CYCLE = 3
    XRB_STATE_DISABLED = 4
    class XrbNotifyEvent < FFI::Struct
      layout \
          :response_type, :uint8,
          :code, :uint8,
          :state, :uint8,
          :pad1, [:uint8, 1],
          :sequence_number, :uint16,
          :time, :xrb_timestamp_t,
          :root, :xrb_window_t,
          :window, :xrb_window_t,
          :kind, :uint8,
          :forced, :bool,
          :pad2, [:uint8, 14]
    end

    class XrbQueryVersionRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :server_major_version, :uint16,
          :server_minor_version, :uint16,
          :pad2, [:uint8, 20]
    end

    class XrbQueryVersionCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_query_version, [:pointer,:uint8,:uint16,:uint16], XrbQueryVersionCookie
    class XrbQueryVersionReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :server_major_version, :uint16,
          :server_minor_version, :uint16,
          :pad2, [:uint8, 20]
    end

    attach_function :xcb_query_version_reply, [:pointer, XrbQueryVersionCookie, :pointer], :pointer

        
    class XrbQueryInfoRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :saver_window, :xrb_window_t,
          :ms_until_server, :uint32,
          :ms_since_user_input, :uint32,
          :event_mask, :uint32,
          :kind, :uint8,
          :pad1, [:uint8, 7]
    end

    class XrbQueryInfoCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_query_info, [:pointer,:uint8,:xrb_window_t,:uint32,:uint32,:uint32,:uint8], XrbQueryInfoCookie
    class XrbQueryInfoReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :state, :uint8,
          :sequence, :uint16,
          :length, :uint32,
          :saver_window, :xrb_window_t,
          :ms_until_server, :uint32,
          :ms_since_user_input, :uint32,
          :event_mask, :uint32,
          :kind, :uint8,
          :pad1, [:uint8, 7]
    end

    attach_function :xcb_query_info_reply, [:pointer, XrbQueryInfoCookie, :pointer], :pointer

        
    class XrbSelectInputRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :drawable, :xrb_drawable_t,
          :event_mask, :uint32
    end

    class XrbSelectInputCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_select_input_checked, [:pointer,:uint8,:xrb_drawable_t,:uint32], XrbSelectInputCookie
    attach_function :xcb_select_input, [:pointer,:uint8,:xrb_drawable_t,:uint32], XrbSelectInputCookie
    class XrbSetAttributesRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :drawable, :xrb_drawable_t,
          :x, :int16,
          :y, :int16,
          :width, :uint16,
          :height, :uint16,
          :border_width, :uint16,
          :class, :uint8,
          :depth, :uint8,
          :visual, :xrb_visualid_t,
          :value_mask, :uint32
    end

    class XrbSetAttributesCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_set_attributes_checked, [:pointer,:uint8,:xrb_drawable_t,:int16,:int16,:uint16,:uint16,:uint16,:uint8,:uint8,:xrb_visualid_t,:uint32,:pointer], XrbSetAttributesCookie
    attach_function :xcb_set_attributes, [:pointer,:uint8,:xrb_drawable_t,:int16,:int16,:uint16,:uint16,:uint16,:uint8,:uint8,:xrb_visualid_t,:uint32,:pointer], XrbSetAttributesCookie
    class XrbUnsetAttributesRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :drawable, :xrb_drawable_t
    end

    class XrbUnsetAttributesCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_unset_attributes_checked, [:pointer,:uint8,:xrb_drawable_t], XrbUnsetAttributesCookie
    attach_function :xcb_unset_attributes, [:pointer,:uint8,:xrb_drawable_t], XrbUnsetAttributesCookie
    class XrbSuspendRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :suspend, :bool,
          :pad1, [:uint8, 3]
    end

    class XrbSuspendCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_suspend_checked, [:pointer,:uint8,:bool], XrbSuspendCookie
    attach_function :xcb_suspend, [:pointer,:uint8,:bool], XrbSuspendCookie
  end
end
