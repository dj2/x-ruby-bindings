#
# This file was auto-generated. Do not edit.
#

module Xrb
  module Test
    module Request
      class GetVersion < Xrb::Message
        include Xrb::Request

        OPCODE = 0

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :major_version, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :minor_version, {type: :uint16}
        def has_reply?
          true
        end
      end

      class CompareCursor < Xrb::Message
        include Xrb::Request

        OPCODE = 1

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :window, {type: :uint32},
            :cursor, {type: :uint32}
        def has_reply?
          true
        end
      end

      class FakeInput < Xrb::Message
        include Xrb::Request

        OPCODE = 2

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :type, {type: :byte},
            :detail, {type: :byte},
            :pad1, {size: 2, type: :uint8},
            :time, {type: :uint32},
            :root, {type: :uint32},
            :pad2, {size: 8, type: :uint8},
            :rootX, {type: :int16},
            :rootY, {type: :int16},
            :pad3, {size: 7, type: :uint8},
            :deviceid, {type: :uint8}
        def has_reply?
          false
        end
      end

      class GrabControl < Xrb::Message
        include Xrb::Request

        OPCODE = 3

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :impervious, {type: :bool},
            :pad1, {size: 3, type: :uint8}
        def has_reply?
          false
        end
      end

    end
  end
end
