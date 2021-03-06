#
# This file was auto-generated. Do not edit.
#

module Xrb
  module ScreenSaver
    module Event
      class Notify < Xrb::Message
        OPCODE = 0

        layout \
            :response_type, {type: :uint8},
            :code, {type: :uint8},
            :sequence, {type: :uint16},
            :state, {type: :byte},
            :pad1, {size: 1, type: :uint8},
            :sequence_number, {type: :uint16},
            :time, {type: :uint32},
            :root, {type: :uint32},
            :window, {type: :uint32},
            :kind, {type: :byte},
            :forced, {type: :bool},
            :pad2, {size: 14, type: :uint8}

        def to_sym
          :Notify
        end
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
