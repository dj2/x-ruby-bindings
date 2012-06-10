#
# This file was auto-generated. Do not edit.
#

module Xrb
  module XCMisc
    module Request
      class GetVersion < Xrb::Message
        OPCODE = 0
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :server_major_version, :uint16,
            :server_minor_version, :uint16
      end
      
      class GetXidRange < Xrb::Message
        OPCODE = 1
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :start_id, :uint32,
            :count, :uint32
      end
      
      class GetXidList < Xrb::Message
        OPCODE = 2
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :ids_len, :uint32,
            :pad2, [20, :uint8],
            :ids, [:ids_len, :uint32, :list]
      end
      
    end
  end
end
