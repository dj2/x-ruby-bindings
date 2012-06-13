#
# This file was auto-generated. Do not edit.
#

module Xrb
  module Xv
    module Error
      class BadPort < Xrb::Message
        OPCODE = 0
        
        layout \
            :response_type, {type: :uint8},
            :error_code, {type: :uint8},
            :sequence, {type: :uint16}
      end
      
      class BadEncoding < Xrb::Message
        OPCODE = 1
        
        layout \
            :response_type, {type: :uint8},
            :error_code, {type: :uint8},
            :sequence, {type: :uint16}
      end
      
      class BadControl < Xrb::Message
        OPCODE = 2
        
        layout \
            :response_type, {type: :uint8},
            :error_code, {type: :uint8},
            :sequence, {type: :uint16}
      end
      
      @op_map = {
        0 => BadPort,
1 => BadEncoding,
2 => BadControl
      }
      def self.find(opcode)
        @op_map[opcode]
      end
    end
  end
end
