#
# This file was auto-generated. Do not edit.
#

module Xrb
  module Xinerama
    module Request
      class QueryVersion < Xrb::Message
        include Xrb::Request

        OPCODE = 0

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :major, {type: :uint16},
            :minor, {type: :uint16}
      end

      class GetState < Xrb::Message
        include Xrb::Request

        OPCODE = 1

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :window, {type: :uint32}
      end

      class GetScreenCount < Xrb::Message
        include Xrb::Request

        OPCODE = 2

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :window, {type: :uint32}
      end

      class GetScreenSize < Xrb::Message
        include Xrb::Request

        OPCODE = 3

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :width, {type: :uint32},
            :height, {type: :uint32},
            :window, {type: :uint32},
            :screen, {type: :uint32}
      end

      class IsActive < Xrb::Message
        include Xrb::Request

        OPCODE = 4

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :state, {type: :uint32}
      end

      class QueryScreens < Xrb::Message
        include Xrb::Request

        OPCODE = 5

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :number, {type: :uint32},
            :pad2, {size: 20, type: :uint8},
            :screen_info, {length_field: :number, type: ScreenInfo, kind: :list}
      end

    end
  end
end
