#
# This file was auto-generated. Do not edit.
#

module Xrb
  module Request
    class CreateWindow < Xrb::Message
      OPCODE = 1
      
      layout \
          :major_opcode, :uint8,
          :depth, :uint8,
          :length, :uint16,
          :wid, :uint32,
          :parent, :uint32,
          :x, :int16,
          :y, :int16,
          :width, :uint16,
          :height, :uint16,
          :border_width, :uint16,
          :class, :uint16,
          :visual, :uint32,
          :value_mask, :uint32
    end
    
    class ChangeWindowAttributes < Xrb::Message
      OPCODE = 2
      
      layout \
          :major_opcode, :uint8,
          :pad1, [:uint8, 1],
          :length, :uint16,
          :window, :uint32,
          :value_mask, :uint32
    end
    
    class GetWindowAttributes < Xrb::Message
      OPCODE = 3
      
      layout \
          :major_opcode, :uint8,
          :visual, :uint32,
          :length, :uint16,
          :class, :uint16,
          :bit_gravity, :uint8,
          :win_gravity, :uint8,
          :backing_planes, :uint32,
          :backing_pixel, :uint32,
          :save_under, :bool,
          :map_is_installed, :bool,
          :map_state, :uint8,
          :override_redirect, :bool,
          :colormap, :uint32,
          :all_event_masks, :uint32,
          :your_event_mask, :uint32,
          :do_not_propagate_mask, :uint16,
          :pad1, [:uint8, 2]
    end
    
    class DestroyWindow < Xrb::Message
      OPCODE = 4
      
      layout \
          :major_opcode, :uint8,
          :pad1, [:uint8, 1],
          :length, :uint16,
          :window, :uint32
    end
    
    class DestroySubwindows < Xrb::Message
      OPCODE = 5
      
      layout \
          :major_opcode, :uint8,
          :pad1, [:uint8, 1],
          :length, :uint16,
          :window, :uint32
    end
    
    class ChangeSaveSet < Xrb::Message
      OPCODE = 6
      
      layout \
          :major_opcode, :uint8,
          :mode, :uint8,
          :length, :uint16,
          :window, :uint32
    end
    
    class ReparentWindow < Xrb::Message
      OPCODE = 7
      
      layout \
          :major_opcode, :uint8,
          :pad1, [:uint8, 1],
          :length, :uint16,
          :window, :uint32,
          :parent, :uint32,
          :x, :int16,
          :y, :int16
    end
    
    class MapWindow < Xrb::Message
      OPCODE = 8
      
      layout \
          :major_opcode, :uint8,
          :pad1, [:uint8, 1],
          :length, :uint16,
          :window, :uint32
    end
    
    class MapSubwindows < Xrb::Message
      OPCODE = 9
      
      layout \
          :major_opcode, :uint8,
          :pad1, [:uint8, 1],
          :length, :uint16,
          :window, :uint32
    end
    
    class UnmapWindow < Xrb::Message
      OPCODE = 10
      
      layout \
          :major_opcode, :uint8,
          :pad1, [:uint8, 1],
          :length, :uint16,
          :window, :uint32
    end
    
    class UnmapSubwindows < Xrb::Message
      OPCODE = 11
      
      layout \
          :major_opcode, :uint8,
          :pad1, [:uint8, 1],
          :length, :uint16,
          :window, :uint32
    end
    
    class ConfigureWindow < Xrb::Message
      OPCODE = 12
      
      layout \
          :major_opcode, :uint8,
          :pad1, [:uint8, 1],
          :length, :uint16,
          :window, :uint32,
          :value_mask, :uint16,
          :pad2, [:uint8, 2],
          :value_mask, :uint16
    end
    
    class CirculateWindow < Xrb::Message
      OPCODE = 13
      
      layout \
          :major_opcode, :uint8,
          :direction, :uint8,
          :length, :uint16,
          :window, :uint32
    end
    
    class GetGeometry < Xrb::Message
      OPCODE = 14
      
      layout \
          :major_opcode, :uint8,
          :root, :uint32,
          :length, :uint16,
          :x, :int16,
          :y, :int16,
          :width, :uint16,
          :height, :uint16,
          :border_width, :uint16,
          :pad1, [:uint8, 2]
    end
    
    class QueryTree < Xrb::Message
      OPCODE = 15
      
      layout \
          :major_opcode, :uint8,
          :root, :uint32,
          :length, :uint16,
          :parent, :uint32,
          :children_len, :uint16,
          :pad2, [:uint8, 14],
          :children, [:children_len, :uint32, :list]
    end
    
    class InternAtom < Xrb::Message
      OPCODE = 16
      
      layout \
          :major_opcode, :uint8,
          :atom, :uint32,
          :length, :uint16
    end
    
    class GetAtomName < Xrb::Message
      OPCODE = 17
      
      layout \
          :major_opcode, :uint8,
          :name_len, :uint16,
          :length, :uint16,
          :pad2, [:uint8, 22],
          :name, [:name_len, :char, :string]
    end
    
    class ChangeProperty < Xrb::Message
      OPCODE = 18
      
      layout \
          :major_opcode, :uint8,
          :mode, :uint8,
          :length, :uint16,
          :window, :uint32,
          :property, :uint32,
          :type, :uint32,
          :format, :uint8,
          :pad1, [:uint8, 3],
          :data_len, :uint32,
          :data, [:data_len, :uint8, :list]
    end
    
    class DeleteProperty < Xrb::Message
      OPCODE = 19
      
      layout \
          :major_opcode, :uint8,
          :pad1, [:uint8, 1],
          :length, :uint16,
          :window, :uint32,
          :property, :uint32
    end
    
    class GetProperty < Xrb::Message
      OPCODE = 20
      
      layout \
          :major_opcode, :uint8,
          :type, :uint32,
          :length, :uint16,
          :bytes_after, :uint32,
          :value_len, :uint32,
          :pad1, [:uint8, 12],
          :value, [:format, :uint8, :list]
    end
    
    class ListProperties < Xrb::Message
      OPCODE = 21
      
      layout \
          :major_opcode, :uint8,
          :atoms_len, :uint16,
          :length, :uint16,
          :pad2, [:uint8, 22],
          :atoms, [:atoms_len, :uint32, :list]
    end
    
    class SetSelectionOwner < Xrb::Message
      OPCODE = 22
      
      layout \
          :major_opcode, :uint8,
          :pad1, [:uint8, 1],
          :length, :uint16,
          :owner, :uint32,
          :selection, :uint32,
          :time, :uint32
    end
    
    class GetSelectionOwner < Xrb::Message
      OPCODE = 23
      
      layout \
          :major_opcode, :uint8,
          :owner, :uint32,
          :length, :uint16
    end
    
    class ConvertSelection < Xrb::Message
      OPCODE = 24
      
      layout \
          :major_opcode, :uint8,
          :pad1, [:uint8, 1],
          :length, :uint16,
          :requestor, :uint32,
          :selection, :uint32,
          :target, :uint32,
          :property, :uint32,
          :time, :uint32
    end
    
    class SendEvent < Xrb::Message
      OPCODE = 25
      
      layout \
          :major_opcode, :uint8,
          :propagate, :bool,
          :length, :uint16,
          :destination, :uint32,
          :event_mask, :uint32,
          :event, [:char, 32]
    end
    
    class GrabPointer < Xrb::Message
      OPCODE = 26
      
      layout \
          :major_opcode, :uint8,
          :pad0, [:uint8, 1],
          :length, :uint16
    end
    
    class UngrabPointer < Xrb::Message
      OPCODE = 27
      
      layout \
          :major_opcode, :uint8,
          :pad1, [:uint8, 1],
          :length, :uint16,
          :time, :uint32
    end
    
    class GrabButton < Xrb::Message
      OPCODE = 28
      
      layout \
          :major_opcode, :uint8,
          :owner_events, :bool,
          :length, :uint16,
          :grab_window, :uint32,
          :event_mask, :uint16,
          :pointer_mode, :uint8,
          :keyboard_mode, :uint8,
          :confine_to, :uint32,
          :cursor, :uint32,
          :button, :uint8,
          :pad1, [:uint8, 1],
          :modifiers, :uint16
    end
    
    class UngrabButton < Xrb::Message
      OPCODE = 29
      
      layout \
          :major_opcode, :uint8,
          :button, :uint8,
          :length, :uint16,
          :grab_window, :uint32,
          :modifiers, :uint16,
          :pad1, [:uint8, 2]
    end
    
    class ChangeActivePointerGrab < Xrb::Message
      OPCODE = 30
      
      layout \
          :major_opcode, :uint8,
          :pad1, [:uint8, 1],
          :length, :uint16,
          :cursor, :uint32,
          :time, :uint32,
          :event_mask, :uint16,
          :pad2, [:uint8, 2]
    end
    
    class GrabKeyboard < Xrb::Message
      OPCODE = 31
      
      layout \
          :major_opcode, :uint8,
          :pad0, [:uint8, 1],
          :length, :uint16
    end
    
    class UngrabKeyboard < Xrb::Message
      OPCODE = 32
      
      layout \
          :major_opcode, :uint8,
          :pad1, [:uint8, 1],
          :length, :uint16,
          :time, :uint32
    end
    
    class GrabKey < Xrb::Message
      OPCODE = 33
      
      layout \
          :major_opcode, :uint8,
          :owner_events, :bool,
          :length, :uint16,
          :grab_window, :uint32,
          :modifiers, :uint16,
          :key, :uint8,
          :pointer_mode, :uint8,
          :keyboard_mode, :uint8,
          :pad1, [:uint8, 3]
    end
    
    class UngrabKey < Xrb::Message
      OPCODE = 34
      
      layout \
          :major_opcode, :uint8,
          :key, :uint8,
          :length, :uint16,
          :grab_window, :uint32,
          :modifiers, :uint16,
          :pad1, [:uint8, 2]
    end
    
    class AllowEvents < Xrb::Message
      OPCODE = 35
      
      layout \
          :major_opcode, :uint8,
          :mode, :uint8,
          :length, :uint16,
          :time, :uint32
    end
    
    class GrabServer < Xrb::Message
      OPCODE = 36
      
      layout \
          :major_opcode, :uint8,
          :pad0, [:uint8, 1],
          :length, :uint16
    end
    
    class UngrabServer < Xrb::Message
      OPCODE = 37
      
      layout \
          :major_opcode, :uint8,
          :pad0, [:uint8, 1],
          :length, :uint16
    end
    
    class QueryPointer < Xrb::Message
      OPCODE = 38
      
      layout \
          :major_opcode, :uint8,
          :root, :uint32,
          :length, :uint16,
          :child, :uint32,
          :root_x, :int16,
          :root_y, :int16,
          :win_x, :int16,
          :win_y, :int16,
          :mask, :uint16,
          :pad1, [:uint8, 2]
    end
    
    class GetMotionEvents < Xrb::Message
      OPCODE = 39
      
      layout \
          :major_opcode, :uint8,
          :events_len, :uint32,
          :length, :uint16,
          :pad2, [:uint8, 20],
          :events, [:events_len, :TIMECOORD, :list]
    end
    
    class TranslateCoordinates < Xrb::Message
      OPCODE = 40
      
      layout \
          :major_opcode, :uint8,
          :child, :uint32,
          :length, :uint16,
          :dst_x, :int16,
          :dst_y, :int16
    end
    
    class WarpPointer < Xrb::Message
      OPCODE = 41
      
      layout \
          :major_opcode, :uint8,
          :pad1, [:uint8, 1],
          :length, :uint16,
          :src_window, :uint32,
          :dst_window, :uint32,
          :src_x, :int16,
          :src_y, :int16,
          :src_width, :uint16,
          :src_height, :uint16,
          :dst_x, :int16,
          :dst_y, :int16
    end
    
    class SetInputFocus < Xrb::Message
      OPCODE = 42
      
      layout \
          :major_opcode, :uint8,
          :revert_to, :uint8,
          :length, :uint16,
          :focus, :uint32,
          :time, :uint32
    end
    
    class GetInputFocus < Xrb::Message
      OPCODE = 43
      
      layout \
          :major_opcode, :uint8,
          :focus, :uint32,
          :length, :uint16
    end
    
    class QueryKeymap < Xrb::Message
      OPCODE = 44
      
      layout \
          :major_opcode, :uint8,
          :keys, [:uint8, 32],
          :length, :uint16
    end
    
    class OpenFont < Xrb::Message
      OPCODE = 45
      
      layout \
          :major_opcode, :uint8,
          :pad1, [:uint8, 1],
          :length, :uint16,
          :fid, :uint32,
          :name_len, :uint16,
          :pad2, [:uint8, 2],
          :name, [:name_len, :char, :string]
    end
    
    class CloseFont < Xrb::Message
      OPCODE = 46
      
      layout \
          :major_opcode, :uint8,
          :pad1, [:uint8, 1],
          :length, :uint16,
          :font, :uint32
    end
    
    class QueryFont < Xrb::Message
      OPCODE = 47
      
      layout \
          :major_opcode, :uint8,
          :min_bounds, :CHARINFO,
          :length, :uint16,
          :pad2, [:uint8, 4],
          :max_bounds, :CHARINFO,
          :pad3, [:uint8, 4],
          :min_char_or_byte2, :uint16,
          :max_char_or_byte2, :uint16,
          :default_char, :uint16,
          :properties_len, :uint16,
          :draw_direction, :uint8,
          :min_byte1, :uint8,
          :max_byte1, :uint8,
          :all_chars_exist, :bool,
          :font_ascent, :int16,
          :font_descent, :int16,
          :char_infos_len, :uint32,
          :properties, [:properties_len, :FONTPROP, :list],
          :char_infos, [:char_infos_len, :CHARINFO, :list]
    end
    
    class QueryTextExtents < Xrb::Message
      OPCODE = 48
      
      layout \
          :major_opcode, :uint8,
          :font_ascent, :int16,
          :length, :uint16,
          :font_descent, :int16,
          :overall_ascent, :int16,
          :overall_descent, :int16,
          :overall_width, :int32,
          :overall_left, :int32,
          :overall_right, :int32
    end
    
    class ListFonts < Xrb::Message
      OPCODE = 49
      
      layout \
          :major_opcode, :uint8,
          :names_len, :uint16,
          :length, :uint16,
          :pad2, [:uint8, 22],
          :names, [:names_len, :STR, :list]
    end
    
    class ListFontsWithInfo < Xrb::Message
      OPCODE = 50
      
      layout \
          :major_opcode, :uint8,
          :min_bounds, :CHARINFO,
          :length, :uint16,
          :pad1, [:uint8, 4],
          :max_bounds, :CHARINFO,
          :pad2, [:uint8, 4],
          :min_char_or_byte2, :uint16,
          :max_char_or_byte2, :uint16,
          :default_char, :uint16,
          :properties_len, :uint16,
          :draw_direction, :uint8,
          :min_byte1, :uint8,
          :max_byte1, :uint8,
          :all_chars_exist, :bool,
          :font_ascent, :int16,
          :font_descent, :int16,
          :replies_hint, :uint32,
          :properties, [:properties_len, :FONTPROP, :list],
          :name, [:name_len, :char, :string]
    end
    
    class SetFontPath < Xrb::Message
      OPCODE = 51
      
      layout \
          :major_opcode, :uint8,
          :pad1, [:uint8, 1],
          :length, :uint16,
          :font_qty, :uint16,
          :pad2, [:uint8, 2],
          :font, [:font_qty, :STR, :list]
    end
    
    class GetFontPath < Xrb::Message
      OPCODE = 52
      
      layout \
          :major_opcode, :uint8,
          :path_len, :uint16,
          :length, :uint16,
          :pad2, [:uint8, 22],
          :path, [:path_len, :STR, :list]
    end
    
    class CreatePixmap < Xrb::Message
      OPCODE = 53
      
      layout \
          :major_opcode, :uint8,
          :depth, :uint8,
          :length, :uint16,
          :pid, :uint32,
          :drawable, :uint32,
          :width, :uint16,
          :height, :uint16
    end
    
    class FreePixmap < Xrb::Message
      OPCODE = 54
      
      layout \
          :major_opcode, :uint8,
          :pad1, [:uint8, 1],
          :length, :uint16,
          :pixmap, :uint32
    end
    
    class CreateGc < Xrb::Message
      OPCODE = 55
      
      layout \
          :major_opcode, :uint8,
          :pad1, [:uint8, 1],
          :length, :uint16,
          :cid, :uint32,
          :drawable, :uint32,
          :value_mask, :uint32
    end
    
    class ChangeGc < Xrb::Message
      OPCODE = 56
      
      layout \
          :major_opcode, :uint8,
          :pad1, [:uint8, 1],
          :length, :uint16,
          :gc, :uint32,
          :value_mask, :uint32
    end
    
    class CopyGc < Xrb::Message
      OPCODE = 57
      
      layout \
          :major_opcode, :uint8,
          :pad1, [:uint8, 1],
          :length, :uint16,
          :src_gc, :uint32,
          :dst_gc, :uint32,
          :value_mask, :uint32
    end
    
    class SetDashes < Xrb::Message
      OPCODE = 58
      
      layout \
          :major_opcode, :uint8,
          :pad1, [:uint8, 1],
          :length, :uint16,
          :gc, :uint32,
          :dash_offset, :uint16,
          :dashes_len, :uint16,
          :dashes, [:dashes_len, :uint8, :list]
    end
    
    class SetClipRectangles < Xrb::Message
      OPCODE = 59
      
      layout \
          :major_opcode, :uint8,
          :ordering, :uint8,
          :length, :uint16,
          :gc, :uint32,
          :clip_x_origin, :int16,
          :clip_y_origin, :int16
    end
    
    class FreeGc < Xrb::Message
      OPCODE = 60
      
      layout \
          :major_opcode, :uint8,
          :pad1, [:uint8, 1],
          :length, :uint16,
          :gc, :uint32
    end
    
    class ClearArea < Xrb::Message
      OPCODE = 61
      
      layout \
          :major_opcode, :uint8,
          :exposures, :bool,
          :length, :uint16,
          :window, :uint32,
          :x, :int16,
          :y, :int16,
          :width, :uint16,
          :height, :uint16
    end
    
    class CopyArea < Xrb::Message
      OPCODE = 62
      
      layout \
          :major_opcode, :uint8,
          :pad1, [:uint8, 1],
          :length, :uint16,
          :src_drawable, :uint32,
          :dst_drawable, :uint32,
          :gc, :uint32,
          :src_x, :int16,
          :src_y, :int16,
          :dst_x, :int16,
          :dst_y, :int16,
          :width, :uint16,
          :height, :uint16
    end
    
    class CopyPlane < Xrb::Message
      OPCODE = 63
      
      layout \
          :major_opcode, :uint8,
          :pad1, [:uint8, 1],
          :length, :uint16,
          :src_drawable, :uint32,
          :dst_drawable, :uint32,
          :gc, :uint32,
          :src_x, :int16,
          :src_y, :int16,
          :dst_x, :int16,
          :dst_y, :int16,
          :width, :uint16,
          :height, :uint16,
          :bit_plane, :uint32
    end
    
    class PolyPoint < Xrb::Message
      OPCODE = 64
      
      layout \
          :major_opcode, :uint8,
          :coordinate_mode, :uint8,
          :length, :uint16,
          :drawable, :uint32,
          :gc, :uint32
    end
    
    class PolyLine < Xrb::Message
      OPCODE = 65
      
      layout \
          :major_opcode, :uint8,
          :coordinate_mode, :uint8,
          :length, :uint16,
          :drawable, :uint32,
          :gc, :uint32
    end
    
    class PolySegment < Xrb::Message
      OPCODE = 66
      
      layout \
          :major_opcode, :uint8,
          :pad1, [:uint8, 1],
          :length, :uint16,
          :drawable, :uint32,
          :gc, :uint32
    end
    
    class PolyRectangle < Xrb::Message
      OPCODE = 67
      
      layout \
          :major_opcode, :uint8,
          :pad1, [:uint8, 1],
          :length, :uint16,
          :drawable, :uint32,
          :gc, :uint32
    end
    
    class PolyArc < Xrb::Message
      OPCODE = 68
      
      layout \
          :major_opcode, :uint8,
          :pad1, [:uint8, 1],
          :length, :uint16,
          :drawable, :uint32,
          :gc, :uint32
    end
    
    class FillPoly < Xrb::Message
      OPCODE = 69
      
      layout \
          :major_opcode, :uint8,
          :pad1, [:uint8, 1],
          :length, :uint16,
          :drawable, :uint32,
          :gc, :uint32,
          :shape, :uint8,
          :coordinate_mode, :uint8,
          :pad2, [:uint8, 2]
    end
    
    class PolyFillRectangle < Xrb::Message
      OPCODE = 70
      
      layout \
          :major_opcode, :uint8,
          :pad1, [:uint8, 1],
          :length, :uint16,
          :drawable, :uint32,
          :gc, :uint32
    end
    
    class PolyFillArc < Xrb::Message
      OPCODE = 71
      
      layout \
          :major_opcode, :uint8,
          :pad1, [:uint8, 1],
          :length, :uint16,
          :drawable, :uint32,
          :gc, :uint32
    end
    
    class PutImage < Xrb::Message
      OPCODE = 72
      
      layout \
          :major_opcode, :uint8,
          :format, :uint8,
          :length, :uint16,
          :drawable, :uint32,
          :gc, :uint32,
          :width, :uint16,
          :height, :uint16,
          :dst_x, :int16,
          :dst_y, :int16,
          :left_pad, :uint8,
          :depth, :uint8,
          :pad1, [:uint8, 2]
    end
    
    class GetImage < Xrb::Message
      OPCODE = 73
      
      layout \
          :major_opcode, :uint8,
          :visual, :uint32,
          :length, :uint16,
          :pad1, [:uint8, 20],
          :data, [:length, :uint8, :list]
    end
    
    class PolyText_8 < Xrb::Message
      OPCODE = 74
      
      layout \
          :major_opcode, :uint8,
          :pad1, [:uint8, 1],
          :length, :uint16,
          :drawable, :uint32,
          :gc, :uint32,
          :x, :int16,
          :y, :int16
    end
    
    class PolyText_16 < Xrb::Message
      OPCODE = 75
      
      layout \
          :major_opcode, :uint8,
          :pad1, [:uint8, 1],
          :length, :uint16,
          :drawable, :uint32,
          :gc, :uint32,
          :x, :int16,
          :y, :int16
    end
    
    class ImageText_8 < Xrb::Message
      OPCODE = 76
      
      layout \
          :major_opcode, :uint8,
          :string_len, :uint8,
          :length, :uint16,
          :drawable, :uint32,
          :gc, :uint32,
          :x, :int16,
          :y, :int16,
          :string, [:string_len, :char, :string]
    end
    
    class ImageText_16 < Xrb::Message
      OPCODE = 77
      
      layout \
          :major_opcode, :uint8,
          :string_len, :uint8,
          :length, :uint16,
          :drawable, :uint32,
          :gc, :uint32,
          :x, :int16,
          :y, :int16,
          :string, [:string_len, :CHAR2B, :list]
    end
    
    class CreateColormap < Xrb::Message
      OPCODE = 78
      
      layout \
          :major_opcode, :uint8,
          :alloc, :uint8,
          :length, :uint16,
          :mid, :uint32,
          :window, :uint32,
          :visual, :uint32
    end
    
    class FreeColormap < Xrb::Message
      OPCODE = 79
      
      layout \
          :major_opcode, :uint8,
          :pad1, [:uint8, 1],
          :length, :uint16,
          :cmap, :uint32
    end
    
    class CopyColormapAndFree < Xrb::Message
      OPCODE = 80
      
      layout \
          :major_opcode, :uint8,
          :pad1, [:uint8, 1],
          :length, :uint16,
          :mid, :uint32,
          :src_cmap, :uint32
    end
    
    class InstallColormap < Xrb::Message
      OPCODE = 81
      
      layout \
          :major_opcode, :uint8,
          :pad1, [:uint8, 1],
          :length, :uint16,
          :cmap, :uint32
    end
    
    class UninstallColormap < Xrb::Message
      OPCODE = 82
      
      layout \
          :major_opcode, :uint8,
          :pad1, [:uint8, 1],
          :length, :uint16,
          :cmap, :uint32
    end
    
    class ListInstalledColormaps < Xrb::Message
      OPCODE = 83
      
      layout \
          :major_opcode, :uint8,
          :cmaps_len, :uint16,
          :length, :uint16,
          :pad2, [:uint8, 22],
          :cmaps, [:cmaps_len, :uint32, :list]
    end
    
    class AllocColor < Xrb::Message
      OPCODE = 84
      
      layout \
          :major_opcode, :uint8,
          :red, :uint16,
          :length, :uint16,
          :green, :uint16,
          :blue, :uint16,
          :pad2, [:uint8, 2],
          :pixel, :uint32
    end
    
    class AllocNamedColor < Xrb::Message
      OPCODE = 85
      
      layout \
          :major_opcode, :uint8,
          :pixel, :uint32,
          :length, :uint16,
          :exact_red, :uint16,
          :exact_green, :uint16,
          :exact_blue, :uint16,
          :visual_red, :uint16,
          :visual_green, :uint16,
          :visual_blue, :uint16
    end
    
    class AllocColorCells < Xrb::Message
      OPCODE = 86
      
      layout \
          :major_opcode, :uint8,
          :pixels_len, :uint16,
          :length, :uint16,
          :masks_len, :uint16,
          :pad2, [:uint8, 20],
          :pixels, [:pixels_len, :uint32, :list],
          :masks, [:masks_len, :uint32, :list]
    end
    
    class AllocColorPlanes < Xrb::Message
      OPCODE = 87
      
      layout \
          :major_opcode, :uint8,
          :pixels_len, :uint16,
          :length, :uint16,
          :pad2, [:uint8, 2],
          :red_mask, :uint32,
          :green_mask, :uint32,
          :blue_mask, :uint32,
          :pad3, [:uint8, 8],
          :pixels, [:pixels_len, :uint32, :list]
    end
    
    class FreeColors < Xrb::Message
      OPCODE = 88
      
      layout \
          :major_opcode, :uint8,
          :pad1, [:uint8, 1],
          :length, :uint16,
          :cmap, :uint32,
          :plane_mask, :uint32
    end
    
    class StoreColors < Xrb::Message
      OPCODE = 89
      
      layout \
          :major_opcode, :uint8,
          :pad1, [:uint8, 1],
          :length, :uint16,
          :cmap, :uint32
    end
    
    class StoreNamedColor < Xrb::Message
      OPCODE = 90
      
      layout \
          :major_opcode, :uint8,
          :flags, :uint8,
          :length, :uint16,
          :cmap, :uint32,
          :pixel, :uint32,
          :name_len, :uint16,
          :pad1, [:uint8, 2],
          :name, [:name_len, :char, :string]
    end
    
    class QueryColors < Xrb::Message
      OPCODE = 91
      
      layout \
          :major_opcode, :uint8,
          :colors_len, :uint16,
          :length, :uint16,
          :pad2, [:uint8, 22],
          :colors, [:colors_len, :RGB, :list]
    end
    
    class LookupColor < Xrb::Message
      OPCODE = 92
      
      layout \
          :major_opcode, :uint8,
          :exact_red, :uint16,
          :length, :uint16,
          :exact_green, :uint16,
          :exact_blue, :uint16,
          :visual_red, :uint16,
          :visual_green, :uint16,
          :visual_blue, :uint16
    end
    
    class CreateCursor < Xrb::Message
      OPCODE = 93
      
      layout \
          :major_opcode, :uint8,
          :pad1, [:uint8, 1],
          :length, :uint16,
          :cid, :uint32,
          :source, :uint32,
          :mask, :uint32,
          :fore_red, :uint16,
          :fore_green, :uint16,
          :fore_blue, :uint16,
          :back_red, :uint16,
          :back_green, :uint16,
          :back_blue, :uint16,
          :x, :uint16,
          :y, :uint16
    end
    
    class CreateGlyphCursor < Xrb::Message
      OPCODE = 94
      
      layout \
          :major_opcode, :uint8,
          :pad1, [:uint8, 1],
          :length, :uint16,
          :cid, :uint32,
          :source_font, :uint32,
          :mask_font, :uint32,
          :source_char, :uint16,
          :mask_char, :uint16,
          :fore_red, :uint16,
          :fore_green, :uint16,
          :fore_blue, :uint16,
          :back_red, :uint16,
          :back_green, :uint16,
          :back_blue, :uint16
    end
    
    class FreeCursor < Xrb::Message
      OPCODE = 95
      
      layout \
          :major_opcode, :uint8,
          :pad1, [:uint8, 1],
          :length, :uint16,
          :cursor, :uint32
    end
    
    class RecolorCursor < Xrb::Message
      OPCODE = 96
      
      layout \
          :major_opcode, :uint8,
          :pad1, [:uint8, 1],
          :length, :uint16,
          :cursor, :uint32,
          :fore_red, :uint16,
          :fore_green, :uint16,
          :fore_blue, :uint16,
          :back_red, :uint16,
          :back_green, :uint16,
          :back_blue, :uint16
    end
    
    class QueryBestSize < Xrb::Message
      OPCODE = 97
      
      layout \
          :major_opcode, :uint8,
          :width, :uint16,
          :length, :uint16,
          :height, :uint16
    end
    
    class QueryExtension < Xrb::Message
      OPCODE = 98
      
      layout \
          :major_opcode, :uint8,
          :present, :bool,
          :length, :uint16,
          :major_opcode, :uint8,
          :first_event, :uint8,
          :first_error, :uint8
    end
    
    class ListExtensions < Xrb::Message
      OPCODE = 99
      
      layout \
          :major_opcode, :uint8,
          :pad1, [:uint8, 24],
          :length, :uint16,
          :names, [:names_len, :STR, :list]
    end
    
    class ChangeKeyboardMapping < Xrb::Message
      OPCODE = 100
      
      layout \
          :major_opcode, :uint8,
          :keycode_count, :uint8,
          :length, :uint16,
          :first_keycode, :uint8,
          :keysyms_per_keycode, :uint8,
          :pad1, [:uint8, 2],
          :keysyms, [:keycode_count, :uint32, :list]
    end
    
    class GetKeyboardMapping < Xrb::Message
      OPCODE = 101
      
      layout \
          :major_opcode, :uint8,
          :pad1, [:uint8, 24],
          :length, :uint16,
          :keysyms, [:length, :uint32, :list]
    end
    
    class ChangeKeyboardControl < Xrb::Message
      OPCODE = 102
      
      layout \
          :major_opcode, :uint8,
          :pad1, [:uint8, 1],
          :length, :uint16,
          :value_mask, :uint32
    end
    
    class GetKeyboardControl < Xrb::Message
      OPCODE = 103
      
      layout \
          :major_opcode, :uint8,
          :led_mask, :uint32,
          :length, :uint16,
          :key_click_percent, :uint8,
          :bell_percent, :uint8,
          :bell_pitch, :uint16,
          :bell_duration, :uint16,
          :pad1, [:uint8, 2],
          :auto_repeats, [:uint8, 32]
    end
    
    class Bell < Xrb::Message
      OPCODE = 104
      
      layout \
          :major_opcode, :uint8,
          :percent, :int8,
          :length, :uint16
    end
    
    class ChangePointerControl < Xrb::Message
      OPCODE = 105
      
      layout \
          :major_opcode, :uint8,
          :pad1, [:uint8, 1],
          :length, :uint16,
          :acceleration_numerator, :int16,
          :acceleration_denominator, :int16,
          :threshold, :int16,
          :do_acceleration, :bool,
          :do_threshold, :bool
    end
    
    class GetPointerControl < Xrb::Message
      OPCODE = 106
      
      layout \
          :major_opcode, :uint8,
          :acceleration_numerator, :uint16,
          :length, :uint16,
          :acceleration_denominator, :uint16,
          :threshold, :uint16,
          :pad2, [:uint8, 18]
    end
    
    class SetScreenSaver < Xrb::Message
      OPCODE = 107
      
      layout \
          :major_opcode, :uint8,
          :pad1, [:uint8, 1],
          :length, :uint16,
          :timeout, :int16,
          :interval, :int16,
          :prefer_blanking, :uint8,
          :allow_exposures, :uint8
    end
    
    class GetScreenSaver < Xrb::Message
      OPCODE = 108
      
      layout \
          :major_opcode, :uint8,
          :timeout, :uint16,
          :length, :uint16,
          :interval, :uint16,
          :prefer_blanking, :uint8,
          :allow_exposures, :uint8,
          :pad2, [:uint8, 18]
    end
    
    class ChangeHosts < Xrb::Message
      OPCODE = 109
      
      layout \
          :major_opcode, :uint8,
          :mode, :uint8,
          :length, :uint16,
          :family, :uint8,
          :pad1, [:uint8, 1],
          :address_len, :uint16,
          :address, [:address_len, :uint8, :list]
    end
    
    class ListHosts < Xrb::Message
      OPCODE = 110
      
      layout \
          :major_opcode, :uint8,
          :hosts_len, :uint16,
          :length, :uint16,
          :pad1, [:uint8, 22],
          :hosts, [:hosts_len, :HOST, :list]
    end
    
    class SetAccessControl < Xrb::Message
      OPCODE = 111
      
      layout \
          :major_opcode, :uint8,
          :mode, :uint8,
          :length, :uint16
    end
    
    class SetCloseDownMode < Xrb::Message
      OPCODE = 112
      
      layout \
          :major_opcode, :uint8,
          :mode, :uint8,
          :length, :uint16
    end
    
    class KillClient < Xrb::Message
      OPCODE = 113
      
      layout \
          :major_opcode, :uint8,
          :pad1, [:uint8, 1],
          :length, :uint16,
          :resource, :uint32
    end
    
    class RotateProperties < Xrb::Message
      OPCODE = 114
      
      layout \
          :major_opcode, :uint8,
          :pad1, [:uint8, 1],
          :length, :uint16,
          :window, :uint32,
          :atoms_len, :uint16,
          :delta, :int16,
          :atoms, [:atoms_len, :uint32, :list]
    end
    
    class ForceScreenSaver < Xrb::Message
      OPCODE = 115
      
      layout \
          :major_opcode, :uint8,
          :mode, :uint8,
          :length, :uint16
    end
    
    class SetPointerMapping < Xrb::Message
      OPCODE = 116
      
      layout \
          :major_opcode, :uint8,
          :pad0, [:uint8, 1],
          :length, :uint16
    end
    
    class GetPointerMapping < Xrb::Message
      OPCODE = 117
      
      layout \
          :major_opcode, :uint8,
          :pad1, [:uint8, 24],
          :length, :uint16,
          :map, [:map_len, :uint8, :list]
    end
    
    class SetModifierMapping < Xrb::Message
      OPCODE = 118
      
      layout \
          :major_opcode, :uint8,
          :pad0, [:uint8, 1],
          :length, :uint16
    end
    
    class GetModifierMapping < Xrb::Message
      OPCODE = 119
      
      layout \
          :major_opcode, :uint8,
          :pad1, [:uint8, 24],
          :length, :uint16,
          :keycodes, [:keycodes_per_modifier, :uint8, :list]
    end
    
    class NoOperation < Xrb::Message
      OPCODE = 127
      
      layout \
          :major_opcode, :uint8,
          :pad0, [:uint8, 1],
          :length, :uint16
    end
    
  end
end
