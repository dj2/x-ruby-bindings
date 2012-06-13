#
# This file was auto-generated. Do not edit.
#

module Xrb
  module Cookie
    class CreateWindow < Xrb::Message
      layout :sequence, {type: :int}
    end
    
    class ChangeWindowAttributes < Xrb::Message
      layout :sequence, {type: :int}
    end
    
    class GetWindowAttributes < Xrb::Message
      layout :sequence, {type: :int}
    end
    
    class DestroyWindow < Xrb::Message
      layout :sequence, {type: :int}
    end
    
    class DestroySubwindows < Xrb::Message
      layout :sequence, {type: :int}
    end
    
    class ChangeSaveSet < Xrb::Message
      layout :sequence, {type: :int}
    end
    
    class ReparentWindow < Xrb::Message
      layout :sequence, {type: :int}
    end
    
    class MapWindow < Xrb::Message
      layout :sequence, {type: :int}
    end
    
    class MapSubwindows < Xrb::Message
      layout :sequence, {type: :int}
    end
    
    class UnmapWindow < Xrb::Message
      layout :sequence, {type: :int}
    end
    
    class UnmapSubwindows < Xrb::Message
      layout :sequence, {type: :int}
    end
    
    class ConfigureWindow < Xrb::Message
      layout :sequence, {type: :int}
    end
    
    class CirculateWindow < Xrb::Message
      layout :sequence, {type: :int}
    end
    
    class GetGeometry < Xrb::Message
      layout :sequence, {type: :int}
    end
    
    class QueryTree < Xrb::Message
      layout :sequence, {type: :int}
    end
    
    class InternAtom < Xrb::Message
      layout :sequence, {type: :int}
    end
    
    class GetAtomName < Xrb::Message
      layout :sequence, {type: :int}
    end
    
    class ChangeProperty < Xrb::Message
      layout :sequence, {type: :int}
    end
    
    class DeleteProperty < Xrb::Message
      layout :sequence, {type: :int}
    end
    
    class GetProperty < Xrb::Message
      layout :sequence, {type: :int}
    end
    
    class ListProperties < Xrb::Message
      layout :sequence, {type: :int}
    end
    
    class SetSelectionOwner < Xrb::Message
      layout :sequence, {type: :int}
    end
    
    class GetSelectionOwner < Xrb::Message
      layout :sequence, {type: :int}
    end
    
    class ConvertSelection < Xrb::Message
      layout :sequence, {type: :int}
    end
    
    class SendEvent < Xrb::Message
      layout :sequence, {type: :int}
    end
    
    class GrabPointer < Xrb::Message
      layout :sequence, {type: :int}
    end
    
    class UngrabPointer < Xrb::Message
      layout :sequence, {type: :int}
    end
    
    class GrabButton < Xrb::Message
      layout :sequence, {type: :int}
    end
    
    class UngrabButton < Xrb::Message
      layout :sequence, {type: :int}
    end
    
    class ChangeActivePointerGrab < Xrb::Message
      layout :sequence, {type: :int}
    end
    
    class GrabKeyboard < Xrb::Message
      layout :sequence, {type: :int}
    end
    
    class UngrabKeyboard < Xrb::Message
      layout :sequence, {type: :int}
    end
    
    class GrabKey < Xrb::Message
      layout :sequence, {type: :int}
    end
    
    class UngrabKey < Xrb::Message
      layout :sequence, {type: :int}
    end
    
    class AllowEvents < Xrb::Message
      layout :sequence, {type: :int}
    end
    
    class GrabServer < Xrb::Message
      layout :sequence, {type: :int}
    end
    
    class UngrabServer < Xrb::Message
      layout :sequence, {type: :int}
    end
    
    class QueryPointer < Xrb::Message
      layout :sequence, {type: :int}
    end
    
    class GetMotionEvents < Xrb::Message
      layout :sequence, {type: :int}
    end
    
    class TranslateCoordinates < Xrb::Message
      layout :sequence, {type: :int}
    end
    
    class WarpPointer < Xrb::Message
      layout :sequence, {type: :int}
    end
    
    class SetInputFocus < Xrb::Message
      layout :sequence, {type: :int}
    end
    
    class GetInputFocus < Xrb::Message
      layout :sequence, {type: :int}
    end
    
    class QueryKeymap < Xrb::Message
      layout :sequence, {type: :int}
    end
    
    class OpenFont < Xrb::Message
      layout :sequence, {type: :int}
    end
    
    class CloseFont < Xrb::Message
      layout :sequence, {type: :int}
    end
    
    class QueryFont < Xrb::Message
      layout :sequence, {type: :int}
    end
    
    class QueryTextExtents < Xrb::Message
      layout :sequence, {type: :int}
    end
    
    class ListFonts < Xrb::Message
      layout :sequence, {type: :int}
    end
    
    class ListFontsWithInfo < Xrb::Message
      layout :sequence, {type: :int}
    end
    
    class SetFontPath < Xrb::Message
      layout :sequence, {type: :int}
    end
    
    class GetFontPath < Xrb::Message
      layout :sequence, {type: :int}
    end
    
    class CreatePixmap < Xrb::Message
      layout :sequence, {type: :int}
    end
    
    class FreePixmap < Xrb::Message
      layout :sequence, {type: :int}
    end
    
    class CreateGc < Xrb::Message
      layout :sequence, {type: :int}
    end
    
    class ChangeGc < Xrb::Message
      layout :sequence, {type: :int}
    end
    
    class CopyGc < Xrb::Message
      layout :sequence, {type: :int}
    end
    
    class SetDashes < Xrb::Message
      layout :sequence, {type: :int}
    end
    
    class SetClipRectangles < Xrb::Message
      layout :sequence, {type: :int}
    end
    
    class FreeGc < Xrb::Message
      layout :sequence, {type: :int}
    end
    
    class ClearArea < Xrb::Message
      layout :sequence, {type: :int}
    end
    
    class CopyArea < Xrb::Message
      layout :sequence, {type: :int}
    end
    
    class CopyPlane < Xrb::Message
      layout :sequence, {type: :int}
    end
    
    class PolyPoint < Xrb::Message
      layout :sequence, {type: :int}
    end
    
    class PolyLine < Xrb::Message
      layout :sequence, {type: :int}
    end
    
    class PolySegment < Xrb::Message
      layout :sequence, {type: :int}
    end
    
    class PolyRectangle < Xrb::Message
      layout :sequence, {type: :int}
    end
    
    class PolyArc < Xrb::Message
      layout :sequence, {type: :int}
    end
    
    class FillPoly < Xrb::Message
      layout :sequence, {type: :int}
    end
    
    class PolyFillRectangle < Xrb::Message
      layout :sequence, {type: :int}
    end
    
    class PolyFillArc < Xrb::Message
      layout :sequence, {type: :int}
    end
    
    class PutImage < Xrb::Message
      layout :sequence, {type: :int}
    end
    
    class GetImage < Xrb::Message
      layout :sequence, {type: :int}
    end
    
    class PolyText_8 < Xrb::Message
      layout :sequence, {type: :int}
    end
    
    class PolyText_16 < Xrb::Message
      layout :sequence, {type: :int}
    end
    
    class ImageText_8 < Xrb::Message
      layout :sequence, {type: :int}
    end
    
    class ImageText_16 < Xrb::Message
      layout :sequence, {type: :int}
    end
    
    class CreateColormap < Xrb::Message
      layout :sequence, {type: :int}
    end
    
    class FreeColormap < Xrb::Message
      layout :sequence, {type: :int}
    end
    
    class CopyColormapAndFree < Xrb::Message
      layout :sequence, {type: :int}
    end
    
    class InstallColormap < Xrb::Message
      layout :sequence, {type: :int}
    end
    
    class UninstallColormap < Xrb::Message
      layout :sequence, {type: :int}
    end
    
    class ListInstalledColormaps < Xrb::Message
      layout :sequence, {type: :int}
    end
    
    class AllocColor < Xrb::Message
      layout :sequence, {type: :int}
    end
    
    class AllocNamedColor < Xrb::Message
      layout :sequence, {type: :int}
    end
    
    class AllocColorCells < Xrb::Message
      layout :sequence, {type: :int}
    end
    
    class AllocColorPlanes < Xrb::Message
      layout :sequence, {type: :int}
    end
    
    class FreeColors < Xrb::Message
      layout :sequence, {type: :int}
    end
    
    class StoreColors < Xrb::Message
      layout :sequence, {type: :int}
    end
    
    class StoreNamedColor < Xrb::Message
      layout :sequence, {type: :int}
    end
    
    class QueryColors < Xrb::Message
      layout :sequence, {type: :int}
    end
    
    class LookupColor < Xrb::Message
      layout :sequence, {type: :int}
    end
    
    class CreateCursor < Xrb::Message
      layout :sequence, {type: :int}
    end
    
    class CreateGlyphCursor < Xrb::Message
      layout :sequence, {type: :int}
    end
    
    class FreeCursor < Xrb::Message
      layout :sequence, {type: :int}
    end
    
    class RecolorCursor < Xrb::Message
      layout :sequence, {type: :int}
    end
    
    class QueryBestSize < Xrb::Message
      layout :sequence, {type: :int}
    end
    
    class QueryExtension < Xrb::Message
      layout :sequence, {type: :int}
    end
    
    class ListExtensions < Xrb::Message
      layout :sequence, {type: :int}
    end
    
    class ChangeKeyboardMapping < Xrb::Message
      layout :sequence, {type: :int}
    end
    
    class GetKeyboardMapping < Xrb::Message
      layout :sequence, {type: :int}
    end
    
    class ChangeKeyboardControl < Xrb::Message
      layout :sequence, {type: :int}
    end
    
    class GetKeyboardControl < Xrb::Message
      layout :sequence, {type: :int}
    end
    
    class Bell < Xrb::Message
      layout :sequence, {type: :int}
    end
    
    class ChangePointerControl < Xrb::Message
      layout :sequence, {type: :int}
    end
    
    class GetPointerControl < Xrb::Message
      layout :sequence, {type: :int}
    end
    
    class SetScreenSaver < Xrb::Message
      layout :sequence, {type: :int}
    end
    
    class GetScreenSaver < Xrb::Message
      layout :sequence, {type: :int}
    end
    
    class ChangeHosts < Xrb::Message
      layout :sequence, {type: :int}
    end
    
    class ListHosts < Xrb::Message
      layout :sequence, {type: :int}
    end
    
    class SetAccessControl < Xrb::Message
      layout :sequence, {type: :int}
    end
    
    class SetCloseDownMode < Xrb::Message
      layout :sequence, {type: :int}
    end
    
    class KillClient < Xrb::Message
      layout :sequence, {type: :int}
    end
    
    class RotateProperties < Xrb::Message
      layout :sequence, {type: :int}
    end
    
    class ForceScreenSaver < Xrb::Message
      layout :sequence, {type: :int}
    end
    
    class SetPointerMapping < Xrb::Message
      layout :sequence, {type: :int}
    end
    
    class GetPointerMapping < Xrb::Message
      layout :sequence, {type: :int}
    end
    
    class SetModifierMapping < Xrb::Message
      layout :sequence, {type: :int}
    end
    
    class GetModifierMapping < Xrb::Message
      layout :sequence, {type: :int}
    end
    
    class NoOperation < Xrb::Message
      layout :sequence, {type: :int}
    end
    
  end
end
