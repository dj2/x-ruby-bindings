#
# This file was auto-generated. Do not edit.
#

module Xrb
  module Test
    module Request
      class GetVersion < Xrb::Message
        OPCODE = 0
        
        layout \
            :major_opcode, :uint8
            :minor_opcode, :uint8
            :length, :uint16
            :minor_version, :uint16
      end
      
      class CompareCursor < Xrb::Message
        OPCODE = 1
        
        layout \
            :major_opcode, :uint8
            :minor_opcode, :uint8
            :length, :uint16
      end
      
      class FakeInput < Xrb::Message
        OPCODE = 2
        
        layout \
            :major_opcode, :uint8
            :minor_opcode, :uint8
            :length, :uint16
            :type, :uint8
            :detail, :uint8
            :pad1, [:uint8, 2]
            :time, :uint32
            :root, :uint32
            :pad2, [:uint8, 8]
            :rootX, :int16
            :rootY, :int16
            :pad3, [:uint8, 7]
            :deviceid, :uint8
      end
      
      class GrabControl < Xrb::Message
        OPCODE = 3
        
        layout \
            :major_opcode, :uint8
            :minor_opcode, :uint8
            :length, :uint16
            :impervious, :bool
            :pad1, [:uint8, 3]
      end
      
    end
  end
end
