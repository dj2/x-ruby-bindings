#
# This file was auto-generated. Do not edit.
#

module Xrb
  module Res
    module Request
      class QueryVersion < Xrb::Message
        include Xrb::Request

        OPCODE = 0

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :server_major, {type: :uint16},
            :server_minor, {type: :uint16}
      end

      class QueryClients < Xrb::Message
        include Xrb::Request

        OPCODE = 1

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :num_clients, {type: :uint32},
            :pad2, {size: 20, type: :uint8},
            :clients, {length_field: :num_clients, type: Client, kind: :list}
      end

      class QueryClientResources < Xrb::Message
        include Xrb::Request

        OPCODE = 2

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :num_types, {type: :uint32},
            :pad2, {size: 20, type: :uint8},
            :types, {length_field: :num_types, type: Type, kind: :list}
      end

      class QueryClientPixmapBytes < Xrb::Message
        include Xrb::Request

        OPCODE = 3

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :bytes, {type: :uint32},
            :bytes_overflow, {type: :uint32}
      end

    end
  end
end
