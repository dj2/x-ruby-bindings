#
# This file was auto-generated. Do not edit.
#

module Xrb
  module XvMC
    module Request
      class QueryVersion < Xrb::Message
        OPCODE = 0
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :major, :uint32,
            :minor, :uint32
      end
      
      class ListSurfaceTypes < Xrb::Message
        OPCODE = 1
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :num, :uint32,
            :pad2, [:uint8, 20]
      end
      
      class CreateContext < Xrb::Message
        OPCODE = 2
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :width_actual, :uint16,
            :height_actual, :uint16,
            :flags_return, :uint32,
            :pad2, [:uint8, 20]
      end
      
      class DestroyContext < Xrb::Message
        OPCODE = 3
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :context_id, :uint32
      end
      
      class CreateSurface < Xrb::Message
        OPCODE = 4
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :pad2, [:uint8, 24]
      end
      
      class DestroySurface < Xrb::Message
        OPCODE = 5
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :surface_id, :uint32
      end
      
      class CreateSubpicture < Xrb::Message
        OPCODE = 6
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :width_actual, :uint16,
            :height_actual, :uint16,
            :num_palette_entries, :uint16,
            :entry_bytes, :uint16,
            :component_order, [:uint8, 4],
            :pad2, [:uint8, 12]
      end
      
      class DestroySubpicture < Xrb::Message
        OPCODE = 7
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :subpicture_id, :uint32
      end
      
      class ListSubpictureTypes < Xrb::Message
        OPCODE = 8
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :num, :uint32,
            :pad2, [:uint8, 20]
      end
      
    end
  end
end
