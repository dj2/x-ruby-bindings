#
# This file was auto-generated. Do not edit.
#

module Xrb
  module Sync
    module Reply
      class Initialize < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :major_version, {type: :uint8},
            :minor_version, {type: :uint8},
            :pad2, {size: 22, type: :uint8}
      end

      class ListSystemCounters < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :counters_len, {type: :uint32},
            :pad2, {size: 20, type: :uint8},
            :counters, {length_field: :counters_len, type: Systemcounter, kind: :list}
      end

      class QueryCounter < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :counter_value, {type: :INT64}
      end

      class QueryAlarm < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :trigger, {type: :TRIGGER},
            :delta, {type: :INT64},
            :events, {type: :bool},
            :state, {type: :uint8},
            :pad2, {size: 2, type: :uint8}
      end

      class GetPriority < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :priority, {type: :int32}
      end

      class QueryFence < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :triggered, {type: :bool},
            :pad2, {size: 23, type: :uint8}
      end

    end
  end
end
