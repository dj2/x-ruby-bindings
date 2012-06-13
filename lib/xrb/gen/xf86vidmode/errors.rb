#
# This file was auto-generated. Do not edit.
#

module Xrb
  module XF86VidMode
    module Error
      class BadClock < Xrb::Message
        OPCODE = 0
        
        layout \
            :response_type, :uint8,
            :error_code, :uint8,
            :sequence, :uint16
      end
      
      class BadHTimings < Xrb::Message
        OPCODE = 1
        
        layout \
            :response_type, :uint8,
            :error_code, :uint8,
            :sequence, :uint16
      end
      
      class BadVTimings < Xrb::Message
        OPCODE = 2
        
        layout \
            :response_type, :uint8,
            :error_code, :uint8,
            :sequence, :uint16
      end
      
      class ModeUnsuitable < Xrb::Message
        OPCODE = 3
        
        layout \
            :response_type, :uint8,
            :error_code, :uint8,
            :sequence, :uint16
      end
      
      class ExtensionDisabled < Xrb::Message
        OPCODE = 4
        
        layout \
            :response_type, :uint8,
            :error_code, :uint8,
            :sequence, :uint16
      end
      
      class ClientNotLocal < Xrb::Message
        OPCODE = 5
        
        layout \
            :response_type, :uint8,
            :error_code, :uint8,
            :sequence, :uint16
      end
      
      class ZoomLocked < Xrb::Message
        OPCODE = 6
        
        layout \
            :response_type, :uint8,
            :error_code, :uint8,
            :sequence, :uint16
      end
      
    end
  end
end
