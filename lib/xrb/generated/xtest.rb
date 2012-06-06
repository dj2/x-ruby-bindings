#
# This file auto-generated. Do not edit.
#

require 'ffi'
require 'xrb/xproto'
class Xrb
  class Test
    extend FFI::Library
    ffi_lib 'xtest'
    MAJOR_VERSION = 2
    MINOR_VERSION = 1
    CURSOR_NONE = 0
    CURSOR_CURRENT = 1
    class GetVersionRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :minor_version, :uint16
    end

    class GetVersionCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :get_version, :xcb_get_version, [:pointer,:uint8,:uint16], GetVersionCookie
    class GetVersionReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :major_version, :uint8,
          :sequence, :uint16,
          :length, :uint32,
          :minor_version, :uint16
    end

    attach_function :get_version_reply, :xcb_get_version_reply, [:pointer, GetVersionCookie, :pointer], :pointer

        
    class CompareCursorRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16
    end

    class CompareCursorCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :compare_cursor, :xcb_compare_cursor, [:pointer,:uint8], CompareCursorCookie
    class CompareCursorReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :same, :bool,
          :sequence, :uint16,
          :length, :uint32
    end

    attach_function :compare_cursor_reply, :xcb_compare_cursor_reply, [:pointer, CompareCursorCookie, :pointer], :pointer

        
    class FakeInputRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :type, :uint8,
          :detail, :uint8,
          :pad1, [:uint8, 2],
          :time, :uint32,
          :root, :window_t,
          :pad2, [:uint8, 8],
          :rootX, :int16,
          :rootY, :int16,
          :pad3, [:uint8, 7],
          :deviceid, :uint8
    end

    class FakeInputCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :fake_input_checked, :xcb_fake_input_checked, [:pointer,:uint8,:uint8,:uint8,:uint32,:window_t,:int16,:int16,:uint8], FakeInputCookie
    attach_function :fake_input, :xcb_fake_input, [:pointer,:uint8,:uint8,:uint8,:uint32,:window_t,:int16,:int16,:uint8], FakeInputCookie
    class GrabControlRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :impervious, :bool,
          :pad1, [:uint8, 3]
    end

    class GrabControlCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :grab_control_checked, :xcb_grab_control_checked, [:pointer,:uint8,:bool], GrabControlCookie
    attach_function :grab_control, :xcb_grab_control, [:pointer,:uint8,:bool], GrabControlCookie
  end
end
