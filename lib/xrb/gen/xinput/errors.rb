#
# This file was auto-generated. Do not edit.
#

module Xrb
  module Input
    module Error
      class Device < Xrb::Message
        OPCODE = 0
        
        layout \
            :response_type, :uint8
            :error_code, :uint8
            :sequence, :uint16
      end
      
      class Event < Xrb::Message
        OPCODE = 1
        
        layout \
            :response_type, :uint8
            :error_code, :uint8
            :sequence, :uint16
      end
      
      class Mode < Xrb::Message
        OPCODE = 2
        
        layout \
            :response_type, :uint8
            :error_code, :uint8
            :sequence, :uint16
      end
      
      class DeviceBusy < Xrb::Message
        OPCODE = 3
        
        layout \
            :response_type, :uint8
            :error_code, :uint8
            :sequence, :uint16
      end
      
      class Class < Xrb::Message
        OPCODE = 4
        
        layout \
            :response_type, :uint8
            :error_code, :uint8
            :sequence, :uint16
      end
      
    end
  end
end
