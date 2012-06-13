#
# This file was auto-generated. Do not edit.
#

module Xrb
  module Xevie
    module Request
      class QueryVersion < Xrb::Message
        include Xrb::Request
        
        OPCODE = 0
        
        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :server_major_version, {type: :uint16},
            :server_minor_version, {type: :uint16},
            :pad2, {size: 20, type: :uint8}
      end
      
      class Start < Xrb::Message
        include Xrb::Request
        
        OPCODE = 1
        
        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :pad2, {size: 24, type: :uint8}
      end
      
      class End < Xrb::Message
        include Xrb::Request
        
        OPCODE = 2
        
        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :pad2, {size: 24, type: :uint8}
      end
      
      class Send < Xrb::Message
        include Xrb::Request
        
        OPCODE = 3
        
        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :pad2, {size: 24, type: :uint8}
      end
      
      class SelectInput < Xrb::Message
        include Xrb::Request
        
        OPCODE = 4
        
        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :pad2, {size: 24, type: :uint8}
      end
      
    end
  end
end
