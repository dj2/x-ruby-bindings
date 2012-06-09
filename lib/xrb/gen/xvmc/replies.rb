#
# This file was auto-generated. Do not edit.
#

module Xrb
  module XvMC
    module Reply
      class QueryVersion < Xrb::Message
        layout \
            :response_type, :uint8
            :pad1, [:uint8, 1]
            :sequence, :uint16
            :length, :uint32
            :major, :uint32
            :minor, :uint32
      end
      
      class ListSurfaceTypes < Xrb::Message
        layout \
            :response_type, :uint8
            :pad1, [:uint8, 1]
            :sequence, :uint16
            :length, :uint32
            :num, :uint32
            :pad2, [:uint8, 20]
      end
      
      class CreateContext < Xrb::Message
        layout \
            :response_type, :uint8
            :pad1, [:uint8, 1]
            :sequence, :uint16
            :length, :uint32
            :width_actual, :uint16
            :height_actual, :uint16
            :flags_return, :uint32
            :pad2, [:uint8, 20]
      end
      
      class CreateSurface < Xrb::Message
        layout \
            :response_type, :uint8
            :pad1, [:uint8, 1]
            :sequence, :uint16
            :length, :uint32
            :pad2, [:uint8, 24]
      end
      
      class CreateSubpicture < Xrb::Message
        layout \
            :response_type, :uint8
            :pad1, [:uint8, 1]
            :sequence, :uint16
            :length, :uint32
            :width_actual, :uint16
            :height_actual, :uint16
            :num_palette_entries, :uint16
            :entry_bytes, :uint16
            :component_order, [:uint8, 4]
            :pad2, [:uint8, 12]
      end
      
      class ListSubpictureTypes < Xrb::Message
        layout \
            :response_type, :uint8
            :pad1, [:uint8, 1]
            :sequence, :uint16
            :length, :uint32
            :num, :uint32
            :pad2, [:uint8, 20]
      end
      
    end
  end
end
