#
# This file was auto-generated. Do not edit.
#

module Xrb
  module Damage
    module Request
      class QueryVersion < Xrb::Message
        include Xrb::Request

        OPCODE = 0

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :major_version, {type: :uint32},
            :minor_version, {type: :uint32},
            :pad2, {size: 16, type: :uint8}
      end

      class Create < Xrb::Message
        include Xrb::Request

        OPCODE = 1

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :damage, {type: :uint32},
            :drawable, {type: :uint32},
            :level, {type: :uint8},
            :pad1, {size: 3, type: :uint8}
      end

      class Destroy < Xrb::Message
        include Xrb::Request

        OPCODE = 2

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :damage, {type: :uint32}
      end

      class Subtract < Xrb::Message
        include Xrb::Request

        OPCODE = 3

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :damage, {type: :uint32},
            :repair, {type: :uint32},
            :parts, {type: :uint32}
      end

      class Add < Xrb::Message
        include Xrb::Request

        OPCODE = 4

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :drawable, {type: :uint32},
            :region, {type: :uint32}
      end

    end
  end
end
