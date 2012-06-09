#
# This file was auto-generated. Do not edit.
#

module Xrb
  module Event
    class KeyPress < Xrb::Message
      OPCODE = 2
      
      layout \
          :response_type, :uint8,
          :detail, :uint8,
          :time, :uint32,
          :root, :uint32,
          :event, :uint32,
          :child, :uint32,
          :root_x, :int16,
          :root_y, :int16,
          :event_x, :int16,
          :event_y, :int16,
          :state, :uint16,
          :same_screen, :bool,
          :pad1, [:uint8, 1]
    end
    
    class KeyRelease < Xrb::Message
      OPCODE = 3
      
      layout \
          :response_type, :uint8,
          :detail, :uint8,
          :time, :uint32,
          :root, :uint32,
          :event, :uint32,
          :child, :uint32,
          :root_x, :int16,
          :root_y, :int16,
          :event_x, :int16,
          :event_y, :int16,
          :state, :uint16,
          :same_screen, :bool,
          :pad1, [:uint8, 1]
    end
    
    class ButtonPress < Xrb::Message
      OPCODE = 4
      
      layout \
          :response_type, :uint8,
          :detail, :uint8,
          :time, :uint32,
          :root, :uint32,
          :event, :uint32,
          :child, :uint32,
          :root_x, :int16,
          :root_y, :int16,
          :event_x, :int16,
          :event_y, :int16,
          :state, :uint16,
          :same_screen, :bool,
          :pad1, [:uint8, 1]
    end
    
    class ButtonRelease < Xrb::Message
      OPCODE = 5
      
      layout \
          :response_type, :uint8,
          :detail, :uint8,
          :time, :uint32,
          :root, :uint32,
          :event, :uint32,
          :child, :uint32,
          :root_x, :int16,
          :root_y, :int16,
          :event_x, :int16,
          :event_y, :int16,
          :state, :uint16,
          :same_screen, :bool,
          :pad1, [:uint8, 1]
    end
    
    class MotionNotify < Xrb::Message
      OPCODE = 6
      
      layout \
          :response_type, :uint8,
          :detail, :uint8,
          :time, :uint32,
          :root, :uint32,
          :event, :uint32,
          :child, :uint32,
          :root_x, :int16,
          :root_y, :int16,
          :event_x, :int16,
          :event_y, :int16,
          :state, :uint16,
          :same_screen, :bool,
          :pad1, [:uint8, 1]
    end
    
    class EnterNotify < Xrb::Message
      OPCODE = 7
      
      layout \
          :response_type, :uint8,
          :detail, :uint8,
          :time, :uint32,
          :root, :uint32,
          :event, :uint32,
          :child, :uint32,
          :root_x, :int16,
          :root_y, :int16,
          :event_x, :int16,
          :event_y, :int16,
          :state, :uint16,
          :mode, :uint8,
          :same_screen_focus, :uint8
    end
    
    class LeaveNotify < Xrb::Message
      OPCODE = 8
      
      layout \
          :response_type, :uint8,
          :detail, :uint8,
          :time, :uint32,
          :root, :uint32,
          :event, :uint32,
          :child, :uint32,
          :root_x, :int16,
          :root_y, :int16,
          :event_x, :int16,
          :event_y, :int16,
          :state, :uint16,
          :mode, :uint8,
          :same_screen_focus, :uint8
    end
    
    class FocusIn < Xrb::Message
      OPCODE = 9
      
      layout \
          :response_type, :uint8,
          :detail, :uint8,
          :event, :uint32,
          :mode, :uint8,
          :pad1, [:uint8, 3]
    end
    
    class FocusOut < Xrb::Message
      OPCODE = 10
      
      layout \
          :response_type, :uint8,
          :detail, :uint8,
          :event, :uint32,
          :mode, :uint8,
          :pad1, [:uint8, 3]
    end
    
    class KeymapNotify < Xrb::Message
      OPCODE = 11
      
      layout \
          :response_type, :uint8,
          :keys, [:uint8, 31]
    end
    
    class Expose < Xrb::Message
      OPCODE = 12
      
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :window, :uint32,
          :x, :uint16,
          :y, :uint16,
          :width, :uint16,
          :height, :uint16,
          :count, :uint16,
          :pad2, [:uint8, 2]
    end
    
    class GraphicsExposure < Xrb::Message
      OPCODE = 13
      
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :drawable, :uint32,
          :x, :uint16,
          :y, :uint16,
          :width, :uint16,
          :height, :uint16,
          :minor_opcode, :uint16,
          :count, :uint16,
          :major_opcode, :uint8,
          :pad2, [:uint8, 3]
    end
    
    class NoExposure < Xrb::Message
      OPCODE = 14
      
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :drawable, :uint32,
          :minor_opcode, :uint16,
          :major_opcode, :uint8,
          :pad2, [:uint8, 1]
    end
    
    class VisibilityNotify < Xrb::Message
      OPCODE = 15
      
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :window, :uint32,
          :state, :uint8,
          :pad2, [:uint8, 3]
    end
    
    class CreateNotify < Xrb::Message
      OPCODE = 16
      
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :parent, :uint32,
          :window, :uint32,
          :x, :int16,
          :y, :int16,
          :width, :uint16,
          :height, :uint16,
          :border_width, :uint16,
          :override_redirect, :bool,
          :pad2, [:uint8, 1]
    end
    
    class DestroyNotify < Xrb::Message
      OPCODE = 17
      
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :event, :uint32,
          :window, :uint32
    end
    
    class UnmapNotify < Xrb::Message
      OPCODE = 18
      
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :event, :uint32,
          :window, :uint32,
          :from_configure, :bool,
          :pad2, [:uint8, 3]
    end
    
    class MapNotify < Xrb::Message
      OPCODE = 19
      
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :event, :uint32,
          :window, :uint32,
          :override_redirect, :bool,
          :pad2, [:uint8, 3]
    end
    
    class MapRequest < Xrb::Message
      OPCODE = 20
      
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :parent, :uint32,
          :window, :uint32
    end
    
    class ReparentNotify < Xrb::Message
      OPCODE = 21
      
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :event, :uint32,
          :window, :uint32,
          :parent, :uint32,
          :x, :int16,
          :y, :int16,
          :override_redirect, :bool,
          :pad2, [:uint8, 3]
    end
    
    class ConfigureNotify < Xrb::Message
      OPCODE = 22
      
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :event, :uint32,
          :window, :uint32,
          :above_sibling, :uint32,
          :x, :int16,
          :y, :int16,
          :width, :uint16,
          :height, :uint16,
          :border_width, :uint16,
          :override_redirect, :bool,
          :pad2, [:uint8, 1]
    end
    
    class ConfigureRequest < Xrb::Message
      OPCODE = 23
      
      layout \
          :response_type, :uint8,
          :stack_mode, :uint8,
          :parent, :uint32,
          :window, :uint32,
          :sibling, :uint32,
          :x, :int16,
          :y, :int16,
          :width, :uint16,
          :height, :uint16,
          :border_width, :uint16,
          :value_mask, :uint16
    end
    
    class GravityNotify < Xrb::Message
      OPCODE = 24
      
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :event, :uint32,
          :window, :uint32,
          :x, :int16,
          :y, :int16
    end
    
    class ResizeRequest < Xrb::Message
      OPCODE = 25
      
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :window, :uint32,
          :width, :uint16,
          :height, :uint16
    end
    
    class CirculateNotify < Xrb::Message
      OPCODE = 26
      
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :event, :uint32,
          :window, :uint32,
          :pad2, [:uint8, 4],
          :place, :uint8,
          :pad3, [:uint8, 3]
    end
    
    class CirculateRequest < Xrb::Message
      OPCODE = 27
      
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :event, :uint32,
          :window, :uint32,
          :pad2, [:uint8, 4],
          :place, :uint8,
          :pad3, [:uint8, 3]
    end
    
    class PropertyNotify < Xrb::Message
      OPCODE = 28
      
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :window, :uint32,
          :atom, :uint32,
          :time, :uint32,
          :state, :uint8,
          :pad2, [:uint8, 3]
    end
    
    class SelectionClear < Xrb::Message
      OPCODE = 29
      
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :time, :uint32,
          :owner, :uint32,
          :selection, :uint32
    end
    
    class SelectionRequest < Xrb::Message
      OPCODE = 30
      
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :time, :uint32,
          :owner, :uint32,
          :requestor, :uint32,
          :selection, :uint32,
          :target, :uint32,
          :property, :uint32
    end
    
    class SelectionNotify < Xrb::Message
      OPCODE = 31
      
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :time, :uint32,
          :requestor, :uint32,
          :selection, :uint32,
          :target, :uint32,
          :property, :uint32
    end
    
    class ColormapNotify < Xrb::Message
      OPCODE = 32
      
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :window, :uint32,
          :colormap, :uint32,
          :new, :bool,
          :state, :uint8,
          :pad2, [:uint8, 2]
    end
    
    class ClientMessage < Xrb::Message
      OPCODE = 33
      
      layout \
          :response_type, :uint8,
          :format, :uint8,
          :window, :uint32,
          :type, :uint32,
          :data, :ClientMessageData
    end
    
    class MappingNotify < Xrb::Message
      OPCODE = 34
      
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :request, :uint8,
          :first_keycode, :uint8,
          :count, :uint8,
          :pad2, [:uint8, 1]
    end
    
  end
end
