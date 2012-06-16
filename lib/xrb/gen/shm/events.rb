#
# This file was auto-generated. Do not edit.
#

module Xrb
  module Shm
    module Event
      class Completion < Xrb::Message
        OPCODE = 0

        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :drawable, {type: :uint32},
            :minor_event, {type: :uint16},
            :major_event, {type: :uint8},
            :pad2, {size: 1, type: :uint8},
            :shmseg, {type: :uint32},
            :offset, {type: :uint32}
      end

      @op_map = {
        0 => Completion
      }
      def self.find(opcode)
        @op_map[opcode]
      end
    end
  end
end
