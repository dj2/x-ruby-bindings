#
# This file auto-generated. Do not edit.
#

require 'ffi'
require 'xrb/xproto'
require 'xrb/render'
require 'xrb/shape'
class Xrb
  class XFixes
    extend FFI::Library
    ffi_lib 'xfixes'
    MAJOR_VERSION = 4
    MINOR_VERSION = 0
    SAVE_SET_MODE_INSERT = 1
    SAVE_SET_MODE_DELETE = 2
    SAVE_SET_TARGET_NEAREST = 1
    SAVE_SET_TARGET_ROOT = 2
    SAVE_SET_MAPPING_MAP = 1
    SAVE_SET_MAPPING_UNMAP = 2
    SELECTION_EVENT_SET_SELECTION_OWNER = 1
    SELECTION_EVENT_SELECTION_WINDOW_DESTROY = 2
    SELECTION_EVENT_SELECTION_CLIENT_CLOSE = 3
    SELECTION_EVENT_MASK_SET_SELECTION_OWNER = 1 << 0
    SELECTION_EVENT_MASK_SELECTION_WINDOW_DESTROY = 1 << 1
    SELECTION_EVENT_MASK_SELECTION_CLIENT_CLOSE = 1 << 2
    CURSOR_NOTIFY_DISPLAY_CURSOR = 1
    CURSOR_NOTIFY_MASK_DISPLAY_CURSOR = 1 << 0
    typedef :uint32, :region_t
    class RegionIterator < FFI::Struct
      layout \
          :data, :window_t,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_region_next, [:pointer], :void
    attach_function :xcb_region_end, [:pointer], GenericIterator
    REGION_NONE = 1
    class SelectionNotifyEvent < FFI::Struct
      layout \
          :response_type, :uint8,
          :subtype, :uint8,
          :window, :window_t,
          :owner, :window_t,
          :selection, :atom_t,
          :timestamp, :timestamp_t,
          :selection_timestamp, :timestamp_t,
          :pad1, [:uint8, 8]
    end

    class CursorNotifyEvent < FFI::Struct
      layout \
          :response_type, :uint8,
          :subtype, :uint8,
          :window, :window_t,
          :cursor_serial, :uint32,
          :timestamp, :timestamp_t,
          :name, :atom_t,
          :pad1, [:uint8, 12]
    end

    class BadRegionError < FFI::Struct
      layout \
          :response_type, :uint8,
          :error_code, :uint8,
          :sequence, :uint16
    end

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

        
    class ChangeSaveSetRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :mode, :uint8,
          :target, :uint8,
          :map, :uint8,
          :pad1, [:uint8, 1],
          :window, :window_t
    end

    class ChangeSaveSetCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_change_save_set_checked, [:pointer,:uint8,:uint8,:uint8,:uint8,:window_t], ChangeSaveSetCookie
    attach_function :xcb_change_save_set, [:pointer,:uint8,:uint8,:uint8,:uint8,:window_t], ChangeSaveSetCookie
    class SelectSelectionInputRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :window, :window_t,
          :selection, :atom_t,
          :event_mask, :uint32
    end

    class SelectSelectionInputCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_select_selection_input_checked, [:pointer,:uint8,:window_t,:atom_t,:uint32], SelectSelectionInputCookie
    attach_function :xcb_select_selection_input, [:pointer,:uint8,:window_t,:atom_t,:uint32], SelectSelectionInputCookie
    class SelectCursorInputRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :window, :window_t,
          :event_mask, :uint32
    end

    class SelectCursorInputCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_select_cursor_input_checked, [:pointer,:uint8,:window_t,:uint32], SelectCursorInputCookie
    attach_function :xcb_select_cursor_input, [:pointer,:uint8,:window_t,:uint32], SelectCursorInputCookie
    class GetCursorImageRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :x, :int16,
          :y, :int16,
          :width, :uint16,
          :height, :uint16,
          :xhot, :uint16,
          :yhot, :uint16,
          :cursor_serial, :uint32,
          :pad2, [:uint8, 8]
    end

    class GetCursorImageCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_cursor_image, [:pointer,:uint8,:int16,:int16,:uint16,:uint16,:uint16,:uint16,:uint32,:uint32], GetCursorImageCookie
    class GetCursorImageReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :x, :int16,
          :y, :int16,
          :width, :uint16,
          :height, :uint16,
          :xhot, :uint16,
          :yhot, :uint16,
          :cursor_serial, :uint32,
          :pad2, [:uint8, 8]
    end

    attach_function :xcb_get_cursor_image_reply, [:pointer, GetCursorImageCookie, :pointer], :pointer

        
    class CreateRegionRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :region, :region_t
    end

    class CreateRegionCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_create_region_checked, [:pointer,:uint8,:region_t,:uint32], CreateRegionCookie
    attach_function :xcb_create_region, [:pointer,:uint8,:region_t,:uint32], CreateRegionCookie
    class CreateRegionFromBitmapRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :region, :region_t,
          :bitmap, :pixmap_t
    end

    class CreateRegionFromBitmapCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_create_region_from_bitmap_checked, [:pointer,:uint8,:region_t,:pixmap_t], CreateRegionFromBitmapCookie
    attach_function :xcb_create_region_from_bitmap, [:pointer,:uint8,:region_t,:pixmap_t], CreateRegionFromBitmapCookie
    class CreateRegionFromWindowRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :region, :region_t,
          :window, :window_t,
          :kind, :kind_t,
          :pad1, [:uint8, 3]
    end

    class CreateRegionFromWindowCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_create_region_from_window_checked, [:pointer,:uint8,:region_t,:window_t,:kind_t], CreateRegionFromWindowCookie
    attach_function :xcb_create_region_from_window, [:pointer,:uint8,:region_t,:window_t,:kind_t], CreateRegionFromWindowCookie
    class CreateRegionFromGCRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :region, :region_t,
          :gc, :gcontext_t
    end

    class CreateRegionFromGCCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_create_region_from_gc_checked, [:pointer,:uint8,:region_t,:gcontext_t], CreateRegionFromGCCookie
    attach_function :xcb_create_region_from_gc, [:pointer,:uint8,:region_t,:gcontext_t], CreateRegionFromGCCookie
    class CreateRegionFromPictureRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :region, :region_t,
          :picture, :picture_t
    end

    class CreateRegionFromPictureCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_create_region_from_picture_checked, [:pointer,:uint8,:region_t,:picture_t], CreateRegionFromPictureCookie
    attach_function :xcb_create_region_from_picture, [:pointer,:uint8,:region_t,:picture_t], CreateRegionFromPictureCookie
    class DestroyRegionRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :region, :region_t
    end

    class DestroyRegionCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_destroy_region_checked, [:pointer,:uint8,:region_t], DestroyRegionCookie
    attach_function :xcb_destroy_region, [:pointer,:uint8,:region_t], DestroyRegionCookie
    class SetRegionRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :region, :region_t
    end

    class SetRegionCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_set_region_checked, [:pointer,:uint8,:region_t,:uint32], SetRegionCookie
    attach_function :xcb_set_region, [:pointer,:uint8,:region_t,:uint32], SetRegionCookie
    class CopyRegionRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :source, :region_t,
          :destination, :region_t
    end

    class CopyRegionCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_copy_region_checked, [:pointer,:uint8,:region_t,:region_t], CopyRegionCookie
    attach_function :xcb_copy_region, [:pointer,:uint8,:region_t,:region_t], CopyRegionCookie
    class UnionRegionRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :source1, :region_t,
          :source2, :region_t,
          :destination, :region_t
    end

    class UnionRegionCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_union_region_checked, [:pointer,:uint8,:region_t,:region_t,:region_t], UnionRegionCookie
    attach_function :xcb_union_region, [:pointer,:uint8,:region_t,:region_t,:region_t], UnionRegionCookie
    class IntersectRegionRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :source1, :region_t,
          :source2, :region_t,
          :destination, :region_t
    end

    class IntersectRegionCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_intersect_region_checked, [:pointer,:uint8,:region_t,:region_t,:region_t], IntersectRegionCookie
    attach_function :xcb_intersect_region, [:pointer,:uint8,:region_t,:region_t,:region_t], IntersectRegionCookie
    class SubtractRegionRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :source1, :region_t,
          :source2, :region_t,
          :destination, :region_t
    end

    class SubtractRegionCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_subtract_region_checked, [:pointer,:uint8,:region_t,:region_t,:region_t], SubtractRegionCookie
    attach_function :xcb_subtract_region, [:pointer,:uint8,:region_t,:region_t,:region_t], SubtractRegionCookie
    class InvertRegionRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :source, :region_t,
          :bounds, Rectangle,
          :destination, :region_t
    end

    class InvertRegionCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_invert_region_checked, [:pointer,:uint8,:region_t,Rectangle,:region_t], InvertRegionCookie
    attach_function :xcb_invert_region, [:pointer,:uint8,:region_t,Rectangle,:region_t], InvertRegionCookie
    class TranslateRegionRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :region, :region_t,
          :dx, :int16,
          :dy, :int16
    end

    class TranslateRegionCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_translate_region_checked, [:pointer,:uint8,:region_t,:int16,:int16], TranslateRegionCookie
    attach_function :xcb_translate_region, [:pointer,:uint8,:region_t,:int16,:int16], TranslateRegionCookie
    class RegionExtentsRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :source, :region_t,
          :destination, :region_t
    end

    class RegionExtentsCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_region_extents_checked, [:pointer,:uint8,:region_t,:region_t], RegionExtentsCookie
    attach_function :xcb_region_extents, [:pointer,:uint8,:region_t,:region_t], RegionExtentsCookie
    class FetchRegionRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :extents, Rectangle,
          :pad2, [:uint8, 16]
    end

    class FetchRegionCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_fetch_region, [:pointer,:uint8,Rectangle,:uint32], FetchRegionCookie
    class FetchRegionReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :extents, Rectangle,
          :pad2, [:uint8, 16]
    end

    attach_function :xcb_fetch_region_reply, [:pointer, FetchRegionCookie, :pointer], :pointer

        
    class SetGCClipRegionRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :gc, :gcontext_t,
          :region, :region_t,
          :x_origin, :int16,
          :y_origin, :int16
    end

    class SetGCClipRegionCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_set_gc_clip_region_checked, [:pointer,:uint8,:gcontext_t,:region_t,:int16,:int16], SetGCClipRegionCookie
    attach_function :xcb_set_gc_clip_region, [:pointer,:uint8,:gcontext_t,:region_t,:int16,:int16], SetGCClipRegionCookie
    class SetWindowShapeRegionRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :dest, :window_t,
          :dest_kind, :kind_t,
          :pad1, [:uint8, 3],
          :x_offset, :int16,
          :y_offset, :int16,
          :region, :region_t
    end

    class SetWindowShapeRegionCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_set_window_shape_region_checked, [:pointer,:uint8,:window_t,:kind_t,:int16,:int16,:region_t], SetWindowShapeRegionCookie
    attach_function :xcb_set_window_shape_region, [:pointer,:uint8,:window_t,:kind_t,:int16,:int16,:region_t], SetWindowShapeRegionCookie
    class SetPictureClipRegionRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :picture, :picture_t,
          :region, :region_t,
          :x_origin, :int16,
          :y_origin, :int16
    end

    class SetPictureClipRegionCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_set_picture_clip_region_checked, [:pointer,:uint8,:picture_t,:region_t,:int16,:int16], SetPictureClipRegionCookie
    attach_function :xcb_set_picture_clip_region, [:pointer,:uint8,:picture_t,:region_t,:int16,:int16], SetPictureClipRegionCookie
    class SetCursorNameRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :cursor, :cursor_t,
          :nbytes, :uint16,
          :pad1, [:uint8, 2]
    end

    class SetCursorNameCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_set_cursor_name_checked, [:pointer,:uint8,:cursor_t,:uint16,:uint32], SetCursorNameCookie
    attach_function :xcb_set_cursor_name, [:pointer,:uint8,:cursor_t,:uint16,:uint32], SetCursorNameCookie
    class GetCursorNameRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :atom, :atom_t,
          :nbytes, :uint16,
          :pad2, [:uint8, 18]
    end

    class GetCursorNameCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_cursor_name, [:pointer,:uint8,:atom_t,:uint16,:uint32], GetCursorNameCookie
    class GetCursorNameReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :atom, :atom_t,
          :nbytes, :uint16,
          :pad2, [:uint8, 18]
    end

    attach_function :xcb_get_cursor_name_reply, [:pointer, GetCursorNameCookie, :pointer], :pointer

        
    class GetCursorImageAndNameRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :x, :int16,
          :y, :int16,
          :width, :uint16,
          :height, :uint16,
          :xhot, :uint16,
          :yhot, :uint16,
          :cursor_serial, :uint32,
          :cursor_atom, :atom_t,
          :nbytes, :uint16,
          :pad2, [:uint8, 2]
    end

    class GetCursorImageAndNameCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_cursor_image_and_name, [:pointer,:uint8,:int16,:int16,:uint16,:uint16,:uint16,:uint16,:uint32,:atom_t,:uint16,:uint32,:uint32], GetCursorImageAndNameCookie
    class GetCursorImageAndNameReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :x, :int16,
          :y, :int16,
          :width, :uint16,
          :height, :uint16,
          :xhot, :uint16,
          :yhot, :uint16,
          :cursor_serial, :uint32,
          :cursor_atom, :atom_t,
          :nbytes, :uint16,
          :pad2, [:uint8, 2]
    end

    attach_function :xcb_get_cursor_image_and_name_reply, [:pointer, GetCursorImageAndNameCookie, :pointer], :pointer

        
    class ChangeCursorRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :source, :cursor_t,
          :destination, :cursor_t
    end

    class ChangeCursorCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_change_cursor_checked, [:pointer,:uint8,:cursor_t,:cursor_t], ChangeCursorCookie
    attach_function :xcb_change_cursor, [:pointer,:uint8,:cursor_t,:cursor_t], ChangeCursorCookie
    class ChangeCursorByNameRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :src, :cursor_t,
          :nbytes, :uint16,
          :pad1, [:uint8, 2]
    end

    class ChangeCursorByNameCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_change_cursor_by_name_checked, [:pointer,:uint8,:cursor_t,:uint16,:uint32], ChangeCursorByNameCookie
    attach_function :xcb_change_cursor_by_name, [:pointer,:uint8,:cursor_t,:uint16,:uint32], ChangeCursorByNameCookie
    class ExpandRegionRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :source, :region_t,
          :destination, :region_t,
          :left, :uint16,
          :right, :uint16,
          :top, :uint16,
          :bottom, :uint16
    end

    class ExpandRegionCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_expand_region_checked, [:pointer,:uint8,:region_t,:region_t,:uint16,:uint16,:uint16,:uint16], ExpandRegionCookie
    attach_function :xcb_expand_region, [:pointer,:uint8,:region_t,:region_t,:uint16,:uint16,:uint16,:uint16], ExpandRegionCookie
    class HideCursorRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :window, :window_t
    end

    class HideCursorCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_hide_cursor_checked, [:pointer,:uint8,:window_t], HideCursorCookie
    attach_function :xcb_hide_cursor, [:pointer,:uint8,:window_t], HideCursorCookie
    class ShowCursorRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :window, :window_t
    end

    class ShowCursorCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_show_cursor_checked, [:pointer,:uint8,:window_t], ShowCursorCookie
    attach_function :xcb_show_cursor, [:pointer,:uint8,:window_t], ShowCursorCookie
  end
end
