#
# This file was auto-generated. Do not edit.
#

module Xrb
  module RandR
    module Error
      class BadOutput < Xrb::Message
        OPCODE = 0
        
        layout \
            :response_type, {type: :uint8},
            :error_code, {type: :uint8},
            :sequence, {type: :uint16}
      end
      
      class BadCrtc < Xrb::Message
        OPCODE = 1
        
        layout \
            :response_type, {type: :uint8},
            :error_code, {type: :uint8},
            :sequence, {type: :uint16}
      end
      
      class BadMode < Xrb::Message
        OPCODE = 2
        
        layout \
            :response_type, {type: :uint8},
            :error_code, {type: :uint8},
            :sequence, {type: :uint16}
      end
      
      @op_map = {
        0 => BadOutput,
1 => BadCrtc,
2 => BadMode
      }
      def self.find(opcode)
        @op_map[opcode]
      end
    end
  end
end
