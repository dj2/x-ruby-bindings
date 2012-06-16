#
# This file was auto-generated. Do not edit.
#

module Xrb
  module Sync
    module Event
      class CounterNotify < Xrb::Message
        OPCODE = 0

        layout \
            :response_type, {type: :uint8},
            :kind, {type: :uint8},
            :sequence, {type: :uint16},
            :counter, {type: :uint32},
            :wait_value, {type: :INT64},
            :counter_value, {type: :INT64},
            :timestamp, {type: :uint32},
            :count, {type: :uint16},
            :destroyed, {type: :bool},
            :pad1, {size: 1, type: :uint8}
      end

      class AlarmNotify < Xrb::Message
        OPCODE = 1

        layout \
            :response_type, {type: :uint8},
            :kind, {type: :uint8},
            :sequence, {type: :uint16},
            :alarm, {type: :uint32},
            :counter_value, {type: :INT64},
            :alarm_value, {type: :INT64},
            :timestamp, {type: :uint32},
            :state, {type: :uint8},
            :pad1, {size: 3, type: :uint8}
      end

      @op_map = {
        0 => CounterNotify,
1 => AlarmNotify
      }
      def self.find(opcode)
        @op_map[opcode]
      end
    end
  end
end
