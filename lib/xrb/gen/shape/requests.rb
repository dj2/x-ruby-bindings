#
# This file was auto-generated. Do not edit.
#

module Xrb
  module Shape
    module Request
      class QueryVersion < Xrb::Message
        include Xrb::Request

        OPCODE = 0

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :major_version, {type: :uint16},
            :minor_version, {type: :uint16}
      end

      class Rectangles < Xrb::Message
        include Xrb::Request

        OPCODE = 1

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :operation, {type: :uint8},
            :destination_kind, {type: :uint8},
            :ordering, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :destination_window, {type: :uint32},
            :x_offset, {type: :int16},
            :y_offset, {type: :int16},
            :rectangles, {type: Rectangle, kind: :list}
      end

      class Mask < Xrb::Message
        include Xrb::Request

        OPCODE = 2

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :operation, {type: :uint8},
            :destination_kind, {type: :uint8},
            :pad1, {size: 2, type: :uint8},
            :destination_window, {type: :uint32},
            :x_offset, {type: :int16},
            :y_offset, {type: :int16},
            :source_bitmap, {type: :uint32}
      end

      class Combine < Xrb::Message
        include Xrb::Request

        OPCODE = 3

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :operation, {type: :uint8},
            :destination_kind, {type: :uint8},
            :source_kind, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :destination_window, {type: :uint32},
            :x_offset, {type: :int16},
            :y_offset, {type: :int16},
            :source_window, {type: :uint32}
      end

      class Offset < Xrb::Message
        include Xrb::Request

        OPCODE = 4

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :destination_kind, {type: :uint8},
            :pad1, {size: 3, type: :uint8},
            :destination_window, {type: :uint32},
            :x_offset, {type: :int16},
            :y_offset, {type: :int16}
      end

      class QueryExtents < Xrb::Message
        include Xrb::Request

        OPCODE = 5

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :bounding_shaped, {type: :bool},
            :clip_shaped, {type: :bool},
            :pad2, {size: 2, type: :uint8},
            :bounding_shape_extents_x, {type: :int16},
            :bounding_shape_extents_y, {type: :int16},
            :bounding_shape_extents_width, {type: :uint16},
            :bounding_shape_extents_height, {type: :uint16},
            :clip_shape_extents_x, {type: :int16},
            :clip_shape_extents_y, {type: :int16},
            :clip_shape_extents_width, {type: :uint16},
            :clip_shape_extents_height, {type: :uint16}
      end

      class SelectInput < Xrb::Message
        include Xrb::Request

        OPCODE = 6

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :destination_window, {type: :uint32},
            :enable, {type: :bool},
            :pad1, {size: 3, type: :uint8}
      end

      class InputSelected < Xrb::Message
        include Xrb::Request

        OPCODE = 7

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16}
      end

      class GetRectangles < Xrb::Message
        include Xrb::Request

        OPCODE = 8

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :rectangles_len, {type: :uint32},
            :pad1, {size: 20, type: :uint8},
            :rectangles, {length_field: :rectangles_len, type: Rectangle, kind: :list}
      end

    end
  end
end
