#
# This file was auto-generated. Do not edit.
#

module Xrb
  module Event
    class KeyPress < Xrb::Message
      OPCODE = 2

      layout \
          :response_type, {type: :uint8},
          :detail, {type: :uint8},
          :sequence, {type: :uint16},
          :time, {type: :uint32},
          :root, {type: :uint32},
          :event, {type: :uint32},
          :child, {type: :uint32},
          :root_x, {type: :int16},
          :root_y, {type: :int16},
          :event_x, {type: :int16},
          :event_y, {type: :int16},
          :state, {type: :uint16},
          :same_screen, {type: :bool},
          :pad1, {size: 1, type: :uint8}
    end

    class KeyRelease < Xrb::Message
      OPCODE = 3

      layout \
          :response_type, {type: :uint8},
          :detail, {type: :uint8},
          :sequence, {type: :uint16},
          :time, {type: :uint32},
          :root, {type: :uint32},
          :event, {type: :uint32},
          :child, {type: :uint32},
          :root_x, {type: :int16},
          :root_y, {type: :int16},
          :event_x, {type: :int16},
          :event_y, {type: :int16},
          :state, {type: :uint16},
          :same_screen, {type: :bool},
          :pad1, {size: 1, type: :uint8}
    end

    class ButtonPress < Xrb::Message
      OPCODE = 4

      layout \
          :response_type, {type: :uint8},
          :detail, {type: :uint8},
          :sequence, {type: :uint16},
          :time, {type: :uint32},
          :root, {type: :uint32},
          :event, {type: :uint32},
          :child, {type: :uint32},
          :root_x, {type: :int16},
          :root_y, {type: :int16},
          :event_x, {type: :int16},
          :event_y, {type: :int16},
          :state, {type: :uint16},
          :same_screen, {type: :bool},
          :pad1, {size: 1, type: :uint8}
    end

    class ButtonRelease < Xrb::Message
      OPCODE = 5

      layout \
          :response_type, {type: :uint8},
          :detail, {type: :uint8},
          :sequence, {type: :uint16},
          :time, {type: :uint32},
          :root, {type: :uint32},
          :event, {type: :uint32},
          :child, {type: :uint32},
          :root_x, {type: :int16},
          :root_y, {type: :int16},
          :event_x, {type: :int16},
          :event_y, {type: :int16},
          :state, {type: :uint16},
          :same_screen, {type: :bool},
          :pad1, {size: 1, type: :uint8}
    end

    class MotionNotify < Xrb::Message
      OPCODE = 6

      layout \
          :response_type, {type: :uint8},
          :detail, {type: :uint8},
          :sequence, {type: :uint16},
          :time, {type: :uint32},
          :root, {type: :uint32},
          :event, {type: :uint32},
          :child, {type: :uint32},
          :root_x, {type: :int16},
          :root_y, {type: :int16},
          :event_x, {type: :int16},
          :event_y, {type: :int16},
          :state, {type: :uint16},
          :same_screen, {type: :bool},
          :pad1, {size: 1, type: :uint8}
    end

    class EnterNotify < Xrb::Message
      OPCODE = 7

      layout \
          :response_type, {type: :uint8},
          :detail, {type: :uint8},
          :sequence, {type: :uint16},
          :time, {type: :uint32},
          :root, {type: :uint32},
          :event, {type: :uint32},
          :child, {type: :uint32},
          :root_x, {type: :int16},
          :root_y, {type: :int16},
          :event_x, {type: :int16},
          :event_y, {type: :int16},
          :state, {type: :uint16},
          :mode, {type: :uint8},
          :same_screen_focus, {type: :uint8}
    end

    class LeaveNotify < Xrb::Message
      OPCODE = 8

      layout \
          :response_type, {type: :uint8},
          :detail, {type: :uint8},
          :sequence, {type: :uint16},
          :time, {type: :uint32},
          :root, {type: :uint32},
          :event, {type: :uint32},
          :child, {type: :uint32},
          :root_x, {type: :int16},
          :root_y, {type: :int16},
          :event_x, {type: :int16},
          :event_y, {type: :int16},
          :state, {type: :uint16},
          :mode, {type: :uint8},
          :same_screen_focus, {type: :uint8}
    end

    class FocusIn < Xrb::Message
      OPCODE = 9

      layout \
          :response_type, {type: :uint8},
          :detail, {type: :uint8},
          :sequence, {type: :uint16},
          :event, {type: :uint32},
          :mode, {type: :uint8},
          :pad1, {size: 3, type: :uint8}
    end

    class FocusOut < Xrb::Message
      OPCODE = 10

      layout \
          :response_type, {type: :uint8},
          :detail, {type: :uint8},
          :sequence, {type: :uint16},
          :event, {type: :uint32},
          :mode, {type: :uint8},
          :pad1, {size: 3, type: :uint8}
    end

    class KeymapNotify < Xrb::Message
      OPCODE = 11

      layout \
          :response_type, {type: :uint8},
          :keys, {type: :uint8, size: 31}
    end

    class Expose < Xrb::Message
      OPCODE = 12

      layout \
          :response_type, {type: :uint8},
          :pad1, {size: 1, type: :uint8},
          :sequence, {type: :uint16},
          :window, {type: :uint32},
          :x, {type: :uint16},
          :y, {type: :uint16},
          :width, {type: :uint16},
          :height, {type: :uint16},
          :count, {type: :uint16},
          :pad2, {size: 2, type: :uint8}
    end

    class GraphicsExposure < Xrb::Message
      OPCODE = 13

      layout \
          :response_type, {type: :uint8},
          :pad1, {size: 1, type: :uint8},
          :sequence, {type: :uint16},
          :drawable, {type: :uint32},
          :x, {type: :uint16},
          :y, {type: :uint16},
          :width, {type: :uint16},
          :height, {type: :uint16},
          :minor_opcode, {type: :uint16},
          :count, {type: :uint16},
          :major_opcode, {type: :uint8},
          :pad2, {size: 3, type: :uint8}
    end

    class NoExposure < Xrb::Message
      OPCODE = 14

      layout \
          :response_type, {type: :uint8},
          :pad1, {size: 1, type: :uint8},
          :sequence, {type: :uint16},
          :drawable, {type: :uint32},
          :minor_opcode, {type: :uint16},
          :major_opcode, {type: :uint8},
          :pad2, {size: 1, type: :uint8}
    end

    class VisibilityNotify < Xrb::Message
      OPCODE = 15

      layout \
          :response_type, {type: :uint8},
          :pad1, {size: 1, type: :uint8},
          :sequence, {type: :uint16},
          :window, {type: :uint32},
          :state, {type: :uint8},
          :pad2, {size: 3, type: :uint8}
    end

    class CreateNotify < Xrb::Message
      OPCODE = 16

      layout \
          :response_type, {type: :uint8},
          :pad1, {size: 1, type: :uint8},
          :sequence, {type: :uint16},
          :parent, {type: :uint32},
          :window, {type: :uint32},
          :x, {type: :int16},
          :y, {type: :int16},
          :width, {type: :uint16},
          :height, {type: :uint16},
          :border_width, {type: :uint16},
          :override_redirect, {type: :bool},
          :pad2, {size: 1, type: :uint8}
    end

    class DestroyNotify < Xrb::Message
      OPCODE = 17

      layout \
          :response_type, {type: :uint8},
          :pad1, {size: 1, type: :uint8},
          :sequence, {type: :uint16},
          :event, {type: :uint32},
          :window, {type: :uint32}
    end

    class UnmapNotify < Xrb::Message
      OPCODE = 18

      layout \
          :response_type, {type: :uint8},
          :pad1, {size: 1, type: :uint8},
          :sequence, {type: :uint16},
          :event, {type: :uint32},
          :window, {type: :uint32},
          :from_configure, {type: :bool},
          :pad2, {size: 3, type: :uint8}
    end

    class MapNotify < Xrb::Message
      OPCODE = 19

      layout \
          :response_type, {type: :uint8},
          :pad1, {size: 1, type: :uint8},
          :sequence, {type: :uint16},
          :event, {type: :uint32},
          :window, {type: :uint32},
          :override_redirect, {type: :bool},
          :pad2, {size: 3, type: :uint8}
    end

    class MapRequest < Xrb::Message
      OPCODE = 20

      layout \
          :response_type, {type: :uint8},
          :pad1, {size: 1, type: :uint8},
          :sequence, {type: :uint16},
          :parent, {type: :uint32},
          :window, {type: :uint32}
    end

    class ReparentNotify < Xrb::Message
      OPCODE = 21

      layout \
          :response_type, {type: :uint8},
          :pad1, {size: 1, type: :uint8},
          :sequence, {type: :uint16},
          :event, {type: :uint32},
          :window, {type: :uint32},
          :parent, {type: :uint32},
          :x, {type: :int16},
          :y, {type: :int16},
          :override_redirect, {type: :bool},
          :pad2, {size: 3, type: :uint8}
    end

    class ConfigureNotify < Xrb::Message
      OPCODE = 22

      layout \
          :response_type, {type: :uint8},
          :pad1, {size: 1, type: :uint8},
          :sequence, {type: :uint16},
          :event, {type: :uint32},
          :window, {type: :uint32},
          :above_sibling, {type: :uint32},
          :x, {type: :int16},
          :y, {type: :int16},
          :width, {type: :uint16},
          :height, {type: :uint16},
          :border_width, {type: :uint16},
          :override_redirect, {type: :bool},
          :pad2, {size: 1, type: :uint8}
    end

    class ConfigureRequest < Xrb::Message
      OPCODE = 23

      layout \
          :response_type, {type: :uint8},
          :stack_mode, {type: :uint8},
          :sequence, {type: :uint16},
          :parent, {type: :uint32},
          :window, {type: :uint32},
          :sibling, {type: :uint32},
          :x, {type: :int16},
          :y, {type: :int16},
          :width, {type: :uint16},
          :height, {type: :uint16},
          :border_width, {type: :uint16},
          :value_mask, {type: :uint16}
    end

    class GravityNotify < Xrb::Message
      OPCODE = 24

      layout \
          :response_type, {type: :uint8},
          :pad1, {size: 1, type: :uint8},
          :sequence, {type: :uint16},
          :event, {type: :uint32},
          :window, {type: :uint32},
          :x, {type: :int16},
          :y, {type: :int16}
    end

    class ResizeRequest < Xrb::Message
      OPCODE = 25

      layout \
          :response_type, {type: :uint8},
          :pad1, {size: 1, type: :uint8},
          :sequence, {type: :uint16},
          :window, {type: :uint32},
          :width, {type: :uint16},
          :height, {type: :uint16}
    end

    class CirculateNotify < Xrb::Message
      OPCODE = 26

      layout \
          :response_type, {type: :uint8},
          :pad1, {size: 1, type: :uint8},
          :sequence, {type: :uint16},
          :event, {type: :uint32},
          :window, {type: :uint32},
          :pad2, {size: 4, type: :uint8},
          :place, {type: :uint8},
          :pad3, {size: 3, type: :uint8}
    end

    class CirculateRequest < Xrb::Message
      OPCODE = 27

      layout \
          :response_type, {type: :uint8},
          :pad1, {size: 1, type: :uint8},
          :sequence, {type: :uint16},
          :event, {type: :uint32},
          :window, {type: :uint32},
          :pad2, {size: 4, type: :uint8},
          :place, {type: :uint8},
          :pad3, {size: 3, type: :uint8}
    end

    class PropertyNotify < Xrb::Message
      OPCODE = 28

      layout \
          :response_type, {type: :uint8},
          :pad1, {size: 1, type: :uint8},
          :sequence, {type: :uint16},
          :window, {type: :uint32},
          :atom, {type: :uint32},
          :time, {type: :uint32},
          :state, {type: :uint8},
          :pad2, {size: 3, type: :uint8}
    end

    class SelectionClear < Xrb::Message
      OPCODE = 29

      layout \
          :response_type, {type: :uint8},
          :pad1, {size: 1, type: :uint8},
          :sequence, {type: :uint16},
          :time, {type: :uint32},
          :owner, {type: :uint32},
          :selection, {type: :uint32}
    end

    class SelectionRequest < Xrb::Message
      OPCODE = 30

      layout \
          :response_type, {type: :uint8},
          :pad1, {size: 1, type: :uint8},
          :sequence, {type: :uint16},
          :time, {type: :uint32},
          :owner, {type: :uint32},
          :requestor, {type: :uint32},
          :selection, {type: :uint32},
          :target, {type: :uint32},
          :property, {type: :uint32}
    end

    class SelectionNotify < Xrb::Message
      OPCODE = 31

      layout \
          :response_type, {type: :uint8},
          :pad1, {size: 1, type: :uint8},
          :sequence, {type: :uint16},
          :time, {type: :uint32},
          :requestor, {type: :uint32},
          :selection, {type: :uint32},
          :target, {type: :uint32},
          :property, {type: :uint32}
    end

    class ColormapNotify < Xrb::Message
      OPCODE = 32

      layout \
          :response_type, {type: :uint8},
          :pad1, {size: 1, type: :uint8},
          :sequence, {type: :uint16},
          :window, {type: :uint32},
          :colormap, {type: :uint32},
          :new, {type: :bool},
          :state, {type: :uint8},
          :pad2, {size: 2, type: :uint8}
    end

    class ClientMessage < Xrb::Message
      OPCODE = 33

      layout \
          :response_type, {type: :uint8},
          :format, {type: :uint8},
          :sequence, {type: :uint16},
          :window, {type: :uint32},
          :type, {type: :uint32},
          :data, {type: :ClientMessageData}
    end

    class MappingNotify < Xrb::Message
      OPCODE = 34

      layout \
          :response_type, {type: :uint8},
          :pad1, {size: 1, type: :uint8},
          :sequence, {type: :uint16},
          :request, {type: :uint8},
          :first_keycode, {type: :uint8},
          :count, {type: :uint8},
          :pad2, {size: 1, type: :uint8}
    end

    @op_map = {
      2 => KeyPress,
3 => KeyRelease,
4 => ButtonPress,
5 => ButtonRelease,
6 => MotionNotify,
7 => EnterNotify,
8 => LeaveNotify,
9 => FocusIn,
10 => FocusOut,
11 => KeymapNotify,
12 => Expose,
13 => GraphicsExposure,
14 => NoExposure,
15 => VisibilityNotify,
16 => CreateNotify,
17 => DestroyNotify,
18 => UnmapNotify,
19 => MapNotify,
20 => MapRequest,
21 => ReparentNotify,
22 => ConfigureNotify,
23 => ConfigureRequest,
24 => GravityNotify,
25 => ResizeRequest,
26 => CirculateNotify,
27 => CirculateRequest,
28 => PropertyNotify,
29 => SelectionClear,
30 => SelectionRequest,
31 => SelectionNotify,
32 => ColormapNotify,
33 => ClientMessage,
34 => MappingNotify
    }
    def self.find(opcode)
      @op_map[opcode]
    end
  end
end
