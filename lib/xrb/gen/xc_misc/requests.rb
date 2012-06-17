#
# This file was auto-generated. Do not edit.
#

module Xrb
  module XCMisc
    module Request
      class GetVersion < Xrb::Message
        include Xrb::Request

        OPCODE = 0

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :client_major_version, {type: :uint16},
            :client_minor_version, {type: :uint16}
        def has_reply?
          true
        end
      end

      class GetXidRange < Xrb::Message
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

      class GetXidList < Xrb::Message
        include Xrb::Request

        OPCODE = 2

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :count, {type: :uint32}
        def has_reply?
          true
        end
      end

    end
  end
end
