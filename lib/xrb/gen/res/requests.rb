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
            :client_major, {type: :uint8},
            :client_minor, {type: :uint8}
        def has_reply?
          true
        end
      end

      class QueryClients < Xrb::Message
        include Xrb::Request

        OPCODE = 1

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16}
        def has_reply?
          true
        end
      end

      class QueryClientResources < Xrb::Message
        include Xrb::Request

        OPCODE = 2

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :xid, {type: :uint32}
        def has_reply?
          true
        end
      end

      class QueryClientPixmapBytes < Xrb::Message
        include Xrb::Request

        OPCODE = 3

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :xid, {type: :uint32}
        def has_reply?
          true
        end
      end

    end
  end
end
