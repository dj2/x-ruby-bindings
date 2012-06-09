#
# This file was auto-generated. Do not edit.
#

module Xrb
  module Xv
    module Error
      class BadPort < Xrb::Message
        OPCODE = 0
        
        layout \
            :response_type, :uint8,
            :error_code, :uint8,
            :sequence, :uint16
      end
      
      class BadEncoding < Xrb::Message
        OPCODE = 1
        
        layout \
            :response_type, :uint8,
            :error_code, :uint8,
            :sequence, :uint16
      end
      
      class BadControl < Xrb::Message
        OPCODE = 2
        
        layout \
            :response_type, :uint8,
            :error_code, :uint8,
            :sequence, :uint16
      end
      
    end
  end
end
