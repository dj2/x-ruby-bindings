#
# This file was auto-generated. Do not edit.
#

module Xrb
  module Cookie
    class CreateWindow < Xrd::Message
      layout :sequence, :int
    end
    
    class ChangeWindowAttributes < Xrd::Message
      layout :sequence, :int
    end
    
    class GetWindowAttributes < Xrd::Message
      layout :sequence, :int
    end
    
    class DestroyWindow < Xrd::Message
      layout :sequence, :int
    end
    
    class DestroySubwindows < Xrd::Message
      layout :sequence, :int
    end
    
    class ChangeSaveSet < Xrd::Message
      layout :sequence, :int
    end
    
    class ReparentWindow < Xrd::Message
      layout :sequence, :int
    end
    
    class MapWindow < Xrd::Message
      layout :sequence, :int
    end
    
    class MapSubwindows < Xrd::Message
      layout :sequence, :int
    end
    
    class UnmapWindow < Xrd::Message
      layout :sequence, :int
    end
    
    class UnmapSubwindows < Xrd::Message
      layout :sequence, :int
    end
    
    class ConfigureWindow < Xrd::Message
      layout :sequence, :int
    end
    
    class CirculateWindow < Xrd::Message
      layout :sequence, :int
    end
    
    class GetGeometry < Xrd::Message
      layout :sequence, :int
    end
    
    class QueryTree < Xrd::Message
      layout :sequence, :int
    end
    
    class InternAtom < Xrd::Message
      layout :sequence, :int
    end
    
    class GetAtomName < Xrd::Message
      layout :sequence, :int
    end
    
    class ChangeProperty < Xrd::Message
      layout :sequence, :int
    end
    
    class DeleteProperty < Xrd::Message
      layout :sequence, :int
    end
    
    class GetProperty < Xrd::Message
      layout :sequence, :int
    end
    
    class ListProperties < Xrd::Message
      layout :sequence, :int
    end
    
    class SetSelectionOwner < Xrd::Message
      layout :sequence, :int
    end
    
    class GetSelectionOwner < Xrd::Message
      layout :sequence, :int
    end
    
    class ConvertSelection < Xrd::Message
      layout :sequence, :int
    end
    
    class SendEvent < Xrd::Message
      layout :sequence, :int
    end
    
    class GrabPointer < Xrd::Message
      layout :sequence, :int
    end
    
    class UngrabPointer < Xrd::Message
      layout :sequence, :int
    end
    
    class GrabButton < Xrd::Message
      layout :sequence, :int
    end
    
    class UngrabButton < Xrd::Message
      layout :sequence, :int
    end
    
    class ChangeActivePointerGrab < Xrd::Message
      layout :sequence, :int
    end
    
    class GrabKeyboard < Xrd::Message
      layout :sequence, :int
    end
    
    class UngrabKeyboard < Xrd::Message
      layout :sequence, :int
    end
    
    class GrabKey < Xrd::Message
      layout :sequence, :int
    end
    
    class UngrabKey < Xrd::Message
      layout :sequence, :int
    end
    
    class AllowEvents < Xrd::Message
      layout :sequence, :int
    end
    
    class GrabServer < Xrd::Message
      layout :sequence, :int
    end
    
    class UngrabServer < Xrd::Message
      layout :sequence, :int
    end
    
    class QueryPointer < Xrd::Message
      layout :sequence, :int
    end
    
    class GetMotionEvents < Xrd::Message
      layout :sequence, :int
    end
    
    class TranslateCoordinates < Xrd::Message
      layout :sequence, :int
    end
    
    class WarpPointer < Xrd::Message
      layout :sequence, :int
    end
    
    class SetInputFocus < Xrd::Message
      layout :sequence, :int
    end
    
    class GetInputFocus < Xrd::Message
      layout :sequence, :int
    end
    
    class QueryKeymap < Xrd::Message
      layout :sequence, :int
    end
    
    class OpenFont < Xrd::Message
      layout :sequence, :int
    end
    
    class CloseFont < Xrd::Message
      layout :sequence, :int
    end
    
    class QueryFont < Xrd::Message
      layout :sequence, :int
    end
    
    class QueryTextExtents < Xrd::Message
      layout :sequence, :int
    end
    
    class ListFonts < Xrd::Message
      layout :sequence, :int
    end
    
    class ListFontsWithInfo < Xrd::Message
      layout :sequence, :int
    end
    
    class SetFontPath < Xrd::Message
      layout :sequence, :int
    end
    
    class GetFontPath < Xrd::Message
      layout :sequence, :int
    end
    
    class CreatePixmap < Xrd::Message
      layout :sequence, :int
    end
    
    class FreePixmap < Xrd::Message
      layout :sequence, :int
    end
    
    class CreateGc < Xrd::Message
      layout :sequence, :int
    end
    
    class ChangeGc < Xrd::Message
      layout :sequence, :int
    end
    
    class CopyGc < Xrd::Message
      layout :sequence, :int
    end
    
    class SetDashes < Xrd::Message
      layout :sequence, :int
    end
    
    class SetClipRectangles < Xrd::Message
      layout :sequence, :int
    end
    
    class FreeGc < Xrd::Message
      layout :sequence, :int
    end
    
    class ClearArea < Xrd::Message
      layout :sequence, :int
    end
    
    class CopyArea < Xrd::Message
      layout :sequence, :int
    end
    
    class CopyPlane < Xrd::Message
      layout :sequence, :int
    end
    
    class PolyPoint < Xrd::Message
      layout :sequence, :int
    end
    
    class PolyLine < Xrd::Message
      layout :sequence, :int
    end
    
    class PolySegment < Xrd::Message
      layout :sequence, :int
    end
    
    class PolyRectangle < Xrd::Message
      layout :sequence, :int
    end
    
    class PolyArc < Xrd::Message
      layout :sequence, :int
    end
    
    class FillPoly < Xrd::Message
      layout :sequence, :int
    end
    
    class PolyFillRectangle < Xrd::Message
      layout :sequence, :int
    end
    
    class PolyFillArc < Xrd::Message
      layout :sequence, :int
    end
    
    class PutImage < Xrd::Message
      layout :sequence, :int
    end
    
    class GetImage < Xrd::Message
      layout :sequence, :int
    end
    
    class PolyText_8 < Xrd::Message
      layout :sequence, :int
    end
    
    class PolyText_16 < Xrd::Message
      layout :sequence, :int
    end
    
    class ImageText_8 < Xrd::Message
      layout :sequence, :int
    end
    
    class ImageText_16 < Xrd::Message
      layout :sequence, :int
    end
    
    class CreateColormap < Xrd::Message
      layout :sequence, :int
    end
    
    class FreeColormap < Xrd::Message
      layout :sequence, :int
    end
    
    class CopyColormapAndFree < Xrd::Message
      layout :sequence, :int
    end
    
    class InstallColormap < Xrd::Message
      layout :sequence, :int
    end
    
    class UninstallColormap < Xrd::Message
      layout :sequence, :int
    end
    
    class ListInstalledColormaps < Xrd::Message
      layout :sequence, :int
    end
    
    class AllocColor < Xrd::Message
      layout :sequence, :int
    end
    
    class AllocNamedColor < Xrd::Message
      layout :sequence, :int
    end
    
    class AllocColorCells < Xrd::Message
      layout :sequence, :int
    end
    
    class AllocColorPlanes < Xrd::Message
      layout :sequence, :int
    end
    
    class FreeColors < Xrd::Message
      layout :sequence, :int
    end
    
    class StoreColors < Xrd::Message
      layout :sequence, :int
    end
    
    class StoreNamedColor < Xrd::Message
      layout :sequence, :int
    end
    
    class QueryColors < Xrd::Message
      layout :sequence, :int
    end
    
    class LookupColor < Xrd::Message
      layout :sequence, :int
    end
    
    class CreateCursor < Xrd::Message
      layout :sequence, :int
    end
    
    class CreateGlyphCursor < Xrd::Message
      layout :sequence, :int
    end
    
    class FreeCursor < Xrd::Message
      layout :sequence, :int
    end
    
    class RecolorCursor < Xrd::Message
      layout :sequence, :int
    end
    
    class QueryBestSize < Xrd::Message
      layout :sequence, :int
    end
    
    class QueryExtension < Xrd::Message
      layout :sequence, :int
    end
    
    class ListExtensions < Xrd::Message
      layout :sequence, :int
    end
    
    class ChangeKeyboardMapping < Xrd::Message
      layout :sequence, :int
    end
    
    class GetKeyboardMapping < Xrd::Message
      layout :sequence, :int
    end
    
    class ChangeKeyboardControl < Xrd::Message
      layout :sequence, :int
    end
    
    class GetKeyboardControl < Xrd::Message
      layout :sequence, :int
    end
    
    class Bell < Xrd::Message
      layout :sequence, :int
    end
    
    class ChangePointerControl < Xrd::Message
      layout :sequence, :int
    end
    
    class GetPointerControl < Xrd::Message
      layout :sequence, :int
    end
    
    class SetScreenSaver < Xrd::Message
      layout :sequence, :int
    end
    
    class GetScreenSaver < Xrd::Message
      layout :sequence, :int
    end
    
    class ChangeHosts < Xrd::Message
      layout :sequence, :int
    end
    
    class ListHosts < Xrd::Message
      layout :sequence, :int
    end
    
    class SetAccessControl < Xrd::Message
      layout :sequence, :int
    end
    
    class SetCloseDownMode < Xrd::Message
      layout :sequence, :int
    end
    
    class KillClient < Xrd::Message
      layout :sequence, :int
    end
    
    class RotateProperties < Xrd::Message
      layout :sequence, :int
    end
    
    class ForceScreenSaver < Xrd::Message
      layout :sequence, :int
    end
    
    class SetPointerMapping < Xrd::Message
      layout :sequence, :int
    end
    
    class GetPointerMapping < Xrd::Message
      layout :sequence, :int
    end
    
    class SetModifierMapping < Xrd::Message
      layout :sequence, :int
    end
    
    class GetModifierMapping < Xrd::Message
      layout :sequence, :int
    end
    
    class NoOperation < Xrd::Message
      layout :sequence, :int
    end
    
  end
end
