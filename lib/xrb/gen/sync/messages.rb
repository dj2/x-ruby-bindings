#
# This file was auto-generated. Do not edit.
#

module Xrb
  module Sync
    module Message
      class Alarm
        attr_accessor :id
        
        def to_wire
          [id].pack('L')
        end
      end
      
      
      class Counter
        attr_accessor :id
        
        def to_wire
          [id].pack('L')
        end
      end
      
      class Fence
        attr_accessor :id
        
        def to_wire
          [id].pack('L')
        end
      end
      
      
      
      
      class Int64 < Xrd::Message
        layout \
            :hi, :int32
            :lo, :uint32
      end
      
      class Systemcounter < Xrd::Message
        layout \
            :counter, :uint32
            :resolution, :INT64
            :name_len, :uint16
      end
      
      class Trigger < Xrd::Message
        layout \
            :counter, :uint32
            :wait_type, :uint32
            :wait_value, :INT64
            :test_type, :uint32
      end
      
      class Waitcondition < Xrd::Message
        layout \
            :trigger, :TRIGGER
            :event_threshold, :INT64
      end
      
    end
  end
end
