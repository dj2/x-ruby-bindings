#
# This file was auto-generated. Do not edit.
#

module Xrb
  module Sync
    module Request
      class Initialize < Xrb::Message
        OPCODE = 0
        
        layout \
            :major_opcode, :uint8
            :minor_opcode, :uint8
            :length, :uint16
            :major_version, :uint8
            :minor_version, :uint8
            :pad2, [:uint8, 22]
      end
      
      class ListSystemCounters < Xrb::Message
        OPCODE = 1
        
        layout \
            :major_opcode, :uint8
            :minor_opcode, :uint8
            :length, :uint16
            :counters_len, :uint32
            :pad2, [:uint8, 20]
      end
      
      class CreateCounter < Xrb::Message
        OPCODE = 2
        
        layout \
            :major_opcode, :uint8
            :minor_opcode, :uint8
            :length, :uint16
            :id, :uint32
            :initial_value, :INT64
      end
      
      class DestroyCounter < Xrb::Message
        OPCODE = 6
        
        layout \
            :major_opcode, :uint8
            :minor_opcode, :uint8
            :length, :uint16
            :counter, :uint32
      end
      
      class QueryCounter < Xrb::Message
        OPCODE = 5
        
        layout \
            :major_opcode, :uint8
            :minor_opcode, :uint8
            :length, :uint16
            :counter_value, :INT64
      end
      
      class Await < Xrb::Message
        OPCODE = 7
        
        layout \
            :major_opcode, :uint8
            :minor_opcode, :uint8
            :length, :uint16
      end
      
      class ChangeCounter < Xrb::Message
        OPCODE = 4
        
        layout \
            :major_opcode, :uint8
            :minor_opcode, :uint8
            :length, :uint16
            :counter, :uint32
            :amount, :INT64
      end
      
      class SetCounter < Xrb::Message
        OPCODE = 3
        
        layout \
            :major_opcode, :uint8
            :minor_opcode, :uint8
            :length, :uint16
            :counter, :uint32
            :value, :INT64
      end
      
      class CreateAlarm < Xrb::Message
        OPCODE = 8
        
        layout \
            :major_opcode, :uint8
            :minor_opcode, :uint8
            :length, :uint16
            :id, :uint32
            :value_mask, :uint32
      end
      
      class ChangeAlarm < Xrb::Message
        OPCODE = 9
        
        layout \
            :major_opcode, :uint8
            :minor_opcode, :uint8
            :length, :uint16
            :id, :uint32
            :value_mask, :uint32
      end
      
      class DestroyAlarm < Xrb::Message
        OPCODE = 11
        
        layout \
            :major_opcode, :uint8
            :minor_opcode, :uint8
            :length, :uint16
            :alarm, :uint32
      end
      
      class QueryAlarm < Xrb::Message
        OPCODE = 10
        
        layout \
            :major_opcode, :uint8
            :minor_opcode, :uint8
            :length, :uint16
            :trigger, :TRIGGER
            :delta, :INT64
            :events, :bool
            :state, :uint8
            :pad2, [:uint8, 2]
      end
      
      class SetPriority < Xrb::Message
        OPCODE = 12
        
        layout \
            :major_opcode, :uint8
            :minor_opcode, :uint8
            :length, :uint16
            :id, :uint32
            :priority, :int32
      end
      
      class GetPriority < Xrb::Message
        OPCODE = 13
        
        layout \
            :major_opcode, :uint8
            :minor_opcode, :uint8
            :length, :uint16
            :priority, :int32
      end
      
      class CreateFence < Xrb::Message
        OPCODE = 14
        
        layout \
            :major_opcode, :uint8
            :minor_opcode, :uint8
            :length, :uint16
            :drawable, :uint32
            :fence, :uint32
            :initially_triggered, :bool
      end
      
      class TriggerFence < Xrb::Message
        OPCODE = 15
        
        layout \
            :major_opcode, :uint8
            :minor_opcode, :uint8
            :length, :uint16
            :fence, :uint32
      end
      
      class ResetFence < Xrb::Message
        OPCODE = 16
        
        layout \
            :major_opcode, :uint8
            :minor_opcode, :uint8
            :length, :uint16
            :fence, :uint32
      end
      
      class DestroyFence < Xrb::Message
        OPCODE = 17
        
        layout \
            :major_opcode, :uint8
            :minor_opcode, :uint8
            :length, :uint16
            :fence, :uint32
      end
      
      class QueryFence < Xrb::Message
        OPCODE = 18
        
        layout \
            :major_opcode, :uint8
            :minor_opcode, :uint8
            :length, :uint16
            :triggered, :bool
            :pad2, [:uint8, 23]
      end
      
      class AwaitFence < Xrb::Message
        OPCODE = 19
        
        layout \
            :major_opcode, :uint8
            :minor_opcode, :uint8
            :length, :uint16
      end
      
    end
  end
end
