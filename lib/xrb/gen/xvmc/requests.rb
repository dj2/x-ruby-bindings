#
# This file was auto-generated. Do not edit.
#

module Xrb
  module XvMC
    module Request
      class QueryVersion < Xrb::Message
        include Xrb::Request

        OPCODE = 0

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16}
      end

      class ListSurfaceTypes < Xrb::Message
        include Xrb::Request

        OPCODE = 1

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :port_id, {type: :uint32}
      end

      class CreateContext < Xrb::Message
        include Xrb::Request

        OPCODE = 2

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :context_id, {type: :uint32},
            :port_id, {type: :uint32},
            :surface_id, {type: :uint32},
            :width, {type: :uint16},
            :height, {type: :uint16},
            :flags, {type: :uint32}
      end

      class DestroyContext < Xrb::Message
        include Xrb::Request

        OPCODE = 3

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :context_id, {type: :uint32}
      end

      class CreateSurface < Xrb::Message
        include Xrb::Request

        OPCODE = 4

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :surface_id, {type: :uint32},
            :context_id, {type: :uint32}
      end

      class DestroySurface < Xrb::Message
        include Xrb::Request

        OPCODE = 5

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :surface_id, {type: :uint32}
      end

      class CreateSubpicture < Xrb::Message
        include Xrb::Request

        OPCODE = 6

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :subpicture_id, {type: :uint32},
            :context, {type: :uint32},
            :xvimage_id, {type: :uint32},
            :width, {type: :uint16},
            :height, {type: :uint16}
      end

      class DestroySubpicture < Xrb::Message
        include Xrb::Request

        OPCODE = 7

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :subpicture_id, {type: :uint32}
      end

      class ListSubpictureTypes < Xrb::Message
        include Xrb::Request

        OPCODE = 8

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :port_id, {type: :uint32},
            :surface_id, {type: :uint32}
      end

    end
  end
end
