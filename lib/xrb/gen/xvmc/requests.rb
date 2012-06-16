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
            :length, {type: :uint16},
            :major, {type: :uint32},
            :minor, {type: :uint32}
      end

      class ListSurfaceTypes < Xrb::Message
        include Xrb::Request

        OPCODE = 1

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :num, {type: :uint32},
            :pad2, {size: 20, type: :uint8},
            :surfaces, {length_field: :num, type: SurfaceInfo, kind: :list}
      end

      class CreateContext < Xrb::Message
        include Xrb::Request

        OPCODE = 2

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :width_actual, {type: :uint16},
            :height_actual, {type: :uint16},
            :flags_return, {type: :uint32},
            :pad2, {size: 20, type: :uint8},
            :priv_data, {length_field: :length, type: :uint32, kind: :list}
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
            :pad2, {size: 24, type: :uint8},
            :priv_data, {length_field: :length, type: :uint32, kind: :list}
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
            :width_actual, {type: :uint16},
            :height_actual, {type: :uint16},
            :num_palette_entries, {type: :uint16},
            :entry_bytes, {type: :uint16},
            :component_order, {type: :uint8, size: 4},
            :pad2, {size: 12, type: :uint8},
            :priv_data, {length_field: :length, type: :uint32, kind: :list}
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
            :num, {type: :uint32},
            :pad2, {size: 20, type: :uint8},
            :types, {length_field: :num, type: ImageFormatInfo, kind: :list}
      end

    end
  end
end
