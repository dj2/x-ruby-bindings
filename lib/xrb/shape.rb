#
# This file auto-generated. Do not edit.
#

require 'ffi'
require 'xrb/xproto'
class Xrb
  class Shape
    extend FFI::Library
    ffi_lib 'shape'
    MAJOR_VERSION = 1
    MINOR_VERSION = 1
    typedef :uint8, :xrb_op_t
    class XrbOpIterator < FFI::Struct
      layout \
          :data, :xrb_window_t,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_op_next, [:pointer], :void
    attach_function :xcb_op_end, [:pointer], XrbGenericIterator
    typedef :uint8, :xrb_kind_t
    class XrbKindIterator < FFI::Struct
      layout \
          :data, :xrb_window_t,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_kind_next, [:pointer], :void
    attach_function :xcb_kind_end, [:pointer], XrbGenericIterator
    enum :xrb_so_t, [
        :xrb_so_set, 1,
        :xrb_so_union, 2,
        :xrb_so_intersect, 3,
        :xrb_so_subtract, 4,
        :xrb_so_invert, 5
    ]
    enum :xrb_sk_t, [
        :xrb_sk_bounding, 1,
        :xrb_sk_clip, 2,
        :xrb_sk_input, 3
    ]
    class XrbNotifyEvent < FFI::Struct
      layout \
          :response_type, :uint8,
          :shape_kind, :xrb_kind_t,
          :affected_window, :xrb_window_t,
          :extents_x, :int16,
          :extents_y, :int16,
          :extents_width, :uint16,
          :extents_height, :uint16,
          :server_time, :xrb_timestamp_t,
          :shaped, :bool,
          :pad1, [:uint8, 11]
    end

    class XrbQueryVersionRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :major_version, :uint16,
          :minor_version, :uint16
    end

    class XrbQueryVersionCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_query_version, [:pointer,:uint8,:uint8,:uint16,:uint16,:uint16], XrbQueryVersionCookie
    class XrbQueryVersionReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :major_version, :uint16,
          :minor_version, :uint16
    end

    attach_function :xcb_query_version_reply, [:pointer, XrbQueryVersionCookie, :pointer], :pointer

        
    class XrbRectanglesRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :operation, :xrb_op_t,
          :destination_kind, :xrb_kind_t,
          :ordering, :uint8,
          :pad1, [:uint8, 1],
          :destination_window, :xrb_window_t,
          :x_offset, :int16,
          :y_offset, :int16
    end

    class XrbRectanglesCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_rectangles_checked, [:pointer,:uint8,:uint8,:uint16,:xrb_op_t,:xrb_kind_t,:uint8,:xrb_window_t,:int16,:int16,:uint32], XrbRectanglesCookie
    attach_function :xcb_rectangles, [:pointer,:uint8,:uint8,:uint16,:xrb_op_t,:xrb_kind_t,:uint8,:xrb_window_t,:int16,:int16,:uint32], XrbRectanglesCookie
    class XrbMaskRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :operation, :xrb_op_t,
          :destination_kind, :xrb_kind_t,
          :pad1, [:uint8, 2],
          :destination_window, :xrb_window_t,
          :x_offset, :int16,
          :y_offset, :int16,
          :source_bitmap, :xrb_pixmap_t
    end

    class XrbMaskCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_mask_checked, [:pointer,:uint8,:uint8,:uint16,:xrb_op_t,:xrb_kind_t,:xrb_window_t,:int16,:int16,:xrb_pixmap_t], XrbMaskCookie
    attach_function :xcb_mask, [:pointer,:uint8,:uint8,:uint16,:xrb_op_t,:xrb_kind_t,:xrb_window_t,:int16,:int16,:xrb_pixmap_t], XrbMaskCookie
    class XrbCombineRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :operation, :xrb_op_t,
          :destination_kind, :xrb_kind_t,
          :source_kind, :xrb_kind_t,
          :pad1, [:uint8, 1],
          :destination_window, :xrb_window_t,
          :x_offset, :int16,
          :y_offset, :int16,
          :source_window, :xrb_window_t
    end

    class XrbCombineCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_combine_checked, [:pointer,:uint8,:uint8,:uint16,:xrb_op_t,:xrb_kind_t,:xrb_kind_t,:xrb_window_t,:int16,:int16,:xrb_window_t], XrbCombineCookie
    attach_function :xcb_combine, [:pointer,:uint8,:uint8,:uint16,:xrb_op_t,:xrb_kind_t,:xrb_kind_t,:xrb_window_t,:int16,:int16,:xrb_window_t], XrbCombineCookie
    class XrbOffsetRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :destination_kind, :xrb_kind_t,
          :pad1, [:uint8, 3],
          :destination_window, :xrb_window_t,
          :x_offset, :int16,
          :y_offset, :int16
    end

    class XrbOffsetCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_offset_checked, [:pointer,:uint8,:uint8,:uint16,:xrb_kind_t,:xrb_window_t,:int16,:int16], XrbOffsetCookie
    attach_function :xcb_offset, [:pointer,:uint8,:uint8,:uint16,:xrb_kind_t,:xrb_window_t,:int16,:int16], XrbOffsetCookie
    class XrbQueryExtentsRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :bounding_shaped, :bool,
          :clip_shaped, :bool,
          :pad2, [:uint8, 2],
          :bounding_shape_extents_x, :int16,
          :bounding_shape_extents_y, :int16,
          :bounding_shape_extents_width, :uint16,
          :bounding_shape_extents_height, :uint16,
          :clip_shape_extents_x, :int16,
          :clip_shape_extents_y, :int16,
          :clip_shape_extents_width, :uint16,
          :clip_shape_extents_height, :uint16
    end

    class XrbQueryExtentsCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_query_extents, [:pointer,:uint8,:uint8,:uint16,:bool,:bool,:int16,:int16,:uint16,:uint16,:int16,:int16,:uint16,:uint16], XrbQueryExtentsCookie
    class XrbQueryExtentsReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :bounding_shaped, :bool,
          :clip_shaped, :bool,
          :pad2, [:uint8, 2],
          :bounding_shape_extents_x, :int16,
          :bounding_shape_extents_y, :int16,
          :bounding_shape_extents_width, :uint16,
          :bounding_shape_extents_height, :uint16,
          :clip_shape_extents_x, :int16,
          :clip_shape_extents_y, :int16,
          :clip_shape_extents_width, :uint16,
          :clip_shape_extents_height, :uint16
    end

    attach_function :xcb_query_extents_reply, [:pointer, XrbQueryExtentsCookie, :pointer], :pointer

        
    class XrbSelectInputRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :destination_window, :xrb_window_t,
          :enable, :bool,
          :pad1, [:uint8, 3]
    end

    class XrbSelectInputCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_select_input_checked, [:pointer,:uint8,:uint8,:uint16,:xrb_window_t,:bool], XrbSelectInputCookie
    attach_function :xcb_select_input, [:pointer,:uint8,:uint8,:uint16,:xrb_window_t,:bool], XrbSelectInputCookie
    class XrbInputSelectedRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16
    end

    class XrbInputSelectedCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_input_selected, [:pointer,:uint8,:uint8,:uint16], XrbInputSelectedCookie
    class XrbInputSelectedReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :enabled, :bool,
          :sequence, :uint16,
          :length, :uint32
    end

    attach_function :xcb_input_selected_reply, [:pointer, XrbInputSelectedCookie, :pointer], :pointer

        
    class XrbGetRectanglesRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :rectangles_len, :uint32,
          :pad1, [:uint8, 20]
    end

    class XrbGetRectanglesCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_rectangles, [:pointer,:uint8,:uint8,:uint16,:uint32,:uint32], XrbGetRectanglesCookie
    class XrbGetRectanglesReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :ordering, :uint8,
          :sequence, :uint16,
          :length, :uint32,
          :rectangles_len, :uint32,
          :pad1, [:uint8, 20]
    end

    attach_function :xcb_get_rectangles_reply, [:pointer, XrbGetRectanglesCookie, :pointer], :pointer

        
  end
end
