#
# This file was auto-generated. Do not edit.
#

module Xrb
  module Res
    module Reply
      class QueryVersion < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :server_major, {type: :uint16},
            :server_minor, {type: :uint16}
      end
      
      class QueryClients < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :num_clients, {type: :uint32},
            :pad2, {size: 20, type: :uint8},
            :clients, {length_field: :num_clients, type: Client, kind: :list}
      end
      
      class QueryClientResources < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :num_types, {type: :uint32},
            :pad2, {size: 20, type: :uint8},
            :types, {length_field: :num_types, type: Type, kind: :list}
      end
      
      class QueryClientPixmapBytes < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :bytes, {type: :uint32},
            :bytes_overflow, {type: :uint32}
      end
      
    end
  end
end
