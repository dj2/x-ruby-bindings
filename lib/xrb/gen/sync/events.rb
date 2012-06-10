#
# This file was auto-generated. Do not edit.
#

module Xrb
  module Sync
    module Event
      class CounterNotify < Xrb::Message
        OPCODE = 0
        
        layout \
            :response_type, :uint8,
            :kind, :uint8,
            :counter, :uint32,
            :wait_value, :INT64,
            :counter_value, :INT64,
            :timestamp, :uint32,
            :count, :uint16,
            :destroyed, :bool,
            :pad1, [1, :uint8]
      end
      
      class AlarmNotify < Xrb::Message
        OPCODE = 1
        
        layout \
            :response_type, :uint8,
            :kind, :uint8,
            :alarm, :uint32,
            :counter_value, :INT64,
            :alarm_value, :INT64,
            :timestamp, :uint32,
            :state, :uint8,
            :pad1, [3, :uint8]
      end
      
    end
  end
end
