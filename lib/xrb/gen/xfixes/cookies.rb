#
# This file was auto-generated. Do not edit.
#

module Xrb
  module XFixes
    module Cookie
      class QueryVersion < Xrd::Message
        layout :sequence, :int
      end
      
      class ChangeSaveSet < Xrd::Message
        layout :sequence, :int
      end
      
      class SelectSelectionInput < Xrd::Message
        layout :sequence, :int
      end
      
      class SelectCursorInput < Xrd::Message
        layout :sequence, :int
      end
      
      class GetCursorImage < Xrd::Message
        layout :sequence, :int
      end
      
      class CreateRegion < Xrd::Message
        layout :sequence, :int
      end
      
      class CreateRegionFromBitmap < Xrd::Message
        layout :sequence, :int
      end
      
      class CreateRegionFromWindow < Xrd::Message
        layout :sequence, :int
      end
      
      class CreateRegionFromGc < Xrd::Message
        layout :sequence, :int
      end
      
      class CreateRegionFromPicture < Xrd::Message
        layout :sequence, :int
      end
      
      class DestroyRegion < Xrd::Message
        layout :sequence, :int
      end
      
      class SetRegion < Xrd::Message
        layout :sequence, :int
      end
      
      class CopyRegion < Xrd::Message
        layout :sequence, :int
      end
      
      class UnionRegion < Xrd::Message
        layout :sequence, :int
      end
      
      class IntersectRegion < Xrd::Message
        layout :sequence, :int
      end
      
      class SubtractRegion < Xrd::Message
        layout :sequence, :int
      end
      
      class InvertRegion < Xrd::Message
        layout :sequence, :int
      end
      
      class TranslateRegion < Xrd::Message
        layout :sequence, :int
      end
      
      class RegionExtents < Xrd::Message
        layout :sequence, :int
      end
      
      class FetchRegion < Xrd::Message
        layout :sequence, :int
      end
      
      class SetGcClipRegion < Xrd::Message
        layout :sequence, :int
      end
      
      class SetWindowShapeRegion < Xrd::Message
        layout :sequence, :int
      end
      
      class SetPictureClipRegion < Xrd::Message
        layout :sequence, :int
      end
      
      class SetCursorName < Xrd::Message
        layout :sequence, :int
      end
      
      class GetCursorName < Xrd::Message
        layout :sequence, :int
      end
      
      class GetCursorImageAndName < Xrd::Message
        layout :sequence, :int
      end
      
      class ChangeCursor < Xrd::Message
        layout :sequence, :int
      end
      
      class ChangeCursorByName < Xrd::Message
        layout :sequence, :int
      end
      
      class ExpandRegion < Xrd::Message
        layout :sequence, :int
      end
      
      class HideCursor < Xrd::Message
        layout :sequence, :int
      end
      
      class ShowCursor < Xrd::Message
        layout :sequence, :int
      end
      
    end
  end
end
