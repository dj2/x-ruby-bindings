#
# This file was auto-generated. Do not edit.
#

module Xrb
  module Shape
    module Reply
      class QueryVersion < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :major_version, {type: :uint16},
            :minor_version, {type: :uint16}
      end

      class QueryExtents < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
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

      class InputSelected < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :enabled, {type: :bool},
            :sequence, {type: :uint16},
            :length, {type: :uint32}
      end

      class GetRectangles < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :ordering, {type: :byte},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :rectangles_len, {type: :uint32},
            :pad1, {size: 20, type: :uint8},
            :rectangles, {length_field: :rectangles_len, type: Rectangle, kind: :list}
      end

    end
  end
end
