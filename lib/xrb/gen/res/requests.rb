#
# This file was auto-generated. Do not edit.
#

module Xrb
  module Res
    module Request
      class QueryVersion < Xrb::Message
        OPCODE = 0
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :server_major, :uint16,
            :server_minor, :uint16
      end
      
      class QueryClients < Xrb::Message
        OPCODE = 1
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :num_clients, :uint32,
            :pad2, [:uint8, 20],
            :clients, [:num_clients, :string]
      end
      
      class QueryClientResources < Xrb::Message
        OPCODE = 2
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :num_types, :uint32,
            :pad2, [:uint8, 20],
            :types, [:num_types, :string]
      end
      
      class QueryClientPixmapBytes < Xrb::Message
        OPCODE = 3
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :bytes, :uint32,
            :bytes_overflow, :uint32
      end
      
    end
  end
end
