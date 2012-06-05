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
    enum :xrb_redirect_t, [
        :xrb_redirect_automatic, 1,
        :xrb_redirect_manual, 2
    ]
    class XrbQueryVersionRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :major_version, :uint32,
          :minor_version, :uint32,
          :pad2, [:uint8, 16]
    end

    class XrbQueryVersionCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_query_version, [:pointer,:uint8,:uint8,:uint16,:uint32,:uint32], XrbQueryVersionCookie
    class XrbQueryVersionReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :major_version, :uint32,
          :minor_version, :uint32,
          :pad2, [:uint8, 16]
    end

    attach_function :xcb_query_version_reply, [:pointer, XrbQueryVersionCookie, :pointer], :pointer

        
    class XrbRedirectWindowRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :window, :xrb_window_t,
          :update, :uint8,
          :pad1, [:uint8, 3]
    end

    class XrbRedirectWindowCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_redirect_window_checked, [:pointer,:uint8,:uint8,:uint16,:xrb_window_t,:uint8], XrbRedirectWindowCookie
    attach_function :xcb_redirect_window, [:pointer,:uint8,:uint8,:uint16,:xrb_window_t,:uint8], XrbRedirectWindowCookie
    class XrbRedirectSubwindowsRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :window, :xrb_window_t,
          :update, :uint8,
          :pad1, [:uint8, 3]
    end

    class XrbRedirectSubwindowsCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_redirect_subwindows_checked, [:pointer,:uint8,:uint8,:uint16,:xrb_window_t,:uint8], XrbRedirectSubwindowsCookie
    attach_function :xcb_redirect_subwindows, [:pointer,:uint8,:uint8,:uint16,:xrb_window_t,:uint8], XrbRedirectSubwindowsCookie
    class XrbUnredirectWindowRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :window, :xrb_window_t,
          :update, :uint8,
          :pad1, [:uint8, 3]
    end

    class XrbUnredirectWindowCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_unredirect_window_checked, [:pointer,:uint8,:uint8,:uint16,:xrb_window_t,:uint8], XrbUnredirectWindowCookie
    attach_function :xcb_unredirect_window, [:pointer,:uint8,:uint8,:uint16,:xrb_window_t,:uint8], XrbUnredirectWindowCookie
    class XrbUnredirectSubwindowsRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :window, :xrb_window_t,
          :update, :uint8,
          :pad1, [:uint8, 3]
    end

    class XrbUnredirectSubwindowsCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_unredirect_subwindows_checked, [:pointer,:uint8,:uint8,:uint16,:xrb_window_t,:uint8], XrbUnredirectSubwindowsCookie
    attach_function :xcb_unredirect_subwindows, [:pointer,:uint8,:uint8,:uint16,:xrb_window_t,:uint8], XrbUnredirectSubwindowsCookie
    class XrbCreateRegionFromBorderClipRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :region, :xrb_region_t,
          :window, :xrb_window_t
    end

    class XrbCreateRegionFromBorderClipCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_create_region_from_border_clip_checked, [:pointer,:uint8,:uint8,:uint16,:xrb_region_t,:xrb_window_t], XrbCreateRegionFromBorderClipCookie
    attach_function :xcb_create_region_from_border_clip, [:pointer,:uint8,:uint8,:uint16,:xrb_region_t,:xrb_window_t], XrbCreateRegionFromBorderClipCookie
    class XrbNameWindowPixmapRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :window, :xrb_window_t,
          :pixmap, :xrb_pixmap_t
    end

    class XrbNameWindowPixmapCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_name_window_pixmap_checked, [:pointer,:uint8,:uint8,:uint16,:xrb_window_t,:xrb_pixmap_t], XrbNameWindowPixmapCookie
    attach_function :xcb_name_window_pixmap, [:pointer,:uint8,:uint8,:uint16,:xrb_window_t,:xrb_pixmap_t], XrbNameWindowPixmapCookie
    class XrbGetOverlayWindowRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :overlay_win, :xrb_window_t,
          :pad2, [:uint8, 20]
    end

    class XrbGetOverlayWindowCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_overlay_window, [:pointer,:uint8,:uint8,:uint16,:xrb_window_t], XrbGetOverlayWindowCookie
    class XrbGetOverlayWindowReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :overlay_win, :xrb_window_t,
          :pad2, [:uint8, 20]
    end

    attach_function :xcb_get_overlay_window_reply, [:pointer, XrbGetOverlayWindowCookie, :pointer], :pointer

        
    class XrbReleaseOverlayWindowRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :window, :xrb_window_t
    end

    class XrbReleaseOverlayWindowCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_release_overlay_window_checked, [:pointer,:uint8,:uint8,:uint16,:xrb_window_t], XrbReleaseOverlayWindowCookie
    attach_function :xcb_release_overlay_window, [:pointer,:uint8,:uint8,:uint16,:xrb_window_t], XrbReleaseOverlayWindowCookie
  end
end
