#
# This file was auto-generated. Do not edit.
#

module Xrb
  module XFixes
    module Cookie
      class QueryVersion < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class ChangeSaveSet < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class SelectSelectionInput < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class SelectCursorInput < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class GetCursorImage < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class CreateRegion < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class CreateRegionFromBitmap < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class CreateRegionFromWindow < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class CreateRegionFromGc < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class CreateRegionFromPicture < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class DestroyRegion < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class SetRegion < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class CopyRegion < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class UnionRegion < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class IntersectRegion < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class SubtractRegion < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class InvertRegion < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class TranslateRegion < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class RegionExtents < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class FetchRegion < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class SetGcClipRegion < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class SetWindowShapeRegion < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class SetPictureClipRegion < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class SetCursorName < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class GetCursorName < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class GetCursorImageAndName < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class ChangeCursor < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class ChangeCursorByName < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class ExpandRegion < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class HideCursor < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class ShowCursor < Xrb::Message
        layout :sequence, {type: :int}
      end
      
    end
  end
end
