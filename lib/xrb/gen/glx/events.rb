#
# This file was auto-generated. Do not edit.
#

module Xrb
  module Glx
    module Event
      class PbufferClobber < Xrb::Message
        OPCODE = 0
        
        layout \
            :response_type, :uint8,
            :pad1, [:uint8, 1],
            :event_type, :uint16,
            :draw_type, :uint16,
            :drawable, :uint32,
            :b_mask, :uint32,
            :aux_buffer, :uint16,
            :x, :uint16,
            :y, :uint16,
            :width, :uint16,
            :height, :uint16,
            :count, :uint16,
            :pad2, [:uint8, 4]
      end
      
    end
  end
end
