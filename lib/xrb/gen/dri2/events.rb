#
# This file was auto-generated. Do not edit.
#

module Xrb
  module DRI2
    module Event
      class BufferSwapComplete < Xrb::Message
        OPCODE = 0

        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :event_type, {type: :uint16},
            :pad2, {size: 2, type: :uint8},
            :drawable, {type: :uint32},
            :ust_hi, {type: :uint32},
            :ust_lo, {type: :uint32},
            :msc_hi, {type: :uint32},
            :msc_lo, {type: :uint32},
            :sbc, {type: :uint32}

        def to_sym
          :BufferSwapComplete
        end
      end

      class InvalidateBuffers < Xrb::Message
        OPCODE = 1

        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :drawable, {type: :uint32}

        def to_sym
          :InvalidateBuffers
        end
      end

      @op_map = {
        0 => BufferSwapComplete,
1 => InvalidateBuffers
      }
      def self.find(opcode)
        @op_map[opcode]
      end
    end
  end
end
