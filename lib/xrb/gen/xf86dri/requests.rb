#
# This file was auto-generated. Do not edit.
#

module Xrb
  module XF86Dri
    module Request
      class QueryVersion < Xrb::Message
        include Xrb::Request

        OPCODE = 0

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16}
        def has_reply?
          true
        end
      end

      class QueryDirectRenderingCapable < Xrb::Message
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

      class OpenConnection < Xrb::Message
        include Xrb::Request

        OPCODE = 2

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :screen, {type: :uint32}
        def has_reply?
          true
        end
      end

      class CloseConnection < Xrb::Message
        include Xrb::Request

        OPCODE = 3

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :screen, {type: :uint32}
        def has_reply?
          false
        end
      end

      class GetClientDriverName < Xrb::Message
        include Xrb::Request

        OPCODE = 4

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :screen, {type: :uint32}
        def has_reply?
          true
        end
      end

      class CreateContext < Xrb::Message
        include Xrb::Request

        OPCODE = 5

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :screen, {type: :uint32},
            :visual, {type: :uint32},
            :context, {type: :uint32}
        def has_reply?
          true
        end
      end

      class DestroyContext < Xrb::Message
        include Xrb::Request

        OPCODE = 6

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :screen, {type: :uint32},
            :context, {type: :uint32}
        def has_reply?
          false
        end
      end

      class CreateDrawable < Xrb::Message
        include Xrb::Request

        OPCODE = 7

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :screen, {type: :uint32},
            :drawable, {type: :uint32}
        def has_reply?
          true
        end
      end

      class DestroyDrawable < Xrb::Message
        include Xrb::Request

        OPCODE = 8

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :screen, {type: :uint32},
            :drawable, {type: :uint32}
        def has_reply?
          false
        end
      end

      class GetDrawableInfo < Xrb::Message
        include Xrb::Request

        OPCODE = 9

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :screen, {type: :uint32},
            :drawable, {type: :uint32}
        def has_reply?
          true
        end
      end

      class GetDeviceInfo < Xrb::Message
        include Xrb::Request

        OPCODE = 10

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :screen, {type: :uint32}
        def has_reply?
          true
        end
      end

      class AuthConnection < Xrb::Message
        include Xrb::Request

        OPCODE = 11

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :screen, {type: :uint32},
            :magic, {type: :uint32}
        def has_reply?
          true
        end
      end

    end
  end
end
