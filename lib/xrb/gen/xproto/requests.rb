#
# This file was auto-generated. Do not edit.
#

module Xrb
  module Request
    class CreateWindow < Xrb::Message
      include Xrb::Request

      OPCODE = 1

      layout \
          :major_opcode, {type: :uint8},
          :depth, {type: :uint8},
          :length, {type: :uint16},
          :wid, {type: :uint32},
          :parent, {type: :uint32},
          :x, {type: :int16},
          :y, {type: :int16},
          :width, {type: :uint16},
          :height, {type: :uint16},
          :border_width, {type: :uint16},
          :class, {type: :uint16},
          :visual, {type: :uint32},
          :value, {type: :uint32, kind: :map}
    end

    class ChangeWindowAttributes < Xrb::Message
      include Xrb::Request

      OPCODE = 2

      layout \
          :major_opcode, {type: :uint8},
          :pad1, {size: 1, type: :uint8},
          :length, {type: :uint16},
          :window, {type: :uint32},
          :value, {type: :uint32, kind: :map}
    end

    class GetWindowAttributes < Xrb::Message
      include Xrb::Request

      OPCODE = 3

      layout \
          :major_opcode, {type: :uint8},
          :visual, {type: :uint32},
          :length, {type: :uint16},
          :class, {type: :uint16},
          :bit_gravity, {type: :uint8},
          :win_gravity, {type: :uint8},
          :backing_planes, {type: :uint32},
          :backing_pixel, {type: :uint32},
          :save_under, {type: :bool},
          :map_is_installed, {type: :bool},
          :map_state, {type: :uint8},
          :override_redirect, {type: :bool},
          :colormap, {type: :uint32},
          :all_event_masks, {type: :uint32},
          :your_event_mask, {type: :uint32},
          :do_not_propagate_mask, {type: :uint16},
          :pad1, {size: 2, type: :uint8}
    end

    class DestroyWindow < Xrb::Message
      include Xrb::Request

      OPCODE = 4

      layout \
          :major_opcode, {type: :uint8},
          :pad1, {size: 1, type: :uint8},
          :length, {type: :uint16},
          :window, {type: :uint32}
    end

    class DestroySubwindows < Xrb::Message
      include Xrb::Request

      OPCODE = 5

      layout \
          :major_opcode, {type: :uint8},
          :pad1, {size: 1, type: :uint8},
          :length, {type: :uint16},
          :window, {type: :uint32}
    end

    class ChangeSaveSet < Xrb::Message
      include Xrb::Request

      OPCODE = 6

      layout \
          :major_opcode, {type: :uint8},
          :mode, {type: :uint8},
          :length, {type: :uint16},
          :window, {type: :uint32}
    end

    class ReparentWindow < Xrb::Message
      include Xrb::Request

      OPCODE = 7

      layout \
          :major_opcode, {type: :uint8},
          :pad1, {size: 1, type: :uint8},
          :length, {type: :uint16},
          :window, {type: :uint32},
          :parent, {type: :uint32},
          :x, {type: :int16},
          :y, {type: :int16}
    end

    class MapWindow < Xrb::Message
      include Xrb::Request

      OPCODE = 8

      layout \
          :major_opcode, {type: :uint8},
          :pad1, {size: 1, type: :uint8},
          :length, {type: :uint16},
          :window, {type: :uint32}
    end

    class MapSubwindows < Xrb::Message
      include Xrb::Request

      OPCODE = 9

      layout \
          :major_opcode, {type: :uint8},
          :pad1, {size: 1, type: :uint8},
          :length, {type: :uint16},
          :window, {type: :uint32}
    end

    class UnmapWindow < Xrb::Message
      include Xrb::Request

      OPCODE = 10

      layout \
          :major_opcode, {type: :uint8},
          :pad1, {size: 1, type: :uint8},
          :length, {type: :uint16},
          :window, {type: :uint32}
    end

    class UnmapSubwindows < Xrb::Message
      include Xrb::Request

      OPCODE = 11

      layout \
          :major_opcode, {type: :uint8},
          :pad1, {size: 1, type: :uint8},
          :length, {type: :uint16},
          :window, {type: :uint32}
    end

    class ConfigureWindow < Xrb::Message
      include Xrb::Request

      OPCODE = 12

      layout \
          :major_opcode, {type: :uint8},
          :pad1, {size: 1, type: :uint8},
          :length, {type: :uint16},
          :window, {type: :uint32},
          :value_mask, {type: :uint16},
          :pad2, {size: 2, type: :uint8},
          :value, {type: :uint16, kind: :map}
    end

    class CirculateWindow < Xrb::Message
      include Xrb::Request

      OPCODE = 13

      layout \
          :major_opcode, {type: :uint8},
          :direction, {type: :uint8},
          :length, {type: :uint16},
          :window, {type: :uint32}
    end

    class GetGeometry < Xrb::Message
      include Xrb::Request

      OPCODE = 14

      layout \
          :major_opcode, {type: :uint8},
          :root, {type: :uint32},
          :length, {type: :uint16},
          :x, {type: :int16},
          :y, {type: :int16},
          :width, {type: :uint16},
          :height, {type: :uint16},
          :border_width, {type: :uint16},
          :pad1, {size: 2, type: :uint8}
    end

    class QueryTree < Xrb::Message
      include Xrb::Request

      OPCODE = 15

      layout \
          :major_opcode, {type: :uint8},
          :root, {type: :uint32},
          :length, {type: :uint16},
          :parent, {type: :uint32},
          :children_len, {type: :uint16},
          :pad2, {size: 14, type: :uint8},
          :children, {length_field: :children_len, type: :uint32, kind: :list}
    end

    class InternAtom < Xrb::Message
      include Xrb::Request

      OPCODE = 16

      layout \
          :major_opcode, {type: :uint8},
          :atom, {type: :uint32},
          :length, {type: :uint16}
    end

    class GetAtomName < Xrb::Message
      include Xrb::Request

      OPCODE = 17

      layout \
          :major_opcode, {type: :uint8},
          :name_len, {type: :uint16},
          :length, {type: :uint16},
          :pad2, {size: 22, type: :uint8},
          :name, {length_field: :name_len, type: :char, kind: :string}
    end

    class ChangeProperty < Xrb::Message
      include Xrb::Request

      OPCODE = 18

      layout \
          :major_opcode, {type: :uint8},
          :mode, {type: :uint8},
          :length, {type: :uint16},
          :window, {type: :uint32},
          :property, {type: :uint32},
          :type, {type: :uint32},
          :format, {type: :uint8},
          :pad1, {size: 3, type: :uint8},
          :data_len, {type: :uint32},
          :data, {length_field: :data_len, type: :uint8, kind: :list}
    end

    class DeleteProperty < Xrb::Message
      include Xrb::Request

      OPCODE = 19

      layout \
          :major_opcode, {type: :uint8},
          :pad1, {size: 1, type: :uint8},
          :length, {type: :uint16},
          :window, {type: :uint32},
          :property, {type: :uint32}
    end

    class GetProperty < Xrb::Message
      include Xrb::Request

      OPCODE = 20

      layout \
          :major_opcode, {type: :uint8},
          :type, {type: :uint32},
          :length, {type: :uint16},
          :bytes_after, {type: :uint32},
          :value_len, {type: :uint32},
          :pad1, {size: 12, type: :uint8},
          :value, {length_field: :format, type: :uint8, kind: :list}
    end

    class ListProperties < Xrb::Message
      include Xrb::Request

      OPCODE = 21

      layout \
          :major_opcode, {type: :uint8},
          :atoms_len, {type: :uint16},
          :length, {type: :uint16},
          :pad2, {size: 22, type: :uint8},
          :atoms, {length_field: :atoms_len, type: :uint32, kind: :list}
    end

    class SetSelectionOwner < Xrb::Message
      include Xrb::Request

      OPCODE = 22

      layout \
          :major_opcode, {type: :uint8},
          :pad1, {size: 1, type: :uint8},
          :length, {type: :uint16},
          :owner, {type: :uint32},
          :selection, {type: :uint32},
          :time, {type: :uint32}
    end

    class GetSelectionOwner < Xrb::Message
      include Xrb::Request

      OPCODE = 23

      layout \
          :major_opcode, {type: :uint8},
          :owner, {type: :uint32},
          :length, {type: :uint16}
    end

    class ConvertSelection < Xrb::Message
      include Xrb::Request

      OPCODE = 24

      layout \
          :major_opcode, {type: :uint8},
          :pad1, {size: 1, type: :uint8},
          :length, {type: :uint16},
          :requestor, {type: :uint32},
          :selection, {type: :uint32},
          :target, {type: :uint32},
          :property, {type: :uint32},
          :time, {type: :uint32}
    end

    class SendEvent < Xrb::Message
      include Xrb::Request

      OPCODE = 25

      layout \
          :major_opcode, {type: :uint8},
          :propagate, {type: :bool},
          :length, {type: :uint16},
          :destination, {type: :uint32},
          :event_mask, {type: :uint32},
          :event, {type: :char, size: 32}
    end

    class GrabPointer < Xrb::Message
      include Xrb::Request

      OPCODE = 26

      layout \
          :major_opcode, {type: :uint8},
          :pad0, {size: 1, type: :uint8},
          :length, {type: :uint16}
    end

    class UngrabPointer < Xrb::Message
      include Xrb::Request

      OPCODE = 27

      layout \
          :major_opcode, {type: :uint8},
          :pad1, {size: 1, type: :uint8},
          :length, {type: :uint16},
          :time, {type: :uint32}
    end

    class GrabButton < Xrb::Message
      include Xrb::Request

      OPCODE = 28

      layout \
          :major_opcode, {type: :uint8},
          :owner_events, {type: :bool},
          :length, {type: :uint16},
          :grab_window, {type: :uint32},
          :event_mask, {type: :uint16},
          :pointer_mode, {type: :uint8},
          :keyboard_mode, {type: :uint8},
          :confine_to, {type: :uint32},
          :cursor, {type: :uint32},
          :button, {type: :uint8},
          :pad1, {size: 1, type: :uint8},
          :modifiers, {type: :uint16}
    end

    class UngrabButton < Xrb::Message
      include Xrb::Request

      OPCODE = 29

      layout \
          :major_opcode, {type: :uint8},
          :button, {type: :uint8},
          :length, {type: :uint16},
          :grab_window, {type: :uint32},
          :modifiers, {type: :uint16},
          :pad1, {size: 2, type: :uint8}
    end

    class ChangeActivePointerGrab < Xrb::Message
      include Xrb::Request

      OPCODE = 30

      layout \
          :major_opcode, {type: :uint8},
          :pad1, {size: 1, type: :uint8},
          :length, {type: :uint16},
          :cursor, {type: :uint32},
          :time, {type: :uint32},
          :event_mask, {type: :uint16},
          :pad2, {size: 2, type: :uint8}
    end

    class GrabKeyboard < Xrb::Message
      include Xrb::Request

      OPCODE = 31

      layout \
          :major_opcode, {type: :uint8},
          :pad0, {size: 1, type: :uint8},
          :length, {type: :uint16}
    end

    class UngrabKeyboard < Xrb::Message
      include Xrb::Request

      OPCODE = 32

      layout \
          :major_opcode, {type: :uint8},
          :pad1, {size: 1, type: :uint8},
          :length, {type: :uint16},
          :time, {type: :uint32}
    end

    class GrabKey < Xrb::Message
      include Xrb::Request

      OPCODE = 33

      layout \
          :major_opcode, {type: :uint8},
          :owner_events, {type: :bool},
          :length, {type: :uint16},
          :grab_window, {type: :uint32},
          :modifiers, {type: :uint16},
          :key, {type: :uint8},
          :pointer_mode, {type: :uint8},
          :keyboard_mode, {type: :uint8},
          :pad1, {size: 3, type: :uint8}
    end

    class UngrabKey < Xrb::Message
      include Xrb::Request

      OPCODE = 34

      layout \
          :major_opcode, {type: :uint8},
          :key, {type: :uint8},
          :length, {type: :uint16},
          :grab_window, {type: :uint32},
          :modifiers, {type: :uint16},
          :pad1, {size: 2, type: :uint8}
    end

    class AllowEvents < Xrb::Message
      include Xrb::Request

      OPCODE = 35

      layout \
          :major_opcode, {type: :uint8},
          :mode, {type: :uint8},
          :length, {type: :uint16},
          :time, {type: :uint32}
    end

    class GrabServer < Xrb::Message
      include Xrb::Request

      OPCODE = 36

      layout \
          :major_opcode, {type: :uint8},
          :pad0, {size: 1, type: :uint8},
          :length, {type: :uint16}
    end

    class UngrabServer < Xrb::Message
      include Xrb::Request

      OPCODE = 37

      layout \
          :major_opcode, {type: :uint8},
          :pad0, {size: 1, type: :uint8},
          :length, {type: :uint16}
    end

    class QueryPointer < Xrb::Message
      include Xrb::Request

      OPCODE = 38

      layout \
          :major_opcode, {type: :uint8},
          :root, {type: :uint32},
          :length, {type: :uint16},
          :child, {type: :uint32},
          :root_x, {type: :int16},
          :root_y, {type: :int16},
          :win_x, {type: :int16},
          :win_y, {type: :int16},
          :mask, {type: :uint16},
          :pad1, {size: 2, type: :uint8}
    end

    class GetMotionEvents < Xrb::Message
      include Xrb::Request

      OPCODE = 39

      layout \
          :major_opcode, {type: :uint8},
          :events_len, {type: :uint32},
          :length, {type: :uint16},
          :pad2, {size: 20, type: :uint8},
          :events, {length_field: :events_len, type: TimeCoord, kind: :list}
    end

    class TranslateCoordinates < Xrb::Message
      include Xrb::Request

      OPCODE = 40

      layout \
          :major_opcode, {type: :uint8},
          :child, {type: :uint32},
          :length, {type: :uint16},
          :dst_x, {type: :int16},
          :dst_y, {type: :int16}
    end

    class WarpPointer < Xrb::Message
      include Xrb::Request

      OPCODE = 41

      layout \
          :major_opcode, {type: :uint8},
          :pad1, {size: 1, type: :uint8},
          :length, {type: :uint16},
          :src_window, {type: :uint32},
          :dst_window, {type: :uint32},
          :src_x, {type: :int16},
          :src_y, {type: :int16},
          :src_width, {type: :uint16},
          :src_height, {type: :uint16},
          :dst_x, {type: :int16},
          :dst_y, {type: :int16}
    end

    class SetInputFocus < Xrb::Message
      include Xrb::Request

      OPCODE = 42

      layout \
          :major_opcode, {type: :uint8},
          :revert_to, {type: :uint8},
          :length, {type: :uint16},
          :focus, {type: :uint32},
          :time, {type: :uint32}
    end

    class GetInputFocus < Xrb::Message
      include Xrb::Request

      OPCODE = 43

      layout \
          :major_opcode, {type: :uint8},
          :focus, {type: :uint32},
          :length, {type: :uint16}
    end

    class QueryKeymap < Xrb::Message
      include Xrb::Request

      OPCODE = 44

      layout \
          :major_opcode, {type: :uint8},
          :keys, {type: :uint8, size: 32},
          :length, {type: :uint16}
    end

    class OpenFont < Xrb::Message
      include Xrb::Request

      OPCODE = 45

      layout \
          :major_opcode, {type: :uint8},
          :pad1, {size: 1, type: :uint8},
          :length, {type: :uint16},
          :fid, {type: :uint32},
          :name_len, {type: :uint16},
          :pad2, {size: 2, type: :uint8},
          :name, {length_field: :name_len, type: :char, kind: :string}
    end

    class CloseFont < Xrb::Message
      include Xrb::Request

      OPCODE = 46

      layout \
          :major_opcode, {type: :uint8},
          :pad1, {size: 1, type: :uint8},
          :length, {type: :uint16},
          :font, {type: :uint32}
    end

    class QueryFont < Xrb::Message
      include Xrb::Request

      OPCODE = 47

      layout \
          :major_opcode, {type: :uint8},
          :min_bounds, {type: :CHARINFO},
          :length, {type: :uint16},
          :pad2, {size: 4, type: :uint8},
          :max_bounds, {type: :CHARINFO},
          :pad3, {size: 4, type: :uint8},
          :min_char_or_byte2, {type: :uint16},
          :max_char_or_byte2, {type: :uint16},
          :default_char, {type: :uint16},
          :properties_len, {type: :uint16},
          :draw_direction, {type: :uint8},
          :min_byte1, {type: :uint8},
          :max_byte1, {type: :uint8},
          :all_chars_exist, {type: :bool},
          :font_ascent, {type: :int16},
          :font_descent, {type: :int16},
          :char_infos_len, {type: :uint32},
          :properties, {length_field: :properties_len, type: FontProp, kind: :list},
          :char_infos, {length_field: :char_infos_len, type: CharInfo, kind: :list}
    end

    class QueryTextExtents < Xrb::Message
      include Xrb::Request

      OPCODE = 48

      layout \
          :major_opcode, {type: :uint8},
          :font_ascent, {type: :int16},
          :length, {type: :uint16},
          :font_descent, {type: :int16},
          :overall_ascent, {type: :int16},
          :overall_descent, {type: :int16},
          :overall_width, {type: :int32},
          :overall_left, {type: :int32},
          :overall_right, {type: :int32}
    end

    class ListFonts < Xrb::Message
      include Xrb::Request

      OPCODE = 49

      layout \
          :major_opcode, {type: :uint8},
          :names_len, {type: :uint16},
          :length, {type: :uint16},
          :pad2, {size: 22, type: :uint8},
          :names, {length_field: :names_len, type: Str, kind: :list}
    end

    class ListFontsWithInfo < Xrb::Message
      include Xrb::Request

      OPCODE = 50

      layout \
          :major_opcode, {type: :uint8},
          :min_bounds, {type: :CHARINFO},
          :length, {type: :uint16},
          :pad1, {size: 4, type: :uint8},
          :max_bounds, {type: :CHARINFO},
          :pad2, {size: 4, type: :uint8},
          :min_char_or_byte2, {type: :uint16},
          :max_char_or_byte2, {type: :uint16},
          :default_char, {type: :uint16},
          :properties_len, {type: :uint16},
          :draw_direction, {type: :uint8},
          :min_byte1, {type: :uint8},
          :max_byte1, {type: :uint8},
          :all_chars_exist, {type: :bool},
          :font_ascent, {type: :int16},
          :font_descent, {type: :int16},
          :replies_hint, {type: :uint32},
          :properties, {length_field: :properties_len, type: FontProp, kind: :list},
          :name, {length_field: :name_len, type: :char, kind: :string}
    end

    class SetFontPath < Xrb::Message
      include Xrb::Request

      OPCODE = 51

      layout \
          :major_opcode, {type: :uint8},
          :pad1, {size: 1, type: :uint8},
          :length, {type: :uint16},
          :font_qty, {type: :uint16},
          :pad2, {size: 2, type: :uint8},
          :font, {length_field: :font_qty, type: Str, kind: :list}
    end

    class GetFontPath < Xrb::Message
      include Xrb::Request

      OPCODE = 52

      layout \
          :major_opcode, {type: :uint8},
          :path_len, {type: :uint16},
          :length, {type: :uint16},
          :pad2, {size: 22, type: :uint8},
          :path, {length_field: :path_len, type: Str, kind: :list}
    end

    class CreatePixmap < Xrb::Message
      include Xrb::Request

      OPCODE = 53

      layout \
          :major_opcode, {type: :uint8},
          :depth, {type: :uint8},
          :length, {type: :uint16},
          :pid, {type: :uint32},
          :drawable, {type: :uint32},
          :width, {type: :uint16},
          :height, {type: :uint16}
    end

    class FreePixmap < Xrb::Message
      include Xrb::Request

      OPCODE = 54

      layout \
          :major_opcode, {type: :uint8},
          :pad1, {size: 1, type: :uint8},
          :length, {type: :uint16},
          :pixmap, {type: :uint32}
    end

    class CreateGc < Xrb::Message
      include Xrb::Request

      OPCODE = 55

      layout \
          :major_opcode, {type: :uint8},
          :pad1, {size: 1, type: :uint8},
          :length, {type: :uint16},
          :cid, {type: :uint32},
          :drawable, {type: :uint32},
          :value, {type: :uint32, kind: :map}
    end

    class ChangeGc < Xrb::Message
      include Xrb::Request

      OPCODE = 56

      layout \
          :major_opcode, {type: :uint8},
          :pad1, {size: 1, type: :uint8},
          :length, {type: :uint16},
          :gc, {type: :uint32},
          :value, {type: :uint32, kind: :map}
    end

    class CopyGc < Xrb::Message
      include Xrb::Request

      OPCODE = 57

      layout \
          :major_opcode, {type: :uint8},
          :pad1, {size: 1, type: :uint8},
          :length, {type: :uint16},
          :src_gc, {type: :uint32},
          :dst_gc, {type: :uint32},
          :value_mask, {type: :uint32}
    end

    class SetDashes < Xrb::Message
      include Xrb::Request

      OPCODE = 58

      layout \
          :major_opcode, {type: :uint8},
          :pad1, {size: 1, type: :uint8},
          :length, {type: :uint16},
          :gc, {type: :uint32},
          :dash_offset, {type: :uint16},
          :dashes_len, {type: :uint16},
          :dashes, {length_field: :dashes_len, type: :uint8, kind: :list}
    end

    class SetClipRectangles < Xrb::Message
      include Xrb::Request

      OPCODE = 59

      layout \
          :major_opcode, {type: :uint8},
          :ordering, {type: :uint8},
          :length, {type: :uint16},
          :gc, {type: :uint32},
          :clip_x_origin, {type: :int16},
          :clip_y_origin, {type: :int16}
    end

    class FreeGc < Xrb::Message
      include Xrb::Request

      OPCODE = 60

      layout \
          :major_opcode, {type: :uint8},
          :pad1, {size: 1, type: :uint8},
          :length, {type: :uint16},
          :gc, {type: :uint32}
    end

    class ClearArea < Xrb::Message
      include Xrb::Request

      OPCODE = 61

      layout \
          :major_opcode, {type: :uint8},
          :exposures, {type: :bool},
          :length, {type: :uint16},
          :window, {type: :uint32},
          :x, {type: :int16},
          :y, {type: :int16},
          :width, {type: :uint16},
          :height, {type: :uint16}
    end

    class CopyArea < Xrb::Message
      include Xrb::Request

      OPCODE = 62

      layout \
          :major_opcode, {type: :uint8},
          :pad1, {size: 1, type: :uint8},
          :length, {type: :uint16},
          :src_drawable, {type: :uint32},
          :dst_drawable, {type: :uint32},
          :gc, {type: :uint32},
          :src_x, {type: :int16},
          :src_y, {type: :int16},
          :dst_x, {type: :int16},
          :dst_y, {type: :int16},
          :width, {type: :uint16},
          :height, {type: :uint16}
    end

    class CopyPlane < Xrb::Message
      include Xrb::Request

      OPCODE = 63

      layout \
          :major_opcode, {type: :uint8},
          :pad1, {size: 1, type: :uint8},
          :length, {type: :uint16},
          :src_drawable, {type: :uint32},
          :dst_drawable, {type: :uint32},
          :gc, {type: :uint32},
          :src_x, {type: :int16},
          :src_y, {type: :int16},
          :dst_x, {type: :int16},
          :dst_y, {type: :int16},
          :width, {type: :uint16},
          :height, {type: :uint16},
          :bit_plane, {type: :uint32}
    end

    class PolyPoint < Xrb::Message
      include Xrb::Request

      OPCODE = 64

      layout \
          :major_opcode, {type: :uint8},
          :coordinate_mode, {type: :uint8},
          :length, {type: :uint16},
          :drawable, {type: :uint32},
          :gc, {type: :uint32}
    end

    class PolyLine < Xrb::Message
      include Xrb::Request

      OPCODE = 65

      layout \
          :major_opcode, {type: :uint8},
          :coordinate_mode, {type: :uint8},
          :length, {type: :uint16},
          :drawable, {type: :uint32},
          :gc, {type: :uint32}
    end

    class PolySegment < Xrb::Message
      include Xrb::Request

      OPCODE = 66

      layout \
          :major_opcode, {type: :uint8},
          :pad1, {size: 1, type: :uint8},
          :length, {type: :uint16},
          :drawable, {type: :uint32},
          :gc, {type: :uint32}
    end

    class PolyRectangle < Xrb::Message
      include Xrb::Request

      OPCODE = 67

      layout \
          :major_opcode, {type: :uint8},
          :pad1, {size: 1, type: :uint8},
          :length, {type: :uint16},
          :drawable, {type: :uint32},
          :gc, {type: :uint32}
    end

    class PolyArc < Xrb::Message
      include Xrb::Request

      OPCODE = 68

      layout \
          :major_opcode, {type: :uint8},
          :pad1, {size: 1, type: :uint8},
          :length, {type: :uint16},
          :drawable, {type: :uint32},
          :gc, {type: :uint32}
    end

    class FillPoly < Xrb::Message
      include Xrb::Request

      OPCODE = 69

      layout \
          :major_opcode, {type: :uint8},
          :pad1, {size: 1, type: :uint8},
          :length, {type: :uint16},
          :drawable, {type: :uint32},
          :gc, {type: :uint32},
          :shape, {type: :uint8},
          :coordinate_mode, {type: :uint8},
          :pad2, {size: 2, type: :uint8}
    end

    class PolyFillRectangle < Xrb::Message
      include Xrb::Request

      OPCODE = 70

      layout \
          :major_opcode, {type: :uint8},
          :pad1, {size: 1, type: :uint8},
          :length, {type: :uint16},
          :drawable, {type: :uint32},
          :gc, {type: :uint32}
    end

    class PolyFillArc < Xrb::Message
      include Xrb::Request

      OPCODE = 71

      layout \
          :major_opcode, {type: :uint8},
          :pad1, {size: 1, type: :uint8},
          :length, {type: :uint16},
          :drawable, {type: :uint32},
          :gc, {type: :uint32}
    end

    class PutImage < Xrb::Message
      include Xrb::Request

      OPCODE = 72

      layout \
          :major_opcode, {type: :uint8},
          :format, {type: :uint8},
          :length, {type: :uint16},
          :drawable, {type: :uint32},
          :gc, {type: :uint32},
          :width, {type: :uint16},
          :height, {type: :uint16},
          :dst_x, {type: :int16},
          :dst_y, {type: :int16},
          :left_pad, {type: :uint8},
          :depth, {type: :uint8},
          :pad1, {size: 2, type: :uint8}
    end

    class GetImage < Xrb::Message
      include Xrb::Request

      OPCODE = 73

      layout \
          :major_opcode, {type: :uint8},
          :visual, {type: :uint32},
          :length, {type: :uint16},
          :pad1, {size: 20, type: :uint8},
          :data, {length_field: :length, type: :uint8, kind: :list}
    end

    class PolyText_8 < Xrb::Message
      include Xrb::Request

      OPCODE = 74

      layout \
          :major_opcode, {type: :uint8},
          :pad1, {size: 1, type: :uint8},
          :length, {type: :uint16},
          :drawable, {type: :uint32},
          :gc, {type: :uint32},
          :x, {type: :int16},
          :y, {type: :int16}
    end

    class PolyText_16 < Xrb::Message
      include Xrb::Request

      OPCODE = 75

      layout \
          :major_opcode, {type: :uint8},
          :pad1, {size: 1, type: :uint8},
          :length, {type: :uint16},
          :drawable, {type: :uint32},
          :gc, {type: :uint32},
          :x, {type: :int16},
          :y, {type: :int16}
    end

    class ImageText_8 < Xrb::Message
      include Xrb::Request

      OPCODE = 76

      layout \
          :major_opcode, {type: :uint8},
          :string_len, {type: :uint8},
          :length, {type: :uint16},
          :drawable, {type: :uint32},
          :gc, {type: :uint32},
          :x, {type: :int16},
          :y, {type: :int16},
          :string, {length_field: :string_len, type: :char, kind: :string}
    end

    class ImageText_16 < Xrb::Message
      include Xrb::Request

      OPCODE = 77

      layout \
          :major_opcode, {type: :uint8},
          :string_len, {type: :uint8},
          :length, {type: :uint16},
          :drawable, {type: :uint32},
          :gc, {type: :uint32},
          :x, {type: :int16},
          :y, {type: :int16},
          :string, {length_field: :string_len, type: Char2b, kind: :list}
    end

    class CreateColormap < Xrb::Message
      include Xrb::Request

      OPCODE = 78

      layout \
          :major_opcode, {type: :uint8},
          :alloc, {type: :uint8},
          :length, {type: :uint16},
          :mid, {type: :uint32},
          :window, {type: :uint32},
          :visual, {type: :uint32}
    end

    class FreeColormap < Xrb::Message
      include Xrb::Request

      OPCODE = 79

      layout \
          :major_opcode, {type: :uint8},
          :pad1, {size: 1, type: :uint8},
          :length, {type: :uint16},
          :cmap, {type: :uint32}
    end

    class CopyColormapAndFree < Xrb::Message
      include Xrb::Request

      OPCODE = 80

      layout \
          :major_opcode, {type: :uint8},
          :pad1, {size: 1, type: :uint8},
          :length, {type: :uint16},
          :mid, {type: :uint32},
          :src_cmap, {type: :uint32}
    end

    class InstallColormap < Xrb::Message
      include Xrb::Request

      OPCODE = 81

      layout \
          :major_opcode, {type: :uint8},
          :pad1, {size: 1, type: :uint8},
          :length, {type: :uint16},
          :cmap, {type: :uint32}
    end

    class UninstallColormap < Xrb::Message
      include Xrb::Request

      OPCODE = 82

      layout \
          :major_opcode, {type: :uint8},
          :pad1, {size: 1, type: :uint8},
          :length, {type: :uint16},
          :cmap, {type: :uint32}
    end

    class ListInstalledColormaps < Xrb::Message
      include Xrb::Request

      OPCODE = 83

      layout \
          :major_opcode, {type: :uint8},
          :cmaps_len, {type: :uint16},
          :length, {type: :uint16},
          :pad2, {size: 22, type: :uint8},
          :cmaps, {length_field: :cmaps_len, type: :uint32, kind: :list}
    end

    class AllocColor < Xrb::Message
      include Xrb::Request

      OPCODE = 84

      layout \
          :major_opcode, {type: :uint8},
          :red, {type: :uint16},
          :length, {type: :uint16},
          :green, {type: :uint16},
          :blue, {type: :uint16},
          :pad2, {size: 2, type: :uint8},
          :pixel, {type: :uint32}
    end

    class AllocNamedColor < Xrb::Message
      include Xrb::Request

      OPCODE = 85

      layout \
          :major_opcode, {type: :uint8},
          :pixel, {type: :uint32},
          :length, {type: :uint16},
          :exact_red, {type: :uint16},
          :exact_green, {type: :uint16},
          :exact_blue, {type: :uint16},
          :visual_red, {type: :uint16},
          :visual_green, {type: :uint16},
          :visual_blue, {type: :uint16}
    end

    class AllocColorCells < Xrb::Message
      include Xrb::Request

      OPCODE = 86

      layout \
          :major_opcode, {type: :uint8},
          :pixels_len, {type: :uint16},
          :length, {type: :uint16},
          :masks_len, {type: :uint16},
          :pad2, {size: 20, type: :uint8},
          :pixels, {length_field: :pixels_len, type: :uint32, kind: :list},
          :masks, {length_field: :masks_len, type: :uint32, kind: :list}
    end

    class AllocColorPlanes < Xrb::Message
      include Xrb::Request

      OPCODE = 87

      layout \
          :major_opcode, {type: :uint8},
          :pixels_len, {type: :uint16},
          :length, {type: :uint16},
          :pad2, {size: 2, type: :uint8},
          :red_mask, {type: :uint32},
          :green_mask, {type: :uint32},
          :blue_mask, {type: :uint32},
          :pad3, {size: 8, type: :uint8},
          :pixels, {length_field: :pixels_len, type: :uint32, kind: :list}
    end

    class FreeColors < Xrb::Message
      include Xrb::Request

      OPCODE = 88

      layout \
          :major_opcode, {type: :uint8},
          :pad1, {size: 1, type: :uint8},
          :length, {type: :uint16},
          :cmap, {type: :uint32},
          :plane_mask, {type: :uint32}
    end

    class StoreColors < Xrb::Message
      include Xrb::Request

      OPCODE = 89

      layout \
          :major_opcode, {type: :uint8},
          :pad1, {size: 1, type: :uint8},
          :length, {type: :uint16},
          :cmap, {type: :uint32}
    end

    class StoreNamedColor < Xrb::Message
      include Xrb::Request

      OPCODE = 90

      layout \
          :major_opcode, {type: :uint8},
          :flags, {type: :uint8},
          :length, {type: :uint16},
          :cmap, {type: :uint32},
          :pixel, {type: :uint32},
          :name_len, {type: :uint16},
          :pad1, {size: 2, type: :uint8},
          :name, {length_field: :name_len, type: :char, kind: :string}
    end

    class QueryColors < Xrb::Message
      include Xrb::Request

      OPCODE = 91

      layout \
          :major_opcode, {type: :uint8},
          :colors_len, {type: :uint16},
          :length, {type: :uint16},
          :pad2, {size: 22, type: :uint8},
          :colors, {length_field: :colors_len, type: RGB, kind: :list}
    end

    class LookupColor < Xrb::Message
      include Xrb::Request

      OPCODE = 92

      layout \
          :major_opcode, {type: :uint8},
          :exact_red, {type: :uint16},
          :length, {type: :uint16},
          :exact_green, {type: :uint16},
          :exact_blue, {type: :uint16},
          :visual_red, {type: :uint16},
          :visual_green, {type: :uint16},
          :visual_blue, {type: :uint16}
    end

    class CreateCursor < Xrb::Message
      include Xrb::Request

      OPCODE = 93

      layout \
          :major_opcode, {type: :uint8},
          :pad1, {size: 1, type: :uint8},
          :length, {type: :uint16},
          :cid, {type: :uint32},
          :source, {type: :uint32},
          :mask, {type: :uint32},
          :fore_red, {type: :uint16},
          :fore_green, {type: :uint16},
          :fore_blue, {type: :uint16},
          :back_red, {type: :uint16},
          :back_green, {type: :uint16},
          :back_blue, {type: :uint16},
          :x, {type: :uint16},
          :y, {type: :uint16}
    end

    class CreateGlyphCursor < Xrb::Message
      include Xrb::Request

      OPCODE = 94

      layout \
          :major_opcode, {type: :uint8},
          :pad1, {size: 1, type: :uint8},
          :length, {type: :uint16},
          :cid, {type: :uint32},
          :source_font, {type: :uint32},
          :mask_font, {type: :uint32},
          :source_char, {type: :uint16},
          :mask_char, {type: :uint16},
          :fore_red, {type: :uint16},
          :fore_green, {type: :uint16},
          :fore_blue, {type: :uint16},
          :back_red, {type: :uint16},
          :back_green, {type: :uint16},
          :back_blue, {type: :uint16}
    end

    class FreeCursor < Xrb::Message
      include Xrb::Request

      OPCODE = 95

      layout \
          :major_opcode, {type: :uint8},
          :pad1, {size: 1, type: :uint8},
          :length, {type: :uint16},
          :cursor, {type: :uint32}
    end

    class RecolorCursor < Xrb::Message
      include Xrb::Request

      OPCODE = 96

      layout \
          :major_opcode, {type: :uint8},
          :pad1, {size: 1, type: :uint8},
          :length, {type: :uint16},
          :cursor, {type: :uint32},
          :fore_red, {type: :uint16},
          :fore_green, {type: :uint16},
          :fore_blue, {type: :uint16},
          :back_red, {type: :uint16},
          :back_green, {type: :uint16},
          :back_blue, {type: :uint16}
    end

    class QueryBestSize < Xrb::Message
      include Xrb::Request

      OPCODE = 97

      layout \
          :major_opcode, {type: :uint8},
          :width, {type: :uint16},
          :length, {type: :uint16},
          :height, {type: :uint16}
    end

    class QueryExtension < Xrb::Message
      include Xrb::Request

      OPCODE = 98

      layout \
          :major_opcode, {type: :uint8},
          :present, {type: :bool},
          :length, {type: :uint16},
          :major_opcode, {type: :uint8},
          :first_event, {type: :uint8},
          :first_error, {type: :uint8}
    end

    class ListExtensions < Xrb::Message
      include Xrb::Request

      OPCODE = 99

      layout \
          :major_opcode, {type: :uint8},
          :pad1, {size: 24, type: :uint8},
          :length, {type: :uint16},
          :names, {length_field: :names_len, type: Str, kind: :list}
    end

    class ChangeKeyboardMapping < Xrb::Message
      include Xrb::Request

      OPCODE = 100

      layout \
          :major_opcode, {type: :uint8},
          :keycode_count, {type: :uint8},
          :length, {type: :uint16},
          :first_keycode, {type: :uint8},
          :keysyms_per_keycode, {type: :uint8},
          :pad1, {size: 2, type: :uint8},
          :keysyms, {length_field: :keycode_count, type: :uint32, kind: :list}
    end

    class GetKeyboardMapping < Xrb::Message
      include Xrb::Request

      OPCODE = 101

      layout \
          :major_opcode, {type: :uint8},
          :pad1, {size: 24, type: :uint8},
          :length, {type: :uint16},
          :keysyms, {length_field: :length, type: :uint32, kind: :list}
    end

    class ChangeKeyboardControl < Xrb::Message
      include Xrb::Request

      OPCODE = 102

      layout \
          :major_opcode, {type: :uint8},
          :pad1, {size: 1, type: :uint8},
          :length, {type: :uint16},
          :value, {type: :uint32, kind: :map}
    end

    class GetKeyboardControl < Xrb::Message
      include Xrb::Request

      OPCODE = 103

      layout \
          :major_opcode, {type: :uint8},
          :led_mask, {type: :uint32},
          :length, {type: :uint16},
          :key_click_percent, {type: :uint8},
          :bell_percent, {type: :uint8},
          :bell_pitch, {type: :uint16},
          :bell_duration, {type: :uint16},
          :pad1, {size: 2, type: :uint8},
          :auto_repeats, {type: :uint8, size: 32}
    end

    class Bell < Xrb::Message
      include Xrb::Request

      OPCODE = 104

      layout \
          :major_opcode, {type: :uint8},
          :percent, {type: :int8},
          :length, {type: :uint16}
    end

    class ChangePointerControl < Xrb::Message
      include Xrb::Request

      OPCODE = 105

      layout \
          :major_opcode, {type: :uint8},
          :pad1, {size: 1, type: :uint8},
          :length, {type: :uint16},
          :acceleration_numerator, {type: :int16},
          :acceleration_denominator, {type: :int16},
          :threshold, {type: :int16},
          :do_acceleration, {type: :bool},
          :do_threshold, {type: :bool}
    end

    class GetPointerControl < Xrb::Message
      include Xrb::Request

      OPCODE = 106

      layout \
          :major_opcode, {type: :uint8},
          :acceleration_numerator, {type: :uint16},
          :length, {type: :uint16},
          :acceleration_denominator, {type: :uint16},
          :threshold, {type: :uint16},
          :pad2, {size: 18, type: :uint8}
    end

    class SetScreenSaver < Xrb::Message
      include Xrb::Request

      OPCODE = 107

      layout \
          :major_opcode, {type: :uint8},
          :pad1, {size: 1, type: :uint8},
          :length, {type: :uint16},
          :timeout, {type: :int16},
          :interval, {type: :int16},
          :prefer_blanking, {type: :uint8},
          :allow_exposures, {type: :uint8}
    end

    class GetScreenSaver < Xrb::Message
      include Xrb::Request

      OPCODE = 108

      layout \
          :major_opcode, {type: :uint8},
          :timeout, {type: :uint16},
          :length, {type: :uint16},
          :interval, {type: :uint16},
          :prefer_blanking, {type: :uint8},
          :allow_exposures, {type: :uint8},
          :pad2, {size: 18, type: :uint8}
    end

    class ChangeHosts < Xrb::Message
      include Xrb::Request

      OPCODE = 109

      layout \
          :major_opcode, {type: :uint8},
          :mode, {type: :uint8},
          :length, {type: :uint16},
          :family, {type: :uint8},
          :pad1, {size: 1, type: :uint8},
          :address_len, {type: :uint16},
          :address, {length_field: :address_len, type: :uint8, kind: :list}
    end

    class ListHosts < Xrb::Message
      include Xrb::Request

      OPCODE = 110

      layout \
          :major_opcode, {type: :uint8},
          :hosts_len, {type: :uint16},
          :length, {type: :uint16},
          :pad1, {size: 22, type: :uint8},
          :hosts, {length_field: :hosts_len, type: Host, kind: :list}
    end

    class SetAccessControl < Xrb::Message
      include Xrb::Request

      OPCODE = 111

      layout \
          :major_opcode, {type: :uint8},
          :mode, {type: :uint8},
          :length, {type: :uint16}
    end

    class SetCloseDownMode < Xrb::Message
      include Xrb::Request

      OPCODE = 112

      layout \
          :major_opcode, {type: :uint8},
          :mode, {type: :uint8},
          :length, {type: :uint16}
    end

    class KillClient < Xrb::Message
      include Xrb::Request

      OPCODE = 113

      layout \
          :major_opcode, {type: :uint8},
          :pad1, {size: 1, type: :uint8},
          :length, {type: :uint16},
          :resource, {type: :uint32}
    end

    class RotateProperties < Xrb::Message
      include Xrb::Request

      OPCODE = 114

      layout \
          :major_opcode, {type: :uint8},
          :pad1, {size: 1, type: :uint8},
          :length, {type: :uint16},
          :window, {type: :uint32},
          :atoms_len, {type: :uint16},
          :delta, {type: :int16},
          :atoms, {length_field: :atoms_len, type: :uint32, kind: :list}
    end

    class ForceScreenSaver < Xrb::Message
      include Xrb::Request

      OPCODE = 115

      layout \
          :major_opcode, {type: :uint8},
          :mode, {type: :uint8},
          :length, {type: :uint16}
    end

    class SetPointerMapping < Xrb::Message
      include Xrb::Request

      OPCODE = 116

      layout \
          :major_opcode, {type: :uint8},
          :pad0, {size: 1, type: :uint8},
          :length, {type: :uint16}
    end

    class GetPointerMapping < Xrb::Message
      include Xrb::Request

      OPCODE = 117

      layout \
          :major_opcode, {type: :uint8},
          :pad1, {size: 24, type: :uint8},
          :length, {type: :uint16},
          :map, {length_field: :map_len, type: :uint8, kind: :list}
    end

    class SetModifierMapping < Xrb::Message
      include Xrb::Request

      OPCODE = 118

      layout \
          :major_opcode, {type: :uint8},
          :pad0, {size: 1, type: :uint8},
          :length, {type: :uint16}
    end

    class GetModifierMapping < Xrb::Message
      include Xrb::Request

      OPCODE = 119

      layout \
          :major_opcode, {type: :uint8},
          :pad1, {size: 24, type: :uint8},
          :length, {type: :uint16},
          :keycodes, {length_field: :keycodes_per_modifier, type: :uint8, kind: :list}
    end

    class NoOperation < Xrb::Message
      include Xrb::Request

      OPCODE = 127

      layout \
          :major_opcode, {type: :uint8},
          :pad0, {size: 1, type: :uint8},
          :length, {type: :uint16}
    end

  end
end
