#
# This file was auto-generated. Do not edit.
#

module Xrb
  module XFixes
    module Cookie
      class QueryVersion < Xrb::Message
        layout :sequence, :int
      end
      
      class ChangeSaveSet < Xrb::Message
        layout :sequence, :int
      end
      
      class SelectSelectionInput < Xrb::Message
        layout :sequence, :int
      end
      
      class SelectCursorInput < Xrb::Message
        layout :sequence, :int
      end
      
      class GetCursorImage < Xrb::Message
        layout :sequence, :int
      end
      
      class CreateRegion < Xrb::Message
        layout :sequence, :int
      end
      
      class CreateRegionFromBitmap < Xrb::Message
        layout :sequence, :int
      end
      
      class CreateRegionFromWindow < Xrb::Message
        layout :sequence, :int
      end
      
      class CreateRegionFromGc < Xrb::Message
        layout :sequence, :int
      end
      
      class CreateRegionFromPicture < Xrb::Message
        layout :sequence, :int
      end
      
      class DestroyRegion < Xrb::Message
        layout :sequence, :int
      end
      
      class SetRegion < Xrb::Message
        layout :sequence, :int
      end
      
      class CopyRegion < Xrb::Message
        layout :sequence, :int
      end
      
      class UnionRegion < Xrb::Message
        layout :sequence, :int
      end
      
      class IntersectRegion < Xrb::Message
        layout :sequence, :int
      end
      
      class SubtractRegion < Xrb::Message
        layout :sequence, :int
      end
      
      class InvertRegion < Xrb::Message
        layout :sequence, :int
      end
      
      class TranslateRegion < Xrb::Message
        layout :sequence, :int
      end
      
      class RegionExtents < Xrb::Message
        layout :sequence, :int
      end
      
      class FetchRegion < Xrb::Message
        layout :sequence, :int
      end
      
      class SetGcClipRegion < Xrb::Message
        layout :sequence, :int
      end
      
      class SetWindowShapeRegion < Xrb::Message
        layout :sequence, :int
      end
      
      class SetPictureClipRegion < Xrb::Message
        layout :sequence, :int
      end
      
      class SetCursorName < Xrb::Message
        layout :sequence, :int
      end
      
      class GetCursorName < Xrb::Message
        layout :sequence, :int
      end
      
      class GetCursorImageAndName < Xrb::Message
        layout :sequence, :int
      end
      
      class ChangeCursor < Xrb::Message
        layout :sequence, :int
      end
      
      class ChangeCursorByName < Xrb::Message
        layout :sequence, :int
      end
      
      class ExpandRegion < Xrb::Message
        layout :sequence, :int
      end
      
      class HideCursor < Xrb::Message
        layout :sequence, :int
      end
      
      class ShowCursor < Xrb::Message
        layout :sequence, :int
      end
      
    end
  end
end
