#
# This file was auto-generated. Do not edit.
#

module Xrb
  module Damage
    module Request
      class QueryVersion < Xrb::Message
        OPCODE = 0
        
        layout \
            :major_opcode, :uint8
            :minor_opcode, :uint8
            :length, :uint16
            :major_version, :uint32
            :minor_version, :uint32
            :pad2, [:uint8, 16]
      end
      
      class Create < Xrb::Message
        OPCODE = 1
        
        layout \
            :major_opcode, :uint8
            :minor_opcode, :uint8
            :length, :uint16
            :damage, :uint32
            :drawable, :uint32
            :level, :uint8
            :pad1, [:uint8, 3]
      end
      
      class Destroy < Xrb::Message
        OPCODE = 2
        
        layout \
            :major_opcode, :uint8
            :minor_opcode, :uint8
            :length, :uint16
            :damage, :uint32
      end
      
      class Subtract < Xrb::Message
        OPCODE = 3
        
        layout \
            :major_opcode, :uint8
            :minor_opcode, :uint8
            :length, :uint16
            :damage, :uint32
            :repair, :uint32
            :parts, :uint32
      end
      
      class Add < Xrb::Message
        OPCODE = 4
        
        layout \
            :major_opcode, :uint8
            :minor_opcode, :uint8
            :length, :uint16
            :drawable, :uint32
            :region, :uint32
      end
      
    end
  end
end
