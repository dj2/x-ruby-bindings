#
# This file was auto-generated. Do not edit.
#

module Xrb
  module Shape
    module Event
      class Notify < Xrb::Message
        OPCODE = 0
        
        layout \
            :response_type, {type: :uint8},
            :shape_kind, {type: :uint8},
            :affected_window, {type: :uint32},
            :extents_x, {type: :int16},
            :extents_y, {type: :int16},
            :extents_width, {type: :uint16},
            :extents_height, {type: :uint16},
            :server_time, {type: :uint32},
            :shaped, {type: :bool},
            :pad1, {size: 11, type: :uint8}
      end
      
      @op_map = {
        0 => Notify
      }
      def self.find(opcode)
        @op_map[opcode]
      end
    end
  end
end
