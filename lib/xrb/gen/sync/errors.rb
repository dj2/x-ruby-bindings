#
# This file was auto-generated. Do not edit.
#

module Xrb
  module Sync
    module Error
      class Counter < Xrb::Message
        OPCODE = 0
        
        layout \
            :response_type, :uint8
            :error_code, :uint8
            :sequence, :uint16
            :bad_counter, :uint32
            :minor_opcode, :uint16
            :major_opcode, :uint8
      end
      
      class Alarm < Xrb::Message
        OPCODE = 1
        
        layout \
            :response_type, :uint8
            :error_code, :uint8
            :sequence, :uint16
            :bad_alarm, :uint32
            :minor_opcode, :uint16
            :major_opcode, :uint8
      end
      
    end
  end
end
