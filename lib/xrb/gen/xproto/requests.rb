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
      def has_reply?
        false
      end
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
      def has_reply?
        false
      end
    end

    class GetWindowAttributes < Xrb::Message
      include Xrb::Request

      OPCODE = 3

      layout \
          :major_opcode, {type: :uint8},
          :pad1, {size: 1, type: :uint8},
          :length, {type: :uint16},
          :window, {type: :uint32}
      def has_reply?
        true
      end
    end

    class DestroyWindow < Xrb::Message
      include Xrb::Request

      OPCODE = 4

      layout \
          :major_opcode, {type: :uint8},
          :pad1, {size: 1, type: :uint8},
          :length, {type: :uint16},
          :window, {type: :uint32}
      def has_reply?
        false
      end
    end

    class DestroySubwindows < Xrb::Message
      include Xrb::Request

      OPCODE = 5

      layout \
          :major_opcode, {type: :uint8},
          :pad1, {size: 1, type: :uint8},
          :length, {type: :uint16},
          :window, {type: :uint32}
      def has_reply?
        false
      end
    end

    class ChangeSaveSet < Xrb::Message
      include Xrb::Request

      OPCODE = 6

      layout \
          :major_opcode, {type: :uint8},
          :mode, {type: :uint8},
          :length, {type: :uint16},
          :window, {type: :uint32}
      def has_reply?
        false
      end
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
      def has_reply?
        false
      end
    end

    class MapWindow < Xrb::Message
      include Xrb::Request

      OPCODE = 8

      layout \
          :major_opcode, {type: :uint8},
          :pad1, {size: 1, type: :uint8},
          :length, {type: :uint16},
          :window, {type: :uint32}
      def has_reply?
        false
      end
    end

    class MapSubwindows < Xrb::Message
      include Xrb::Request

      OPCODE = 9

      layout \
          :major_opcode, {type: :uint8},
          :pad1, {size: 1, type: :uint8},
          :length, {type: :uint16},
          :window, {type: :uint32}
      def has_reply?
        false
      end
    end

    class UnmapWindow < Xrb::Message
      include Xrb::Request

      OPCODE = 10

      layout \
          :major_opcode, {type: :uint8},
          :pad1, {size: 1, type: :uint8},
          :length, {type: :uint16},
          :window, {type: :uint32}
      def has_reply?
        false
      end
    end

    class UnmapSubwindows < Xrb::Message
      include Xrb::Request

      OPCODE = 11

      layout \
          :major_opcode, {type: :uint8},
          :pad1, {size: 1, type: :uint8},
          :length, {type: :uint16},
          :window, {type: :uint32}
      def has_reply?
        false
      end
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
      def has_reply?
        false
      end
    end

    class CirculateWindow < Xrb::Message
      include Xrb::Request

      OPCODE = 13

      layout \
          :major_opcode, {type: :uint8},
          :direction, {type: :uint8},
          :length, {type: :uint16},
          :window, {type: :uint32}
      def has_reply?
        false
      end
    end

    class GetGeometry < Xrb::Message
      include Xrb::Request

      OPCODE = 14

      layout \
          :major_opcode, {type: :uint8},
          :pad1, {size: 1, type: :uint8},
          :length, {type: :uint16},
          :drawable, {type: :uint32}
      def has_reply?
        true
      end
    end

    class QueryTree < Xrb::Message
      include Xrb::Request

      OPCODE = 15

      layout \
          :major_opcode, {type: :uint8},
          :pad1, {size: 1, type: :uint8},
          :length, {type: :uint16},
          :window, {type: :uint32}
      def has_reply?
        true
      end
    end

    class InternAtom < Xrb::Message
      include Xrb::Request

      OPCODE = 16

      layout \
          :major_opcode, {type: :uint8},
          :only_if_exists, {type: :bool},
          :length, {type: :uint16},
          :name_len, {type: :uint16},
          :pad1, {size: 2, type: :uint8},
          :name, {length_field: :name_len, type: :char, kind: :string}
      def has_reply?
        true
      end
    end

    class GetAtomName < Xrb::Message
      include Xrb::Request

      OPCODE = 17

      layout \
          :major_opcode, {type: :uint8},
          :pad1, {size: 1, type: :uint8},
          :length, {type: :uint16},
          :atom, {type: :uint32}
      def has_reply?
        true
      end
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
          :data,{type: uint8, length_expr: '((data_len * format) / 8)'}
      def has_reply?
        false
      end
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
      def has_reply?
        false
      end
    end

    class GetProperty < Xrb::Message
      include Xrb::Request

      OPCODE = 20

      layout \
          :major_opcode, {type: :uint8},
          :delete, {type: :bool},
          :length, {type: :uint16},
          :window, {type: :uint32},
          :property, {type: :uint32},
          :type, {type: :uint32},
          :long_offset, {type: :uint32},
          :long_length, {type: :uint32}
      def has_reply?
        true
      end
    end

    class ListProperties < Xrb::Message
      include Xrb::Request

      OPCODE = 21

      layout \
          :major_opcode, {type: :uint8},
          :pad1, {size: 1, type: :uint8},
          :length, {type: :uint16},
          :window, {type: :uint32}
      def has_reply?
        true
      end
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
      def has_reply?
        false
      end
    end

    class GetSelectionOwner < Xrb::Message
      include Xrb::Request

      OPCODE = 23

      layout \
          :major_opcode, {type: :uint8},
          :pad1, {size: 1, type: :uint8},
          :length, {type: :uint16},
          :selection, {type: :uint32}
      def has_reply?
        true
      end
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
      def has_reply?
        false
      end
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
      def has_reply?
        false
      end
    end

    class GrabPointer < Xrb::Message
      include Xrb::Request

      OPCODE = 26

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
          :time, {type: :uint32}
      def has_reply?
        true
      end
    end

    class UngrabPointer < Xrb::Message
      include Xrb::Request

      OPCODE = 27

      layout \
          :major_opcode, {type: :uint8},
          :pad1, {size: 1, type: :uint8},
          :length, {type: :uint16},
          :time, {type: :uint32}
      def has_reply?
        false
      end
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
      def has_reply?
        false
      end
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
      def has_reply?
        false
      end
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
      def has_reply?
        false
      end
    end

    class GrabKeyboard < Xrb::Message
      include Xrb::Request

      OPCODE = 31

      layout \
          :major_opcode, {type: :uint8},
          :owner_events, {type: :bool},
          :length, {type: :uint16},
          :grab_window, {type: :uint32},
          :time, {type: :uint32},
          :pointer_mode, {type: :uint8},
          :keyboard_mode, {type: :uint8},
          :pad1, {size: 2, type: :uint8}
      def has_reply?
        true
      end
    end

    class UngrabKeyboard < Xrb::Message
      include Xrb::Request

      OPCODE = 32

      layout \
          :major_opcode, {type: :uint8},
          :pad1, {size: 1, type: :uint8},
          :length, {type: :uint16},
          :time, {type: :uint32}
      def has_reply?
        false
      end
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
      def has_reply?
        false
      end
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
      def has_reply?
        false
      end
    end

    class AllowEvents < Xrb::Message
      include Xrb::Request

      OPCODE = 35

      layout \
          :major_opcode, {type: :uint8},
          :mode, {type: :uint8},
          :length, {type: :uint16},
          :time, {type: :uint32}
      def has_reply?
        false
      end
    end

    class GrabServer < Xrb::Message
      include Xrb::Request

      OPCODE = 36

      layout \
          :major_opcode, {type: :uint8},
          :pad0, {size: 1, type: :uint8},
          :length, {type: :uint16}
      def has_reply?
        false
      end
    end

    class UngrabServer < Xrb::Message
      include Xrb::Request

      OPCODE = 37

      layout \
          :major_opcode, {type: :uint8},
          :pad0, {size: 1, type: :uint8},
          :length, {type: :uint16}
      def has_reply?
        false
      end
    end

    class QueryPointer < Xrb::Message
      include Xrb::Request

      OPCODE = 38

      layout \
          :major_opcode, {type: :uint8},
          :pad1, {size: 1, type: :uint8},
          :length, {type: :uint16},
          :window, {type: :uint32}
      def has_reply?
        true
      end
    end

    class GetMotionEvents < Xrb::Message
      include Xrb::Request

      OPCODE = 39

      layout \
          :major_opcode, {type: :uint8},
          :pad1, {size: 1, type: :uint8},
          :length, {type: :uint16},
          :window, {type: :uint32},
          :start, {type: :uint32},
          :stop, {type: :uint32}
      def has_reply?
        true
      end
    end

    class TranslateCoordinates < Xrb::Message
      include Xrb::Request

      OPCODE = 40

      layout \
          :major_opcode, {type: :uint8},
          :pad1, {size: 1, type: :uint8},
          :length, {type: :uint16},
          :src_window, {type: :uint32},
          :dst_window, {type: :uint32},
          :src_x, {type: :int16},
          :src_y, {type: :int16}
      def has_reply?
        true
      end
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
      def has_reply?
        false
      end
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
      def has_reply?
        false
      end
    end

    class GetInputFocus < Xrb::Message
      include Xrb::Request

      OPCODE = 43

      layout \
          :major_opcode, {type: :uint8},
          :pad0, {size: 1, type: :uint8},
          :length, {type: :uint16}
      def has_reply?
        true
      end
    end

    class QueryKeymap < Xrb::Message
      include Xrb::Request

      OPCODE = 44

      layout \
          :major_opcode, {type: :uint8},
          :pad0, {size: 1, type: :uint8},
          :length, {type: :uint16}
      def has_reply?
        true
      end
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
      def has_reply?
        false
      end
    end

    class CloseFont < Xrb::Message
      include Xrb::Request

      OPCODE = 46

      layout \
          :major_opcode, {type: :uint8},
          :pad1, {size: 1, type: :uint8},
          :length, {type: :uint16},
          :font, {type: :uint32}
      def has_reply?
        false
      end
    end

    class QueryFont < Xrb::Message
      include Xrb::Request

      OPCODE = 47

      layout \
          :major_opcode, {type: :uint8},
          :pad1, {size: 1, type: :uint8},
          :length, {type: :uint16},
          :font, {type: :uint32}
      def has_reply?
        true
      end
    end

    class QueryTextExtents < Xrb::Message
      include Xrb::Request

      OPCODE = 48

      layout \
          :major_opcode, {type: :uint8},
          :odd_length, {type: :bool, value_expr: '(string_len & 1)'},
          :length, {type: :uint16},
          :font, {type: :uint32},
          :string, {type: Char2b, kind: :list}
      def has_reply?
        true
      end
    end

    class ListFonts < Xrb::Message
      include Xrb::Request

      OPCODE = 49

      layout \
          :major_opcode, {type: :uint8},
          :pad1, {size: 1, type: :uint8},
          :length, {type: :uint16},
          :max_names, {type: :uint16},
          :pattern_len, {type: :uint16},
          :pattern, {length_field: :pattern_len, type: :char, kind: :string}
      def has_reply?
        true
      end
    end

    class ListFontsWithInfo < Xrb::Message
      include Xrb::Request

      OPCODE = 50

      layout \
          :major_opcode, {type: :uint8},
          :pad1, {size: 1, type: :uint8},
          :length, {type: :uint16},
          :max_names, {type: :uint16},
          :pattern_len, {type: :uint16},
          :pattern, {length_field: :pattern_len, type: :char, kind: :string}
      def has_reply?
        true
      end
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
      def has_reply?
        false
      end
    end

    class GetFontPath < Xrb::Message
      include Xrb::Request

      OPCODE = 52

      layout \
          :major_opcode, {type: :uint8},
          :pad0, {size: 1, type: :uint8},
          :length, {type: :uint16}
      def has_reply?
        true
      end
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
      def has_reply?
        false
      end
    end

    class FreePixmap < Xrb::Message
      include Xrb::Request

      OPCODE = 54

      layout \
          :major_opcode, {type: :uint8},
          :pad1, {size: 1, type: :uint8},
          :length, {type: :uint16},
          :pixmap, {type: :uint32}
      def has_reply?
        false
      end
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
      def has_reply?
        false
      end
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
      def has_reply?
        false
      end
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
      def has_reply?
        false
      end
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
      def has_reply?
        false
      end
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
          :clip_y_origin, {type: :int16},
          :rectangles, {type: Rectangle, kind: :list}
      def has_reply?
        false
      end
    end

    class FreeGc < Xrb::Message
      include Xrb::Request

      OPCODE = 60

      layout \
          :major_opcode, {type: :uint8},
          :pad1, {size: 1, type: :uint8},
          :length, {type: :uint16},
          :gc, {type: :uint32}
      def has_reply?
        false
      end
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
      def has_reply?
        false
      end
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
      def has_reply?
        false
      end
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
      def has_reply?
        false
      end
    end

    class PolyPoint < Xrb::Message
      include Xrb::Request

      OPCODE = 64

      layout \
          :major_opcode, {type: :uint8},
          :coordinate_mode, {type: :uint8},
          :length, {type: :uint16},
          :drawable, {type: :uint32},
          :gc, {type: :uint32},
          :points, {type: Point, kind: :list}
      def has_reply?
        false
      end
    end

    class PolyLine < Xrb::Message
      include Xrb::Request

      OPCODE = 65

      layout \
          :major_opcode, {type: :uint8},
          :coordinate_mode, {type: :uint8},
          :length, {type: :uint16},
          :drawable, {type: :uint32},
          :gc, {type: :uint32},
          :points, {type: Point, kind: :list}
      def has_reply?
        false
      end
    end

    class PolySegment < Xrb::Message
      include Xrb::Request

      OPCODE = 66

      layout \
          :major_opcode, {type: :uint8},
          :pad1, {size: 1, type: :uint8},
          :length, {type: :uint16},
          :drawable, {type: :uint32},
          :gc, {type: :uint32},
          :segments, {type: Segment, kind: :list}
      def has_reply?
        false
      end
    end

    class PolyRectangle < Xrb::Message
      include Xrb::Request

      OPCODE = 67

      layout \
          :major_opcode, {type: :uint8},
          :pad1, {size: 1, type: :uint8},
          :length, {type: :uint16},
          :drawable, {type: :uint32},
          :gc, {type: :uint32},
          :rectangles, {type: Rectangle, kind: :list}
      def has_reply?
        false
      end
    end

    class PolyArc < Xrb::Message
      include Xrb::Request

      OPCODE = 68

      layout \
          :major_opcode, {type: :uint8},
          :pad1, {size: 1, type: :uint8},
          :length, {type: :uint16},
          :drawable, {type: :uint32},
          :gc, {type: :uint32},
          :arcs, {type: Arc, kind: :list}
      def has_reply?
        false
      end
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
          :pad2, {size: 2, type: :uint8},
          :points, {type: Point, kind: :list}
      def has_reply?
        false
      end
    end

    class PolyFillRectangle < Xrb::Message
      include Xrb::Request

      OPCODE = 70

      layout \
          :major_opcode, {type: :uint8},
          :pad1, {size: 1, type: :uint8},
          :length, {type: :uint16},
          :drawable, {type: :uint32},
          :gc, {type: :uint32},
          :rectangles, {type: Rectangle, kind: :list}
      def has_reply?
        false
      end
    end

    class PolyFillArc < Xrb::Message
      include Xrb::Request

      OPCODE = 71

      layout \
          :major_opcode, {type: :uint8},
          :pad1, {size: 1, type: :uint8},
          :length, {type: :uint16},
          :drawable, {type: :uint32},
          :gc, {type: :uint32},
          :arcs, {type: Arc, kind: :list}
      def has_reply?
        false
      end
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
          :pad1, {size: 2, type: :uint8},
          :data, {type: :uint8, kind: :list}
      def has_reply?
        false
      end
    end

    class GetImage < Xrb::Message
      include Xrb::Request

      OPCODE = 73

      layout \
          :major_opcode, {type: :uint8},
          :format, {type: :uint8},
          :length, {type: :uint16},
          :drawable, {type: :uint32},
          :x, {type: :int16},
          :y, {type: :int16},
          :width, {type: :uint16},
          :height, {type: :uint16},
          :plane_mask, {type: :uint32}
      def has_reply?
        true
      end
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
          :y, {type: :int16},
          :items, {type: :uint8, kind: :list}
      def has_reply?
        false
      end
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
          :y, {type: :int16},
          :items, {type: :uint8, kind: :list}
      def has_reply?
        false
      end
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
      def has_reply?
        false
      end
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
      def has_reply?
        false
      end
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
      def has_reply?
        false
      end
    end

    class FreeColormap < Xrb::Message
      include Xrb::Request

      OPCODE = 79

      layout \
          :major_opcode, {type: :uint8},
          :pad1, {size: 1, type: :uint8},
          :length, {type: :uint16},
          :cmap, {type: :uint32}
      def has_reply?
        false
      end
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
      def has_reply?
        false
      end
    end

    class InstallColormap < Xrb::Message
      include Xrb::Request

      OPCODE = 81

      layout \
          :major_opcode, {type: :uint8},
          :pad1, {size: 1, type: :uint8},
          :length, {type: :uint16},
          :cmap, {type: :uint32}
      def has_reply?
        false
      end
    end

    class UninstallColormap < Xrb::Message
      include Xrb::Request

      OPCODE = 82

      layout \
          :major_opcode, {type: :uint8},
          :pad1, {size: 1, type: :uint8},
          :length, {type: :uint16},
          :cmap, {type: :uint32}
      def has_reply?
        false
      end
    end

    class ListInstalledColormaps < Xrb::Message
      include Xrb::Request

      OPCODE = 83

      layout \
          :major_opcode, {type: :uint8},
          :pad1, {size: 1, type: :uint8},
          :length, {type: :uint16},
          :window, {type: :uint32}
      def has_reply?
        true
      end
    end

    class AllocColor < Xrb::Message
      include Xrb::Request

      OPCODE = 84

      layout \
          :major_opcode, {type: :uint8},
          :pad1, {size: 1, type: :uint8},
          :length, {type: :uint16},
          :cmap, {type: :uint32},
          :red, {type: :uint16},
          :green, {type: :uint16},
          :blue, {type: :uint16},
          :pad2, {size: 2, type: :uint8}
      def has_reply?
        true
      end
    end

    class AllocNamedColor < Xrb::Message
      include Xrb::Request

      OPCODE = 85

      layout \
          :major_opcode, {type: :uint8},
          :pad1, {size: 1, type: :uint8},
          :length, {type: :uint16},
          :cmap, {type: :uint32},
          :name_len, {type: :uint16},
          :pad2, {size: 2, type: :uint8},
          :name, {length_field: :name_len, type: :char, kind: :string}
      def has_reply?
        true
      end
    end

    class AllocColorCells < Xrb::Message
      include Xrb::Request

      OPCODE = 86

      layout \
          :major_opcode, {type: :uint8},
          :contiguous, {type: :bool},
          :length, {type: :uint16},
          :cmap, {type: :uint32},
          :colors, {type: :uint16},
          :planes, {type: :uint16}
      def has_reply?
        true
      end
    end

    class AllocColorPlanes < Xrb::Message
      include Xrb::Request

      OPCODE = 87

      layout \
          :major_opcode, {type: :uint8},
          :contiguous, {type: :bool},
          :length, {type: :uint16},
          :cmap, {type: :uint32},
          :colors, {type: :uint16},
          :reds, {type: :uint16},
          :greens, {type: :uint16},
          :blues, {type: :uint16}
      def has_reply?
        true
      end
    end

    class FreeColors < Xrb::Message
      include Xrb::Request

      OPCODE = 88

      layout \
          :major_opcode, {type: :uint8},
          :pad1, {size: 1, type: :uint8},
          :length, {type: :uint16},
          :cmap, {type: :uint32},
          :plane_mask, {type: :uint32},
          :pixels, {type: :uint32, kind: :list}
      def has_reply?
        false
      end
    end

    class StoreColors < Xrb::Message
      include Xrb::Request

      OPCODE = 89

      layout \
          :major_opcode, {type: :uint8},
          :pad1, {size: 1, type: :uint8},
          :length, {type: :uint16},
          :cmap, {type: :uint32},
          :items, {type: ColorItem, kind: :list}
      def has_reply?
        false
      end
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
      def has_reply?
        false
      end
    end

    class QueryColors < Xrb::Message
      include Xrb::Request

      OPCODE = 91

      layout \
          :major_opcode, {type: :uint8},
          :pad1, {size: 1, type: :uint8},
          :length, {type: :uint16},
          :cmap, {type: :uint32},
          :pixels, {type: :uint32, kind: :list}
      def has_reply?
        true
      end
    end

    class LookupColor < Xrb::Message
      include Xrb::Request

      OPCODE = 92

      layout \
          :major_opcode, {type: :uint8},
          :pad1, {size: 1, type: :uint8},
          :length, {type: :uint16},
          :cmap, {type: :uint32},
          :name_len, {type: :uint16},
          :pad2, {size: 2, type: :uint8},
          :name, {length_field: :name_len, type: :char, kind: :string}
      def has_reply?
        true
      end
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
      def has_reply?
        false
      end
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
      def has_reply?
        false
      end
    end

    class FreeCursor < Xrb::Message
      include Xrb::Request

      OPCODE = 95

      layout \
          :major_opcode, {type: :uint8},
          :pad1, {size: 1, type: :uint8},
          :length, {type: :uint16},
          :cursor, {type: :uint32}
      def has_reply?
        false
      end
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
      def has_reply?
        false
      end
    end

    class QueryBestSize < Xrb::Message
      include Xrb::Request

      OPCODE = 97

      layout \
          :major_opcode, {type: :uint8},
          :class, {type: :uint8},
          :length, {type: :uint16},
          :drawable, {type: :uint32},
          :width, {type: :uint16},
          :height, {type: :uint16}
      def has_reply?
        true
      end
    end

    class QueryExtension < Xrb::Message
      include Xrb::Request

      OPCODE = 98

      layout \
          :major_opcode, {type: :uint8},
          :pad1, {size: 1, type: :uint8},
          :length, {type: :uint16},
          :name_len, {type: :uint16},
          :pad2, {size: 2, type: :uint8},
          :name, {length_field: :name_len, type: :char, kind: :string}
      def has_reply?
        true
      end
    end

    class ListExtensions < Xrb::Message
      include Xrb::Request

      OPCODE = 99

      layout \
          :major_opcode, {type: :uint8},
          :pad0, {size: 1, type: :uint8},
          :length, {type: :uint16}
      def has_reply?
        true
      end
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
          :keysyms,{type: uint32, length_expr: '(keycode_count * keysyms_per_keycode)'}
      def has_reply?
        false
      end
    end

    class GetKeyboardMapping < Xrb::Message
      include Xrb::Request

      OPCODE = 101

      layout \
          :major_opcode, {type: :uint8},
          :pad1, {size: 1, type: :uint8},
          :length, {type: :uint16},
          :first_keycode, {type: :uint8},
          :count, {type: :uint8}
      def has_reply?
        true
      end
    end

    class ChangeKeyboardControl < Xrb::Message
      include Xrb::Request

      OPCODE = 102

      layout \
          :major_opcode, {type: :uint8},
          :pad1, {size: 1, type: :uint8},
          :length, {type: :uint16},
          :value, {type: :uint32, kind: :map}
      def has_reply?
        false
      end
    end

    class GetKeyboardControl < Xrb::Message
      include Xrb::Request

      OPCODE = 103

      layout \
          :major_opcode, {type: :uint8},
          :pad0, {size: 1, type: :uint8},
          :length, {type: :uint16}
      def has_reply?
        true
      end
    end

    class Bell < Xrb::Message
      include Xrb::Request

      OPCODE = 104

      layout \
          :major_opcode, {type: :uint8},
          :percent, {type: :int8},
          :length, {type: :uint16}
      def has_reply?
        false
      end
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
      def has_reply?
        false
      end
    end

    class GetPointerControl < Xrb::Message
      include Xrb::Request

      OPCODE = 106

      layout \
          :major_opcode, {type: :uint8},
          :pad0, {size: 1, type: :uint8},
          :length, {type: :uint16}
      def has_reply?
        true
      end
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
      def has_reply?
        false
      end
    end

    class GetScreenSaver < Xrb::Message
      include Xrb::Request

      OPCODE = 108

      layout \
          :major_opcode, {type: :uint8},
          :pad0, {size: 1, type: :uint8},
          :length, {type: :uint16}
      def has_reply?
        true
      end
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
      def has_reply?
        false
      end
    end

    class ListHosts < Xrb::Message
      include Xrb::Request

      OPCODE = 110

      layout \
          :major_opcode, {type: :uint8},
          :pad0, {size: 1, type: :uint8},
          :length, {type: :uint16}
      def has_reply?
        true
      end
    end

    class SetAccessControl < Xrb::Message
      include Xrb::Request

      OPCODE = 111

      layout \
          :major_opcode, {type: :uint8},
          :mode, {type: :uint8},
          :length, {type: :uint16}
      def has_reply?
        false
      end
    end

    class SetCloseDownMode < Xrb::Message
      include Xrb::Request

      OPCODE = 112

      layout \
          :major_opcode, {type: :uint8},
          :mode, {type: :uint8},
          :length, {type: :uint16}
      def has_reply?
        false
      end
    end

    class KillClient < Xrb::Message
      include Xrb::Request

      OPCODE = 113

      layout \
          :major_opcode, {type: :uint8},
          :pad1, {size: 1, type: :uint8},
          :length, {type: :uint16},
          :resource, {type: :uint32}
      def has_reply?
        false
      end
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
      def has_reply?
        false
      end
    end

    class ForceScreenSaver < Xrb::Message
      include Xrb::Request

      OPCODE = 115

      layout \
          :major_opcode, {type: :uint8},
          :mode, {type: :uint8},
          :length, {type: :uint16}
      def has_reply?
        false
      end
    end

    class SetPointerMapping < Xrb::Message
      include Xrb::Request

      OPCODE = 116

      layout \
          :major_opcode, {type: :uint8},
          :map_len, {type: :uint8},
          :length, {type: :uint16},
          :map, {length_field: :map_len, type: :uint8, kind: :list}
      def has_reply?
        true
      end
    end

    class GetPointerMapping < Xrb::Message
      include Xrb::Request

      OPCODE = 117

      layout \
          :major_opcode, {type: :uint8},
          :pad0, {size: 1, type: :uint8},
          :length, {type: :uint16}
      def has_reply?
        true
      end
    end

    class SetModifierMapping < Xrb::Message
      include Xrb::Request

      OPCODE = 118

      layout \
          :major_opcode, {type: :uint8},
          :keycodes_per_modifier, {type: :uint8},
          :length, {type: :uint16},
          :keycodes,{type: uint8, length_expr: '(keycodes_per_modifier * 8)'}
      def has_reply?
        true
      end
    end

    class GetModifierMapping < Xrb::Message
      include Xrb::Request

      OPCODE = 119

      layout \
          :major_opcode, {type: :uint8},
          :pad0, {size: 1, type: :uint8},
          :length, {type: :uint16}
      def has_reply?
        true
      end
    end

    class NoOperation < Xrb::Message
      include Xrb::Request

      OPCODE = 127

      layout \
          :major_opcode, {type: :uint8},
          :pad0, {size: 1, type: :uint8},
          :length, {type: :uint16}
      def has_reply?
        false
      end
    end

  end
end
