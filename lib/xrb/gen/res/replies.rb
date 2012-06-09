#
# This file was auto-generated. Do not edit.
#

module Xrb
  module Res
    module Reply
      class QueryVersion < Xrb::Message
        layout \
            :response_type, :uint8
            :pad1, [:uint8, 1]
            :sequence, :uint16
            :length, :uint32
            :server_major, :uint16
            :server_minor, :uint16
      end
      
      class QueryClients < Xrb::Message
        layout \
            :response_type, :uint8
            :pad1, [:uint8, 1]
            :sequence, :uint16
            :length, :uint32
            :num_clients, :uint32
            :pad2, [:uint8, 20]
      end
      
      class QueryClientResources < Xrb::Message
        layout \
            :response_type, :uint8
            :pad1, [:uint8, 1]
            :sequence, :uint16
            :length, :uint32
            :num_types, :uint32
            :pad2, [:uint8, 20]
      end
      
      class QueryClientPixmapBytes < Xrb::Message
        layout \
            :response_type, :uint8
            :pad1, [:uint8, 1]
            :sequence, :uint16
            :length, :uint32
            :bytes, :uint32
            :bytes_overflow, :uint32
      end
      
    end
  end
end
