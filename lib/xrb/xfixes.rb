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
    enum :xrb_save_set_mode_t, [
        :xrb_save_set_mode_insert, 1,
        :xrb_save_set_mode_delete, 2
    ]
    enum :xrb_save_set_target_t, [
        :xrb_save_set_target_nearest, 1,
        :xrb_save_set_target_root, 2
    ]
    enum :xrb_save_set_mapping_t, [
        :xrb_save_set_mapping_map, 1,
        :xrb_save_set_mapping_unmap, 2
    ]
    enum :xrb_selection_event_t, [
        :xrb_selection_event_set_selection_owner, 1,
        :xrb_selection_event_selection_window_destroy, 2,
        :xrb_selection_event_selection_client_close, 3
    ]
    enum :xrb_selection_event_mask_t, [
        :xrb_selection_event_mask_set_selection_owner, 1 << 0,
        :xrb_selection_event_mask_selection_window_destroy, 1 << 1,
        :xrb_selection_event_mask_selection_client_close, 1 << 2
    ]
    enum :xrb_cursor_notify_t, [
        :xrb_cursor_notify_display_cursor, 1
    ]
    enum :xrb_cursor_notify_mask_t, [
        :xrb_cursor_notify_mask_display_cursor, 1 << 0
    ]
    typedef :uint32, :xrb_region_t
    class XrbRegionIterator < FFI::Struct
      layout \
          :data, :xrb_window_t,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_region_next, [:pointer], :void
    attach_function :xcb_region_end, [:pointer], XrbGenericIterator
    enum :xrb_region_t, [
        :xrb_region_none, 1
    ]
    class XrbSelectionNotifyEvent < FFI::Struct
      layout \
          :response_type, :uint8,
          :subtype, :uint8,
          :window, :xrb_window_t,
          :owner, :xrb_window_t,
          :selection, :xrb_atom_t,
          :timestamp, :xrb_timestamp_t,
          :selection_timestamp, :xrb_timestamp_t,
          :pad1, [:uint8, 8]
    end

    class XrbCursorNotifyEvent < FFI::Struct
      layout \
          :response_type, :uint8,
          :subtype, :uint8,
          :window, :xrb_window_t,
          :cursor_serial, :uint32,
          :timestamp, :xrb_timestamp_t,
          :name, :xrb_atom_t,
          :pad1, [:uint8, 12]
    end

    class XrbBadRegionError < FFI::Struct
      layout \
          :response_type, :uint8,
          :error_code, :uint8,
          :sequence, :uint16
    end

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

        
    class XrbChangeSaveSetRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :mode, :uint8,
          :target, :uint8,
          :map, :uint8,
          :pad1, [:uint8, 1],
          :window, :xrb_window_t
    end

    class XrbChangeSaveSetCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_change_save_set_checked, [:pointer,:uint8,:uint8,:uint16,:uint8,:uint8,:uint8,:xrb_window_t], XrbChangeSaveSetCookie
    attach_function :xcb_change_save_set, [:pointer,:uint8,:uint8,:uint16,:uint8,:uint8,:uint8,:xrb_window_t], XrbChangeSaveSetCookie
    class XrbSelectSelectionInputRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :window, :xrb_window_t,
          :selection, :xrb_atom_t,
          :event_mask, :uint32
    end

    class XrbSelectSelectionInputCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_select_selection_input_checked, [:pointer,:uint8,:uint8,:uint16,:xrb_window_t,:xrb_atom_t,:uint32], XrbSelectSelectionInputCookie
    attach_function :xcb_select_selection_input, [:pointer,:uint8,:uint8,:uint16,:xrb_window_t,:xrb_atom_t,:uint32], XrbSelectSelectionInputCookie
    class XrbSelectCursorInputRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :window, :xrb_window_t,
          :event_mask, :uint32
    end

    class XrbSelectCursorInputCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_select_cursor_input_checked, [:pointer,:uint8,:uint8,:uint16,:xrb_window_t,:uint32], XrbSelectCursorInputCookie
    attach_function :xcb_select_cursor_input, [:pointer,:uint8,:uint8,:uint16,:xrb_window_t,:uint32], XrbSelectCursorInputCookie
    class XrbGetCursorImageRequest < FFI::Struct
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

    class XrbGetCursorImageCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_cursor_image, [:pointer,:uint8,:uint8,:uint16,:int16,:int16,:uint16,:uint16,:uint16,:uint16,:uint32,:uint32], XrbGetCursorImageCookie
    class XrbGetCursorImageReply < FFI::Struct
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

    attach_function :xcb_get_cursor_image_reply, [:pointer, XrbGetCursorImageCookie, :pointer], :pointer

        
    class XrbCreateRegionRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :region, :xrb_region_t
    end

    class XrbCreateRegionCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_create_region_checked, [:pointer,:uint8,:uint8,:uint16,:xrb_region_t,:uint32], XrbCreateRegionCookie
    attach_function :xcb_create_region, [:pointer,:uint8,:uint8,:uint16,:xrb_region_t,:uint32], XrbCreateRegionCookie
    class XrbCreateRegionFromBitmapRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :region, :xrb_region_t,
          :bitmap, :xrb_pixmap_t
    end

    class XrbCreateRegionFromBitmapCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_create_region_from_bitmap_checked, [:pointer,:uint8,:uint8,:uint16,:xrb_region_t,:xrb_pixmap_t], XrbCreateRegionFromBitmapCookie
    attach_function :xcb_create_region_from_bitmap, [:pointer,:uint8,:uint8,:uint16,:xrb_region_t,:xrb_pixmap_t], XrbCreateRegionFromBitmapCookie
    class XrbCreateRegionFromWindowRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :region, :xrb_region_t,
          :window, :xrb_window_t,
          :kind, :xrb_kind_t,
          :pad1, [:uint8, 3]
    end

    class XrbCreateRegionFromWindowCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_create_region_from_window_checked, [:pointer,:uint8,:uint8,:uint16,:xrb_region_t,:xrb_window_t,:xrb_kind_t], XrbCreateRegionFromWindowCookie
    attach_function :xcb_create_region_from_window, [:pointer,:uint8,:uint8,:uint16,:xrb_region_t,:xrb_window_t,:xrb_kind_t], XrbCreateRegionFromWindowCookie
    class XrbCreateRegionFromGCRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :region, :xrb_region_t,
          :gc, :xrb_gcontext_t
    end

    class XrbCreateRegionFromGCCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_create_region_from_gc_checked, [:pointer,:uint8,:uint8,:uint16,:xrb_region_t,:xrb_gcontext_t], XrbCreateRegionFromGCCookie
    attach_function :xcb_create_region_from_gc, [:pointer,:uint8,:uint8,:uint16,:xrb_region_t,:xrb_gcontext_t], XrbCreateRegionFromGCCookie
    class XrbCreateRegionFromPictureRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :region, :xrb_region_t,
          :picture, :xrb_picture_t
    end

    class XrbCreateRegionFromPictureCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_create_region_from_picture_checked, [:pointer,:uint8,:uint8,:uint16,:xrb_region_t,:xrb_picture_t], XrbCreateRegionFromPictureCookie
    attach_function :xcb_create_region_from_picture, [:pointer,:uint8,:uint8,:uint16,:xrb_region_t,:xrb_picture_t], XrbCreateRegionFromPictureCookie
    class XrbDestroyRegionRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :region, :xrb_region_t
    end

    class XrbDestroyRegionCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_destroy_region_checked, [:pointer,:uint8,:uint8,:uint16,:xrb_region_t], XrbDestroyRegionCookie
    attach_function :xcb_destroy_region, [:pointer,:uint8,:uint8,:uint16,:xrb_region_t], XrbDestroyRegionCookie
    class XrbSetRegionRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :region, :xrb_region_t
    end

    class XrbSetRegionCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_set_region_checked, [:pointer,:uint8,:uint8,:uint16,:xrb_region_t,:uint32], XrbSetRegionCookie
    attach_function :xcb_set_region, [:pointer,:uint8,:uint8,:uint16,:xrb_region_t,:uint32], XrbSetRegionCookie
    class XrbCopyRegionRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :source, :xrb_region_t,
          :destination, :xrb_region_t
    end

    class XrbCopyRegionCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_copy_region_checked, [:pointer,:uint8,:uint8,:uint16,:xrb_region_t,:xrb_region_t], XrbCopyRegionCookie
    attach_function :xcb_copy_region, [:pointer,:uint8,:uint8,:uint16,:xrb_region_t,:xrb_region_t], XrbCopyRegionCookie
    class XrbUnionRegionRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :source1, :xrb_region_t,
          :source2, :xrb_region_t,
          :destination, :xrb_region_t
    end

    class XrbUnionRegionCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_union_region_checked, [:pointer,:uint8,:uint8,:uint16,:xrb_region_t,:xrb_region_t,:xrb_region_t], XrbUnionRegionCookie
    attach_function :xcb_union_region, [:pointer,:uint8,:uint8,:uint16,:xrb_region_t,:xrb_region_t,:xrb_region_t], XrbUnionRegionCookie
    class XrbIntersectRegionRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :source1, :xrb_region_t,
          :source2, :xrb_region_t,
          :destination, :xrb_region_t
    end

    class XrbIntersectRegionCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_intersect_region_checked, [:pointer,:uint8,:uint8,:uint16,:xrb_region_t,:xrb_region_t,:xrb_region_t], XrbIntersectRegionCookie
    attach_function :xcb_intersect_region, [:pointer,:uint8,:uint8,:uint16,:xrb_region_t,:xrb_region_t,:xrb_region_t], XrbIntersectRegionCookie
    class XrbSubtractRegionRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :source1, :xrb_region_t,
          :source2, :xrb_region_t,
          :destination, :xrb_region_t
    end

    class XrbSubtractRegionCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_subtract_region_checked, [:pointer,:uint8,:uint8,:uint16,:xrb_region_t,:xrb_region_t,:xrb_region_t], XrbSubtractRegionCookie
    attach_function :xcb_subtract_region, [:pointer,:uint8,:uint8,:uint16,:xrb_region_t,:xrb_region_t,:xrb_region_t], XrbSubtractRegionCookie
    class XrbInvertRegionRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :source, :xrb_region_t,
          :bounds, XrbRectangle,
          :destination, :xrb_region_t
    end

    class XrbInvertRegionCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_invert_region_checked, [:pointer,:uint8,:uint8,:uint16,:xrb_region_t,XrbRectangle,:xrb_region_t], XrbInvertRegionCookie
    attach_function :xcb_invert_region, [:pointer,:uint8,:uint8,:uint16,:xrb_region_t,XrbRectangle,:xrb_region_t], XrbInvertRegionCookie
    class XrbTranslateRegionRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :region, :xrb_region_t,
          :dx, :int16,
          :dy, :int16
    end

    class XrbTranslateRegionCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_translate_region_checked, [:pointer,:uint8,:uint8,:uint16,:xrb_region_t,:int16,:int16], XrbTranslateRegionCookie
    attach_function :xcb_translate_region, [:pointer,:uint8,:uint8,:uint16,:xrb_region_t,:int16,:int16], XrbTranslateRegionCookie
    class XrbRegionExtentsRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :source, :xrb_region_t,
          :destination, :xrb_region_t
    end

    class XrbRegionExtentsCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_region_extents_checked, [:pointer,:uint8,:uint8,:uint16,:xrb_region_t,:xrb_region_t], XrbRegionExtentsCookie
    attach_function :xcb_region_extents, [:pointer,:uint8,:uint8,:uint16,:xrb_region_t,:xrb_region_t], XrbRegionExtentsCookie
    class XrbFetchRegionRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :extents, XrbRectangle,
          :pad2, [:uint8, 16]
    end

    class XrbFetchRegionCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_fetch_region, [:pointer,:uint8,:uint8,:uint16,XrbRectangle,:uint32], XrbFetchRegionCookie
    class XrbFetchRegionReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :extents, XrbRectangle,
          :pad2, [:uint8, 16]
    end

    attach_function :xcb_fetch_region_reply, [:pointer, XrbFetchRegionCookie, :pointer], :pointer

        
    class XrbSetGCClipRegionRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :gc, :xrb_gcontext_t,
          :region, :xrb_region_t,
          :x_origin, :int16,
          :y_origin, :int16
    end

    class XrbSetGCClipRegionCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_set_gc_clip_region_checked, [:pointer,:uint8,:uint8,:uint16,:xrb_gcontext_t,:xrb_region_t,:int16,:int16], XrbSetGCClipRegionCookie
    attach_function :xcb_set_gc_clip_region, [:pointer,:uint8,:uint8,:uint16,:xrb_gcontext_t,:xrb_region_t,:int16,:int16], XrbSetGCClipRegionCookie
    class XrbSetWindowShapeRegionRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :dest, :xrb_window_t,
          :dest_kind, :xrb_kind_t,
          :pad1, [:uint8, 3],
          :x_offset, :int16,
          :y_offset, :int16,
          :region, :xrb_region_t
    end

    class XrbSetWindowShapeRegionCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_set_window_shape_region_checked, [:pointer,:uint8,:uint8,:uint16,:xrb_window_t,:xrb_kind_t,:int16,:int16,:xrb_region_t], XrbSetWindowShapeRegionCookie
    attach_function :xcb_set_window_shape_region, [:pointer,:uint8,:uint8,:uint16,:xrb_window_t,:xrb_kind_t,:int16,:int16,:xrb_region_t], XrbSetWindowShapeRegionCookie
    class XrbSetPictureClipRegionRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :picture, :xrb_picture_t,
          :region, :xrb_region_t,
          :x_origin, :int16,
          :y_origin, :int16
    end

    class XrbSetPictureClipRegionCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_set_picture_clip_region_checked, [:pointer,:uint8,:uint8,:uint16,:xrb_picture_t,:xrb_region_t,:int16,:int16], XrbSetPictureClipRegionCookie
    attach_function :xcb_set_picture_clip_region, [:pointer,:uint8,:uint8,:uint16,:xrb_picture_t,:xrb_region_t,:int16,:int16], XrbSetPictureClipRegionCookie
    class XrbSetCursorNameRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :cursor, :xrb_cursor_t,
          :nbytes, :uint16,
          :pad1, [:uint8, 2]
    end

    class XrbSetCursorNameCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_set_cursor_name_checked, [:pointer,:uint8,:uint8,:uint16,:xrb_cursor_t,:uint16,:uint32], XrbSetCursorNameCookie
    attach_function :xcb_set_cursor_name, [:pointer,:uint8,:uint8,:uint16,:xrb_cursor_t,:uint16,:uint32], XrbSetCursorNameCookie
    class XrbGetCursorNameRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :atom, :xrb_atom_t,
          :nbytes, :uint16,
          :pad2, [:uint8, 18]
    end

    class XrbGetCursorNameCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_cursor_name, [:pointer,:uint8,:uint8,:uint16,:xrb_atom_t,:uint16,:uint32], XrbGetCursorNameCookie
    class XrbGetCursorNameReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :atom, :xrb_atom_t,
          :nbytes, :uint16,
          :pad2, [:uint8, 18]
    end

    attach_function :xcb_get_cursor_name_reply, [:pointer, XrbGetCursorNameCookie, :pointer], :pointer

        
    class XrbGetCursorImageAndNameRequest < FFI::Struct
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
          :cursor_atom, :xrb_atom_t,
          :nbytes, :uint16,
          :pad2, [:uint8, 2]
    end

    class XrbGetCursorImageAndNameCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_cursor_image_and_name, [:pointer,:uint8,:uint8,:uint16,:int16,:int16,:uint16,:uint16,:uint16,:uint16,:uint32,:xrb_atom_t,:uint16,:uint32,:uint32], XrbGetCursorImageAndNameCookie
    class XrbGetCursorImageAndNameReply < FFI::Struct
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
          :cursor_atom, :xrb_atom_t,
          :nbytes, :uint16,
          :pad2, [:uint8, 2]
    end

    attach_function :xcb_get_cursor_image_and_name_reply, [:pointer, XrbGetCursorImageAndNameCookie, :pointer], :pointer

        
    class XrbChangeCursorRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :source, :xrb_cursor_t,
          :destination, :xrb_cursor_t
    end

    class XrbChangeCursorCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_change_cursor_checked, [:pointer,:uint8,:uint8,:uint16,:xrb_cursor_t,:xrb_cursor_t], XrbChangeCursorCookie
    attach_function :xcb_change_cursor, [:pointer,:uint8,:uint8,:uint16,:xrb_cursor_t,:xrb_cursor_t], XrbChangeCursorCookie
    class XrbChangeCursorByNameRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :src, :xrb_cursor_t,
          :nbytes, :uint16,
          :pad1, [:uint8, 2]
    end

    class XrbChangeCursorByNameCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_change_cursor_by_name_checked, [:pointer,:uint8,:uint8,:uint16,:xrb_cursor_t,:uint16,:uint32], XrbChangeCursorByNameCookie
    attach_function :xcb_change_cursor_by_name, [:pointer,:uint8,:uint8,:uint16,:xrb_cursor_t,:uint16,:uint32], XrbChangeCursorByNameCookie
    class XrbExpandRegionRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :source, :xrb_region_t,
          :destination, :xrb_region_t,
          :left, :uint16,
          :right, :uint16,
          :top, :uint16,
          :bottom, :uint16
    end

    class XrbExpandRegionCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_expand_region_checked, [:pointer,:uint8,:uint8,:uint16,:xrb_region_t,:xrb_region_t,:uint16,:uint16,:uint16,:uint16], XrbExpandRegionCookie
    attach_function :xcb_expand_region, [:pointer,:uint8,:uint8,:uint16,:xrb_region_t,:xrb_region_t,:uint16,:uint16,:uint16,:uint16], XrbExpandRegionCookie
    class XrbHideCursorRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :window, :xrb_window_t
    end

    class XrbHideCursorCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_hide_cursor_checked, [:pointer,:uint8,:uint8,:uint16,:xrb_window_t], XrbHideCursorCookie
    attach_function :xcb_hide_cursor, [:pointer,:uint8,:uint8,:uint16,:xrb_window_t], XrbHideCursorCookie
    class XrbShowCursorRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :window, :xrb_window_t
    end

    class XrbShowCursorCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_show_cursor_checked, [:pointer,:uint8,:uint8,:uint16,:xrb_window_t], XrbShowCursorCookie
    attach_function :xcb_show_cursor, [:pointer,:uint8,:uint8,:uint16,:xrb_window_t], XrbShowCursorCookie
  end
end
