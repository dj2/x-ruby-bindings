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
    class ScreenInfo < FFI::Struct
      layout \
          :x_org, :int16,
          :y_org, :int16,
          :width, :uint16,
          :height, :uint16
    end

    class ScreenInfoIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :screen_info_next, :xcb_screen_info_next, [:pointer], :void
    attach_function :screen_info_end, :xcb_screen_info_end, [:pointer], GenericIterator
    class QueryVersionRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :major, :uint16,
          :minor, :uint16
    end

    class QueryVersionCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :query_version, :xcb_query_version, [:pointer,:uint8,:uint16,:uint16], QueryVersionCookie
    class QueryVersionReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :major, :uint16,
          :minor, :uint16
    end

    attach_function :query_version_reply, :xcb_query_version_reply, [:pointer, QueryVersionCookie, :pointer], :pointer

        
    class GetStateRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :window, :window_t
    end

    class GetStateCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :get_state, :xcb_get_state, [:pointer,:uint8,:window_t], GetStateCookie
    class GetStateReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :state, :uint8,
          :sequence, :uint16,
          :length, :uint32,
          :window, :window_t
    end

    attach_function :get_state_reply, :xcb_get_state_reply, [:pointer, GetStateCookie, :pointer], :pointer

        
    class GetScreenCountRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :window, :window_t
    end

    class GetScreenCountCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :get_screen_count, :xcb_get_screen_count, [:pointer,:uint8,:window_t], GetScreenCountCookie
    class GetScreenCountReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :screen_count, :uint8,
          :sequence, :uint16,
          :length, :uint32,
          :window, :window_t
    end

    attach_function :get_screen_count_reply, :xcb_get_screen_count_reply, [:pointer, GetScreenCountCookie, :pointer], :pointer

        
    class GetScreenSizeRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :width, :uint32,
          :height, :uint32,
          :window, :window_t,
          :screen, :uint32
    end

    class GetScreenSizeCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :get_screen_size, :xcb_get_screen_size, [:pointer,:uint8,:uint32,:uint32,:window_t,:uint32], GetScreenSizeCookie
    class GetScreenSizeReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :width, :uint32,
          :height, :uint32,
          :window, :window_t,
          :screen, :uint32
    end

    attach_function :get_screen_size_reply, :xcb_get_screen_size_reply, [:pointer, GetScreenSizeCookie, :pointer], :pointer

        
    class IsActiveRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :state, :uint32
    end

    class IsActiveCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :is_active, :xcb_is_active, [:pointer,:uint8,:uint32], IsActiveCookie
    class IsActiveReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :state, :uint32
    end

    attach_function :is_active_reply, :xcb_is_active_reply, [:pointer, IsActiveCookie, :pointer], :pointer

        
    class QueryScreensRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :number, :uint32,
          :pad2, [:uint8, 20]
    end

    class QueryScreensCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :query_screens, :xcb_query_screens, [:pointer,:uint8,:uint32,:uint32], QueryScreensCookie
    class QueryScreensReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :number, :uint32,
          :pad2, [:uint8, 20]
    end

    attach_function :query_screens_reply, :xcb_query_screens_reply, [:pointer, QueryScreensCookie, :pointer], :pointer

        
  end
end
