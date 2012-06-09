#
# This file was auto-generated. Do not edit.
#

module Xrb
  module XFixes
    module Request
      class QueryVersion < Xrb::Message
        OPCODE = 0
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :major_version, :uint32,
            :minor_version, :uint32,
            :pad2, [:uint8, 16]
      end
      
      class ChangeSaveSet < Xrb::Message
        OPCODE = 1
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :mode, :uint8,
            :target, :uint8,
            :map, :uint8,
            :pad1, [:uint8, 1],
            :window, :uint32
      end
      
      class SelectSelectionInput < Xrb::Message
        OPCODE = 2
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :window, :uint32,
            :selection, :uint32,
            :event_mask, :uint32
      end
      
      class SelectCursorInput < Xrb::Message
        OPCODE = 3
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :window, :uint32,
            :event_mask, :uint32
      end
      
      class GetCursorImage < Xrb::Message
        OPCODE = 4
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :x, :int16,
            :y, :int16,
            :width, :uint16,
            :height, :uint16,
            :xhot, :uint16,
            :yhot, :uint16,
            :cursor_serial, :uint32,
            :pad2, [:uint8, 8],
            :cursor_image, [:width, :uint32, :list]
      end
      
      class CreateRegion < Xrb::Message
        OPCODE = 5
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :region, :uint32
      end
      
      class CreateRegionFromBitmap < Xrb::Message
        OPCODE = 6
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :region, :uint32,
            :bitmap, :uint32
      end
      
      class CreateRegionFromWindow < Xrb::Message
        OPCODE = 7
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :region, :uint32,
            :window, :uint32,
            :kind, :uint8,
            :pad1, [:uint8, 3]
      end
      
      class CreateRegionFromGc < Xrb::Message
        OPCODE = 8
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :region, :uint32,
            :gc, :uint32
      end
      
      class CreateRegionFromPicture < Xrb::Message
        OPCODE = 9
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :region, :uint32,
            :picture, :uint32
      end
      
      class DestroyRegion < Xrb::Message
        OPCODE = 10
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :region, :uint32
      end
      
      class SetRegion < Xrb::Message
        OPCODE = 11
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :region, :uint32
      end
      
      class CopyRegion < Xrb::Message
        OPCODE = 12
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :source, :uint32,
            :destination, :uint32
      end
      
      class UnionRegion < Xrb::Message
        OPCODE = 13
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :source1, :uint32,
            :source2, :uint32,
            :destination, :uint32
      end
      
      class IntersectRegion < Xrb::Message
        OPCODE = 14
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :source1, :uint32,
            :source2, :uint32,
            :destination, :uint32
      end
      
      class SubtractRegion < Xrb::Message
        OPCODE = 15
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :source1, :uint32,
            :source2, :uint32,
            :destination, :uint32
      end
      
      class InvertRegion < Xrb::Message
        OPCODE = 16
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :source, :uint32,
            :bounds, :RECTANGLE,
            :destination, :uint32
      end
      
      class TranslateRegion < Xrb::Message
        OPCODE = 17
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :region, :uint32,
            :dx, :int16,
            :dy, :int16
      end
      
      class RegionExtents < Xrb::Message
        OPCODE = 18
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :source, :uint32,
            :destination, :uint32
      end
      
      class FetchRegion < Xrb::Message
        OPCODE = 19
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :extents, :RECTANGLE,
            :pad2, [:uint8, 16],
            :rectangles, [:length, :RECTANGLE, :list]
      end
      
      class SetGcClipRegion < Xrb::Message
        OPCODE = 20
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :gc, :uint32,
            :region, :uint32,
            :x_origin, :int16,
            :y_origin, :int16
      end
      
      class SetWindowShapeRegion < Xrb::Message
        OPCODE = 21
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :dest, :uint32,
            :dest_kind, :uint8,
            :pad1, [:uint8, 3],
            :x_offset, :int16,
            :y_offset, :int16,
            :region, :uint32
      end
      
      class SetPictureClipRegion < Xrb::Message
        OPCODE = 22
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :picture, :uint32,
            :region, :uint32,
            :x_origin, :int16,
            :y_origin, :int16
      end
      
      class SetCursorName < Xrb::Message
        OPCODE = 23
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :cursor, :uint32,
            :nbytes, :uint16,
            :pad1, [:uint8, 2],
            :name, [:nbytes, :char, :string]
      end
      
      class GetCursorName < Xrb::Message
        OPCODE = 24
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :atom, :uint32,
            :nbytes, :uint16,
            :pad2, [:uint8, 18],
            :name, [:nbytes, :char, :string]
      end
      
      class GetCursorImageAndName < Xrb::Message
        OPCODE = 25
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :x, :int16,
            :y, :int16,
            :width, :uint16,
            :height, :uint16,
            :xhot, :uint16,
            :yhot, :uint16,
            :cursor_serial, :uint32,
            :cursor_atom, :uint32,
            :nbytes, :uint16,
            :pad2, [:uint8, 2],
            :name, [:nbytes, :char, :string],
            :cursor_image, [:width, :uint32, :list]
      end
      
      class ChangeCursor < Xrb::Message
        OPCODE = 26
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :source, :uint32,
            :destination, :uint32
      end
      
      class ChangeCursorByName < Xrb::Message
        OPCODE = 27
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :src, :uint32,
            :nbytes, :uint16,
            :pad1, [:uint8, 2],
            :name, [:nbytes, :char, :string]
      end
      
      class ExpandRegion < Xrb::Message
        OPCODE = 28
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :source, :uint32,
            :destination, :uint32,
            :left, :uint16,
            :right, :uint16,
            :top, :uint16,
            :bottom, :uint16
      end
      
      class HideCursor < Xrb::Message
        OPCODE = 29
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :window, :uint32
      end
      
      class ShowCursor < Xrb::Message
        OPCODE = 30
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :window, :uint32
      end
      
    end
  end
end
