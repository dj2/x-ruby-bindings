#
# This file was auto-generated. Do not edit.
#

module Xrb
  module RandR
    module Error
      class BadOutput < Xrb::Message
        OPCODE = 0
        
        layout \
            :response_type, :uint8
            :error_code, :uint8
            :sequence, :uint16
      end
      
      class BadCrtc < Xrb::Message
        OPCODE = 1
        
        layout \
            :response_type, :uint8
            :error_code, :uint8
            :sequence, :uint16
      end
      
      class BadMode < Xrb::Message
        OPCODE = 2
        
        layout \
            :response_type, :uint8
            :error_code, :uint8
            :sequence, :uint16
      end
      
    end
  end
end
