#
# This file was auto-generated. Do not edit.
#

module Xrb
  module ScreenSaver
    module Request
      class QueryVersion < Xrb::Message
        include Xrb::Request

        OPCODE = 0

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :server_major_version, {type: :uint16},
            :server_minor_version, {type: :uint16},
            :pad2, {size: 20, type: :uint8}
      end

      class QueryInfo < Xrb::Message
        include Xrb::Request

        OPCODE = 1

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :saver_window, {type: :uint32},
            :ms_until_server, {type: :uint32},
            :ms_since_user_input, {type: :uint32},
            :event_mask, {type: :uint32},
            :kind, {type: :uint8},
            :pad1, {size: 7, type: :uint8}
      end

      class SelectInput < Xrb::Message
        include Xrb::Request

        OPCODE = 2

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :drawable, {type: :uint32},
            :event_mask, {type: :uint32}
      end

      class SetAttributes < Xrb::Message
        include Xrb::Request

        OPCODE = 3

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :drawable, {type: :uint32},
            :x, {type: :int16},
            :y, {type: :int16},
            :width, {type: :uint16},
            :height, {type: :uint16},
            :border_width, {type: :uint16},
            :class, {type: :uint8},
            :depth, {type: :uint8},
            :visual, {type: :uint32},
            :value, {type: :uint32, kind: :map}
      end

      class UnsetAttributes < Xrb::Message
        include Xrb::Request

        OPCODE = 4

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :drawable, {type: :uint32}
      end

      class Suspend < Xrb::Message
        include Xrb::Request

        OPCODE = 5

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :suspend, {type: :bool},
            :pad1, {size: 3, type: :uint8}
      end

    end
  end
end
