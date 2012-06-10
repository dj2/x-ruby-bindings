#
# This file was auto-generated. Do not edit.
#

module Xrb
  module Sync
    module Reply
      class Initialize < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [1, :uint8],
            :sequence, :uint16,
            :length, :uint32,
            :major_version, :uint8,
            :minor_version, :uint8,
            :pad2, [22, :uint8]
      end
      
      class ListSystemCounters < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [1, :uint8],
            :sequence, :uint16,
            :length, :uint32,
            :counters_len, :uint32,
            :pad2, [20, :uint8],
            :counters, [:counters_len, Systemcounter, :list]
      end
      
      class QueryCounter < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [1, :uint8],
            :sequence, :uint16,
            :length, :uint32,
            :counter_value, :INT64
      end
      
      class QueryAlarm < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [1, :uint8],
            :sequence, :uint16,
            :length, :uint32,
            :trigger, :TRIGGER,
            :delta, :INT64,
            :events, :bool,
            :state, :uint8,
            :pad2, [2, :uint8]
      end
      
      class GetPriority < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [1, :uint8],
            :sequence, :uint16,
            :length, :uint32,
            :priority, :int32
      end
      
      class QueryFence < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [1, :uint8],
            :sequence, :uint16,
            :length, :uint32,
            :triggered, :bool,
            :pad2, [23, :uint8]
      end
      
    end
  end
end
