#
# This file was auto-generated. Do not edit.
#

module Xrb
  module XvMC
    module Reply
      class QueryVersion < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :major, {type: :uint32},
            :minor, {type: :uint32}
      end

      class ListSurfaceTypes < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :num, {type: :uint32},
            :pad2, {size: 20, type: :uint8},
            :surfaces, {length_field: :num, type: SurfaceInfo, kind: :list}
      end

      class CreateContext < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :width_actual, {type: :uint16},
            :height_actual, {type: :uint16},
            :flags_return, {type: :uint32},
            :pad2, {size: 20, type: :uint8},
            :priv_data, {length_field: :length, type: :uint32, kind: :list}
      end

      class CreateSurface < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :pad2, {size: 24, type: :uint8},
            :priv_data, {length_field: :length, type: :uint32, kind: :list}
      end

      class CreateSubpicture < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :width_actual, {type: :uint16},
            :height_actual, {type: :uint16},
            :num_palette_entries, {type: :uint16},
            :entry_bytes, {type: :uint16},
            :component_order, {type: :uint8, size: 4},
            :pad2, {size: 12, type: :uint8},
            :priv_data, {length_field: :length, type: :uint32, kind: :list}
      end

      class ListSubpictureTypes < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :num, {type: :uint32},
            :pad2, {size: 20, type: :uint8},
            :types, {length_field: :num, type: ImageFormatInfo, kind: :list}
      end

    end
  end
end
