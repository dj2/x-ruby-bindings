#
# This file was auto-generated. Do not edit.
#

module Xrb
  module Xinerama
    module Request
      class QueryVersion < Xrb::Message
        OPCODE = 0
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :major, :uint16,
            :minor, :uint16
      end
      
      class GetState < Xrb::Message
        OPCODE = 1
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :window, :uint32
      end
      
      class GetScreenCount < Xrb::Message
        OPCODE = 2
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :window, :uint32
      end
      
      class GetScreenSize < Xrb::Message
        OPCODE = 3
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :width, :uint32,
            :height, :uint32,
            :window, :uint32,
            :screen, :uint32
      end
      
      class IsActive < Xrb::Message
        OPCODE = 4
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :state, :uint32
      end
      
      class QueryScreens < Xrb::Message
        OPCODE = 5
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :number, :uint32,
            :pad2, [:uint8, 20],
            :screen_info, [:number, :string]
      end
      
    end
  end
end
