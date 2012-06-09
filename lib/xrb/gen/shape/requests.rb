#
# This file was auto-generated. Do not edit.
#

module Xrb
  module Shape
    module Request
      class QueryVersion < Xrb::Message
        OPCODE = 0
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :major_version, :uint16,
            :minor_version, :uint16
      end
      
      class Rectangles < Xrb::Message
        OPCODE = 1
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :operation, :uint8,
            :destination_kind, :uint8,
            :ordering, :uint8,
            :pad1, [:uint8, 1],
            :destination_window, :uint32,
            :x_offset, :int16,
            :y_offset, :int16
      end
      
      class Mask < Xrb::Message
        OPCODE = 2
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :operation, :uint8,
            :destination_kind, :uint8,
            :pad1, [:uint8, 2],
            :destination_window, :uint32,
            :x_offset, :int16,
            :y_offset, :int16,
            :source_bitmap, :uint32
      end
      
      class Combine < Xrb::Message
        OPCODE = 3
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :operation, :uint8,
            :destination_kind, :uint8,
            :source_kind, :uint8,
            :pad1, [:uint8, 1],
            :destination_window, :uint32,
            :x_offset, :int16,
            :y_offset, :int16,
            :source_window, :uint32
      end
      
      class Offset < Xrb::Message
        OPCODE = 4
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :destination_kind, :uint8,
            :pad1, [:uint8, 3],
            :destination_window, :uint32,
            :x_offset, :int16,
            :y_offset, :int16
      end
      
      class QueryExtents < Xrb::Message
        OPCODE = 5
        
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
      
      class SelectInput < Xrb::Message
        OPCODE = 6
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :destination_window, :uint32,
            :enable, :bool,
            :pad1, [:uint8, 3]
      end
      
      class InputSelected < Xrb::Message
        OPCODE = 7
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16
      end
      
      class GetRectangles < Xrb::Message
        OPCODE = 8
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :rectangles_len, :uint32,
            :pad1, [:uint8, 20]
      end
      
    end
  end
end
