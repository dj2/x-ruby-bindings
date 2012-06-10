#
# This file was auto-generated. Do not edit.
#

module Xrb
  module Shape
    module Event
      class Notify < Xrb::Message
        OPCODE = 0
        
        layout \
            :response_type, :uint8,
            :shape_kind, :uint8,
            :affected_window, :uint32,
            :extents_x, :int16,
            :extents_y, :int16,
            :extents_width, :uint16,
            :extents_height, :uint16,
            :server_time, :uint32,
            :shaped, :bool,
            :pad1, [11, :uint8]
      end
      
    end
  end
end
