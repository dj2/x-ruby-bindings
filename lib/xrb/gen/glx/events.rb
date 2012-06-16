#
# This file was auto-generated. Do not edit.
#

module Xrb
  module Glx
    module Event
      class PbufferClobber < Xrb::Message
        OPCODE = 0

        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :event_type, {type: :uint16},
            :draw_type, {type: :uint16},
            :drawable, {type: :uint32},
            :b_mask, {type: :uint32},
            :aux_buffer, {type: :uint16},
            :x, {type: :uint16},
            :y, {type: :uint16},
            :width, {type: :uint16},
            :height, {type: :uint16},
            :count, {type: :uint16},
            :pad2, {size: 4, type: :uint8}
      end

      @op_map = {
        0 => PbufferClobber
      }
      def self.find(opcode)
        @op_map[opcode]
      end
    end
  end
end
