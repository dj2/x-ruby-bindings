#
# This file auto-generated. Do not edit.
#

require 'ffi'
require 'xrb/xproto'
require 'xrb/xfixes'
class Xrb
  class Composite
    extend FFI::Library
    ffi_lib 'composite'
    MAJOR_VERSION = 0
    MINOR_VERSION = 3
    REDIRECT_AUTOMATIC = 1
    REDIRECT_MANUAL = 2
    class QueryVersionRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :major_version, :uint32,
          :minor_version, :uint32,
          :pad2, [:uint8, 16]
    end

    class QueryVersionCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_query_version, [:pointer,:uint8,:uint32,:uint32], QueryVersionCookie
    class QueryVersionReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :major_version, :uint32,
          :minor_version, :uint32,
          :pad2, [:uint8, 16]
    end

    attach_function :xcb_query_version_reply, [:pointer, QueryVersionCookie, :pointer], :pointer

        
    class RedirectWindowRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :window, :window_t,
          :update, :uint8,
          :pad1, [:uint8, 3]
    end

    class RedirectWindowCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_redirect_window_checked, [:pointer,:uint8,:window_t,:uint8], RedirectWindowCookie
    attach_function :xcb_redirect_window, [:pointer,:uint8,:window_t,:uint8], RedirectWindowCookie
    class RedirectSubwindowsRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :window, :window_t,
          :update, :uint8,
          :pad1, [:uint8, 3]
    end

    class RedirectSubwindowsCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_redirect_subwindows_checked, [:pointer,:uint8,:window_t,:uint8], RedirectSubwindowsCookie
    attach_function :xcb_redirect_subwindows, [:pointer,:uint8,:window_t,:uint8], RedirectSubwindowsCookie
    class UnredirectWindowRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :window, :window_t,
          :update, :uint8,
          :pad1, [:uint8, 3]
    end

    class UnredirectWindowCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_unredirect_window_checked, [:pointer,:uint8,:window_t,:uint8], UnredirectWindowCookie
    attach_function :xcb_unredirect_window, [:pointer,:uint8,:window_t,:uint8], UnredirectWindowCookie
    class UnredirectSubwindowsRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :window, :window_t,
          :update, :uint8,
          :pad1, [:uint8, 3]
    end

    class UnredirectSubwindowsCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_unredirect_subwindows_checked, [:pointer,:uint8,:window_t,:uint8], UnredirectSubwindowsCookie
    attach_function :xcb_unredirect_subwindows, [:pointer,:uint8,:window_t,:uint8], UnredirectSubwindowsCookie
    class CreateRegionFromBorderClipRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :region, :region_t,
          :window, :window_t
    end

    class CreateRegionFromBorderClipCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_create_region_from_border_clip_checked, [:pointer,:uint8,:region_t,:window_t], CreateRegionFromBorderClipCookie
    attach_function :xcb_create_region_from_border_clip, [:pointer,:uint8,:region_t,:window_t], CreateRegionFromBorderClipCookie
    class NameWindowPixmapRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :window, :window_t,
          :pixmap, :pixmap_t
    end

    class NameWindowPixmapCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_name_window_pixmap_checked, [:pointer,:uint8,:window_t,:pixmap_t], NameWindowPixmapCookie
    attach_function :xcb_name_window_pixmap, [:pointer,:uint8,:window_t,:pixmap_t], NameWindowPixmapCookie
    class GetOverlayWindowRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :overlay_win, :window_t,
          :pad2, [:uint8, 20]
    end

    class GetOverlayWindowCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_overlay_window, [:pointer,:uint8,:window_t], GetOverlayWindowCookie
    class GetOverlayWindowReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :overlay_win, :window_t,
          :pad2, [:uint8, 20]
    end

    attach_function :xcb_get_overlay_window_reply, [:pointer, GetOverlayWindowCookie, :pointer], :pointer

        
    class ReleaseOverlayWindowRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :window, :window_t
    end

    class ReleaseOverlayWindowCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_release_overlay_window_checked, [:pointer,:uint8,:window_t], ReleaseOverlayWindowCookie
    attach_function :xcb_release_overlay_window, [:pointer,:uint8,:window_t], ReleaseOverlayWindowCookie
  end
end
