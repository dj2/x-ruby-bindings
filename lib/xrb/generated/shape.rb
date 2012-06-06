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
    typedef :uint8, :op_t
    class OpIterator < FFI::Struct
      layout \
          :data, :window_t,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_op_next, [:pointer], :void
    attach_function :xcb_op_end, [:pointer], GenericIterator
    typedef :uint8, :kind_t
    class KindIterator < FFI::Struct
      layout \
          :data, :window_t,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_kind_next, [:pointer], :void
    attach_function :xcb_kind_end, [:pointer], GenericIterator
    SO_SET = 1
    SO_UNION = 2
    SO_INTERSECT = 3
    SO_SUBTRACT = 4
    SO_INVERT = 5
    SK_BOUNDING = 1
    SK_CLIP = 2
    SK_INPUT = 3
    class NotifyEvent < FFI::Struct
      layout \
          :response_type, :uint8,
          :shape_kind, :kind_t,
          :affected_window, :window_t,
          :extents_x, :int16,
          :extents_y, :int16,
          :extents_width, :uint16,
          :extents_height, :uint16,
          :server_time, :timestamp_t,
          :shaped, :bool,
          :pad1, [:uint8, 11]
    end

    class QueryVersionRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :major_version, :uint16,
          :minor_version, :uint16
    end

    class QueryVersionCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_query_version, [:pointer,:uint8,:uint16,:uint16], QueryVersionCookie
    class QueryVersionReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :major_version, :uint16,
          :minor_version, :uint16
    end

    attach_function :xcb_query_version_reply, [:pointer, QueryVersionCookie, :pointer], :pointer

        
    class RectanglesRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :operation, :op_t,
          :destination_kind, :kind_t,
          :ordering, :uint8,
          :pad1, [:uint8, 1],
          :destination_window, :window_t,
          :x_offset, :int16,
          :y_offset, :int16
    end

    class RectanglesCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_rectangles_checked, [:pointer,:uint8,:op_t,:kind_t,:uint8,:window_t,:int16,:int16,:uint32], RectanglesCookie
    attach_function :xcb_rectangles, [:pointer,:uint8,:op_t,:kind_t,:uint8,:window_t,:int16,:int16,:uint32], RectanglesCookie
    class MaskRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :operation, :op_t,
          :destination_kind, :kind_t,
          :pad1, [:uint8, 2],
          :destination_window, :window_t,
          :x_offset, :int16,
          :y_offset, :int16,
          :source_bitmap, :pixmap_t
    end

    class MaskCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_mask_checked, [:pointer,:uint8,:op_t,:kind_t,:window_t,:int16,:int16,:pixmap_t], MaskCookie
    attach_function :xcb_mask, [:pointer,:uint8,:op_t,:kind_t,:window_t,:int16,:int16,:pixmap_t], MaskCookie
    class CombineRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :operation, :op_t,
          :destination_kind, :kind_t,
          :source_kind, :kind_t,
          :pad1, [:uint8, 1],
          :destination_window, :window_t,
          :x_offset, :int16,
          :y_offset, :int16,
          :source_window, :window_t
    end

    class CombineCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_combine_checked, [:pointer,:uint8,:op_t,:kind_t,:kind_t,:window_t,:int16,:int16,:window_t], CombineCookie
    attach_function :xcb_combine, [:pointer,:uint8,:op_t,:kind_t,:kind_t,:window_t,:int16,:int16,:window_t], CombineCookie
    class OffsetRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :destination_kind, :kind_t,
          :pad1, [:uint8, 3],
          :destination_window, :window_t,
          :x_offset, :int16,
          :y_offset, :int16
    end

    class OffsetCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_offset_checked, [:pointer,:uint8,:kind_t,:window_t,:int16,:int16], OffsetCookie
    attach_function :xcb_offset, [:pointer,:uint8,:kind_t,:window_t,:int16,:int16], OffsetCookie
    class QueryExtentsRequest < FFI::Struct
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

    class QueryExtentsCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_query_extents, [:pointer,:uint8,:bool,:bool,:int16,:int16,:uint16,:uint16,:int16,:int16,:uint16,:uint16], QueryExtentsCookie
    class QueryExtentsReply < FFI::Struct
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

    attach_function :xcb_query_extents_reply, [:pointer, QueryExtentsCookie, :pointer], :pointer

        
    class SelectInputRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :destination_window, :window_t,
          :enable, :bool,
          :pad1, [:uint8, 3]
    end

    class SelectInputCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_select_input_checked, [:pointer,:uint8,:window_t,:bool], SelectInputCookie
    attach_function :xcb_select_input, [:pointer,:uint8,:window_t,:bool], SelectInputCookie
    class InputSelectedRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16
    end

    class InputSelectedCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_input_selected, [:pointer,:uint8], InputSelectedCookie
    class InputSelectedReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :enabled, :bool,
          :sequence, :uint16,
          :length, :uint32
    end

    attach_function :xcb_input_selected_reply, [:pointer, InputSelectedCookie, :pointer], :pointer

        
    class GetRectanglesRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :rectangles_len, :uint32,
          :pad1, [:uint8, 20]
    end

    class GetRectanglesCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_rectangles, [:pointer,:uint8,:uint32,:uint32], GetRectanglesCookie
    class GetRectanglesReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :ordering, :uint8,
          :sequence, :uint16,
          :length, :uint32,
          :rectangles_len, :uint32,
          :pad1, [:uint8, 20]
    end

    attach_function :xcb_get_rectangles_reply, [:pointer, GetRectanglesCookie, :pointer], :pointer

        
  end
end
