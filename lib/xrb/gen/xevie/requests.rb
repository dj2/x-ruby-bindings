#
# This file was auto-generated. Do not edit.
#

module Xrb
  module Xevie
    module Request
      class QueryVersion < Xrb::Message
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

      class Start < Xrb::Message
        include Xrb::Request

        OPCODE = 1

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :screen, {type: :uint32}
        def has_reply?
          true
        end
      end

      class End < Xrb::Message
        include Xrb::Request

        OPCODE = 2

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :cmap, {type: :uint32}
        def has_reply?
          true
        end
      end

      class Send < Xrb::Message
        include Xrb::Request

        OPCODE = 3

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :event, {type: :Event},
            :data_type, {type: :uint32},
            :pad1, {size: 64, type: :uint8}
        def has_reply?
          true
        end
      end

      class SelectInput < Xrb::Message
        include Xrb::Request

        OPCODE = 4

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :event_mask, {type: :uint32}
        def has_reply?
          true
        end
      end

    end
  end
end
