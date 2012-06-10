#
# This file was auto-generated. Do not edit.
#

module Xrb
  module Xevie
    module Request
      class QueryVersion < Xrb::Message
        OPCODE = 0
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :server_major_version, :uint16,
            :server_minor_version, :uint16,
            :pad2, [20, :uint8]
      end
      
      class Start < Xrb::Message
        OPCODE = 1
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :pad2, [24, :uint8]
      end
      
      class End < Xrb::Message
        OPCODE = 2
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :pad2, [24, :uint8]
      end
      
      class Send < Xrb::Message
        OPCODE = 3
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :pad2, [24, :uint8]
      end
      
      class SelectInput < Xrb::Message
        OPCODE = 4
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :pad2, [24, :uint8]
      end
      
    end
  end
end
