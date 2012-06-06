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
    DPMS_MODE_ON = 1
    DPMS_MODE_STANDBY = 2
    DPMS_MODE_SUSPEND = 3
    DPMS_MODE_OFF = 4
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
    attach_function :xcb_get_version, [:pointer,:uint8,:uint16,:uint16], GetVersionCookie
    class GetVersionReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :server_major_version, :uint16,
          :server_minor_version, :uint16
    end

    attach_function :xcb_get_version_reply, [:pointer, GetVersionCookie, :pointer], :pointer

        
    class CapableRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :capable, :bool,
          :pad2, [:uint8, 23]
    end

    class CapableCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_capable, [:pointer,:uint8,:bool], CapableCookie
    class CapableReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :capable, :bool,
          :pad2, [:uint8, 23]
    end

    attach_function :xcb_capable_reply, [:pointer, CapableCookie, :pointer], :pointer

        
    class GetTimeoutsRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :standby_timeout, :uint16,
          :suspend_timeout, :uint16,
          :off_timeout, :uint16,
          :pad2, [:uint8, 18]
    end

    class GetTimeoutsCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_timeouts, [:pointer,:uint8,:uint16,:uint16,:uint16], GetTimeoutsCookie
    class GetTimeoutsReply < FFI::Struct
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

    attach_function :xcb_get_timeouts_reply, [:pointer, GetTimeoutsCookie, :pointer], :pointer

        
    class SetTimeoutsRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :standby_timeout, :uint16,
          :suspend_timeout, :uint16,
          :off_timeout, :uint16
    end

    class SetTimeoutsCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_set_timeouts_checked, [:pointer,:uint8,:uint16,:uint16,:uint16], SetTimeoutsCookie
    attach_function :xcb_set_timeouts, [:pointer,:uint8,:uint16,:uint16,:uint16], SetTimeoutsCookie
    class EnableRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16
    end

    class EnableCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_enable_checked, [:pointer,:uint8], EnableCookie
    attach_function :xcb_enable, [:pointer,:uint8], EnableCookie
    class DisableRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16
    end

    class DisableCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_disable_checked, [:pointer,:uint8], DisableCookie
    attach_function :xcb_disable, [:pointer,:uint8], DisableCookie
    class ForceLevelRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :power_level, :uint16
    end

    class ForceLevelCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_force_level_checked, [:pointer,:uint8,:uint16], ForceLevelCookie
    attach_function :xcb_force_level, [:pointer,:uint8,:uint16], ForceLevelCookie
    class InfoRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :power_level, :uint16,
          :state, :bool,
          :pad2, [:uint8, 21]
    end

    class InfoCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_info, [:pointer,:uint8,:uint16,:bool], InfoCookie
    class InfoReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :power_level, :uint16,
          :state, :bool,
          :pad2, [:uint8, 21]
    end

    attach_function :xcb_info_reply, [:pointer, InfoCookie, :pointer], :pointer

        
  end
end
