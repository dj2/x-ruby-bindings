#
# This file was auto-generated. Do not edit.
#

module Xrb
  module Shape
    module Reply
      class QueryVersion < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [1, :uint8],
            :sequence, :uint16,
            :length, :uint32,
            :major_version, :uint16,
            :minor_version, :uint16
      end
      
      class QueryExtents < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [1, :uint8],
            :sequence, :uint16,
            :length, :uint32,
            :bounding_shaped, :bool,
            :clip_shaped, :bool,
            :pad2, [2, :uint8],
            :bounding_shape_extents_x, :int16,
            :bounding_shape_extents_y, :int16,
            :bounding_shape_extents_width, :uint16,
            :bounding_shape_extents_height, :uint16,
            :clip_shape_extents_x, :int16,
            :clip_shape_extents_y, :int16,
            :clip_shape_extents_width, :uint16,
            :clip_shape_extents_height, :uint16
      end
      
      class InputSelected < Xrb::Message
        layout \
            :response_type, :uint8,
            :enabled, :bool,
            :sequence, :uint16,
            :length, :uint32
      end
      
      class GetRectangles < Xrb::Message
        layout \
            :response_type, :uint8,
            :ordering, :uint8,
            :sequence, :uint16,
            :length, :uint32,
            :rectangles_len, :uint32,
            :pad1, [20, :uint8],
            :rectangles, [:rectangles_len, Rectangle, :list]
      end
      
    end
  end
end
