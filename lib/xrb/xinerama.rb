#
# This file auto-generated. Do not edit.
#

require 'ffi'
require 'xrb/xproto'
class Xrb
  class Xinerama
    extend FFI::Library
    ffi_lib 'xinerama'
    MAJOR_VERSION = 1
    MINOR_VERSION = 1
    class XrbScreenInfo < FFI::Struct
      layout \
          :x_org, :int16,
          :y_org, :int16,
          :width, :uint16,
          :height, :uint16
    end

    class XrbScreenInfoIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_screen_info_next, [:pointer], :void
    attach_function :xcb_screen_info_end, [:pointer], XrbGenericIterator
    class XrbQueryVersionRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :major, :uint16,
          :minor, :uint16
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
          :major, :uint16,
          :minor, :uint16
    end

    attach_function :xcb_query_version_reply, [:pointer, XrbQueryVersionCookie, :pointer], :pointer

        
    class XrbGetStateRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :window, :xrb_window_t
    end

    class XrbGetStateCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_state, [:pointer,:uint8,:xrb_window_t], XrbGetStateCookie
    class XrbGetStateReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :state, :uint8,
          :sequence, :uint16,
          :length, :uint32,
          :window, :xrb_window_t
    end

    attach_function :xcb_get_state_reply, [:pointer, XrbGetStateCookie, :pointer], :pointer

        
    class XrbGetScreenCountRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :window, :xrb_window_t
    end

    class XrbGetScreenCountCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_screen_count, [:pointer,:uint8,:xrb_window_t], XrbGetScreenCountCookie
    class XrbGetScreenCountReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :screen_count, :uint8,
          :sequence, :uint16,
          :length, :uint32,
          :window, :xrb_window_t
    end

    attach_function :xcb_get_screen_count_reply, [:pointer, XrbGetScreenCountCookie, :pointer], :pointer

        
    class XrbGetScreenSizeRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :width, :uint32,
          :height, :uint32,
          :window, :xrb_window_t,
          :screen, :uint32
    end

    class XrbGetScreenSizeCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_screen_size, [:pointer,:uint8,:uint32,:uint32,:xrb_window_t,:uint32], XrbGetScreenSizeCookie
    class XrbGetScreenSizeReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :width, :uint32,
          :height, :uint32,
          :window, :xrb_window_t,
          :screen, :uint32
    end

    attach_function :xcb_get_screen_size_reply, [:pointer, XrbGetScreenSizeCookie, :pointer], :pointer

        
    class XrbIsActiveRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :state, :uint32
    end

    class XrbIsActiveCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_is_active, [:pointer,:uint8,:uint32], XrbIsActiveCookie
    class XrbIsActiveReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :state, :uint32
    end

    attach_function :xcb_is_active_reply, [:pointer, XrbIsActiveCookie, :pointer], :pointer

        
    class XrbQueryScreensRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :number, :uint32,
          :pad2, [:uint8, 20]
    end

    class XrbQueryScreensCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_query_screens, [:pointer,:uint8,:uint32,:uint32], XrbQueryScreensCookie
    class XrbQueryScreensReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :number, :uint32,
          :pad2, [:uint8, 20]
    end

    attach_function :xcb_query_screens_reply, [:pointer, XrbQueryScreensCookie, :pointer], :pointer

        
  end
end
