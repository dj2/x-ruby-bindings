#
# This file auto-generated. Do not edit.
#

require 'ffi'
class Xrb
  class DPMS
    extend FFI::Library
    ffi_lib 'dpms'
    MAJOR_VERSION = 0
    MINOR_VERSION = 0
    XRB_DPMS_MODE_ON = 1
    XRB_DPMS_MODE_STANDBY = 2
    XRB_DPMS_MODE_SUSPEND = 3
    XRB_DPMS_MODE_OFF = 4
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

        
    class XrbCapableRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :capable, :bool,
          :pad2, [:uint8, 23]
    end

    class XrbCapableCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_capable, [:pointer,:uint8,:bool], XrbCapableCookie
    class XrbCapableReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :capable, :bool,
          :pad2, [:uint8, 23]
    end

    attach_function :xcb_capable_reply, [:pointer, XrbCapableCookie, :pointer], :pointer

        
    class XrbGetTimeoutsRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :standby_timeout, :uint16,
          :suspend_timeout, :uint16,
          :off_timeout, :uint16,
          :pad2, [:uint8, 18]
    end

    class XrbGetTimeoutsCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_timeouts, [:pointer,:uint8,:uint16,:uint16,:uint16], XrbGetTimeoutsCookie
    class XrbGetTimeoutsReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :standby_timeout, :uint16,
          :suspend_timeout, :uint16,
          :off_timeout, :uint16,
          :pad2, [:uint8, 18]
    end

    attach_function :xcb_get_timeouts_reply, [:pointer, XrbGetTimeoutsCookie, :pointer], :pointer

        
    class XrbSetTimeoutsRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :standby_timeout, :uint16,
          :suspend_timeout, :uint16,
          :off_timeout, :uint16
    end

    class XrbSetTimeoutsCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_set_timeouts_checked, [:pointer,:uint8,:uint16,:uint16,:uint16], XrbSetTimeoutsCookie
    attach_function :xcb_set_timeouts, [:pointer,:uint8,:uint16,:uint16,:uint16], XrbSetTimeoutsCookie
    class XrbEnableRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16
    end

    class XrbEnableCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_enable_checked, [:pointer,:uint8], XrbEnableCookie
    attach_function :xcb_enable, [:pointer,:uint8], XrbEnableCookie
    class XrbDisableRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16
    end

    class XrbDisableCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_disable_checked, [:pointer,:uint8], XrbDisableCookie
    attach_function :xcb_disable, [:pointer,:uint8], XrbDisableCookie
    class XrbForceLevelRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :power_level, :uint16
    end

    class XrbForceLevelCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_force_level_checked, [:pointer,:uint8,:uint16], XrbForceLevelCookie
    attach_function :xcb_force_level, [:pointer,:uint8,:uint16], XrbForceLevelCookie
    class XrbInfoRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :power_level, :uint16,
          :state, :bool,
          :pad2, [:uint8, 21]
    end

    class XrbInfoCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_info, [:pointer,:uint8,:uint16,:bool], XrbInfoCookie
    class XrbInfoReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :power_level, :uint16,
          :state, :bool,
          :pad2, [:uint8, 21]
    end

    attach_function :xcb_info_reply, [:pointer, XrbInfoCookie, :pointer], :pointer

        
  end
end
