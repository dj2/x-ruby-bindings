#
# This file was auto-generated. Do not edit.
#

module Xrb
  module Sync
    module Error
      class Counter < Xrb::Message
        OPCODE = 0

        layout \
            :response_type, {type: :uint8},
            :error_code, {type: :uint8},
            :sequence, {type: :uint16},
            :bad_counter, {type: :uint32},
            :minor_opcode, {type: :uint16},
            :major_opcode, {type: :uint8}
      end

      class Alarm < Xrb::Message
        OPCODE = 1

        layout \
            :response_type, {type: :uint8},
            :error_code, {type: :uint8},
            :sequence, {type: :uint16},
            :bad_alarm, {type: :uint32},
            :minor_opcode, {type: :uint16},
            :major_opcode, {type: :uint8}
      end

      @op_map = {
        0 => Counter,
1 => Alarm
      }
      def self.find(opcode)
        @op_map[opcode]
      end
    end
  end
end
