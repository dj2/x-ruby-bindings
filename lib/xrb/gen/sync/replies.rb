#
# This file was auto-generated. Do not edit.
#

module Xrb
  module Sync
    module Reply
      class Initialize < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [:uint8, 1],
            :sequence, :uint16,
            :length, :uint32,
            :major_version, :uint8,
            :minor_version, :uint8,
            :pad2, [:uint8, 22]
      end
      
      class ListSystemCounters < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [:uint8, 1],
            :sequence, :uint16,
            :length, :uint32,
            :counters_len, :uint32,
            :pad2, [:uint8, 20]
      end
      
      class QueryCounter < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [:uint8, 1],
            :sequence, :uint16,
            :length, :uint32,
            :counter_value, :INT64
      end
      
      class QueryAlarm < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [:uint8, 1],
            :sequence, :uint16,
            :length, :uint32,
            :trigger, :TRIGGER,
            :delta, :INT64,
            :events, :bool,
            :state, :uint8,
            :pad2, [:uint8, 2]
      end
      
      class GetPriority < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [:uint8, 1],
            :sequence, :uint16,
            :length, :uint32,
            :priority, :int32
      end
      
      class QueryFence < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [:uint8, 1],
            :sequence, :uint16,
            :length, :uint32,
            :triggered, :bool,
            :pad2, [:uint8, 23]
      end
      
    end
  end
end
