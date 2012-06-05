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
    enum :xrb_cursor_t, [
        :xrb_cursor_none, 0,
        :xrb_cursor_current, 1
    ]
    class XrbGetVersionRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :minor_version, :uint16
    end

    class XrbGetVersionCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_version, [:pointer,:uint8,:uint8,:uint16,:uint16], XrbGetVersionCookie
    class XrbGetVersionReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :major_version, :uint8,
          :sequence, :uint16,
          :length, :uint32,
          :minor_version, :uint16
    end

    attach_function :xcb_get_version_reply, [:pointer, XrbGetVersionCookie, :pointer], :pointer

        
    class XrbCompareCursorRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16
    end

    class XrbCompareCursorCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_compare_cursor, [:pointer,:uint8,:uint8,:uint16], XrbCompareCursorCookie
    class XrbCompareCursorReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :same, :bool,
          :sequence, :uint16,
          :length, :uint32
    end

    attach_function :xcb_compare_cursor_reply, [:pointer, XrbCompareCursorCookie, :pointer], :pointer

        
    class XrbFakeInputRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :type, :uint8,
          :detail, :uint8,
          :pad1, [:uint8, 2],
          :time, :uint32,
          :root, :xrb_window_t,
          :pad2, [:uint8, 8],
          :rootX, :int16,
          :rootY, :int16,
          :pad3, [:uint8, 7],
          :deviceid, :uint8
    end

    class XrbFakeInputCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_fake_input_checked, [:pointer,:uint8,:uint8,:uint16,:uint8,:uint8,:uint32,:xrb_window_t,:int16,:int16,:uint8], XrbFakeInputCookie
    attach_function :xcb_fake_input, [:pointer,:uint8,:uint8,:uint16,:uint8,:uint8,:uint32,:xrb_window_t,:int16,:int16,:uint8], XrbFakeInputCookie
    class XrbGrabControlRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :impervious, :bool,
          :pad1, [:uint8, 3]
    end

    class XrbGrabControlCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_grab_control_checked, [:pointer,:uint8,:uint8,:uint16,:bool], XrbGrabControlCookie
    attach_function :xcb_grab_control, [:pointer,:uint8,:uint8,:uint16,:bool], XrbGrabControlCookie
  end
end
