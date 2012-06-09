#
# This file was auto-generated. Do not edit.
#

module Xrb
  module Input
    module Event
      class DeviceValuator < Xrb::Message
        OPCODE = 0
        
        layout \
            :response_type, :uint8
            :device_id, :uint8
            :device_state, :uint16
            :num_valuators, :uint8
            :first_valuator, :uint8
            :valuators, [:int32, 6]
      end
      
      class DeviceKeyPress < Xrb::Message
        OPCODE = 1
        
        layout \
            :response_type, :uint8
            :detail, :uint8
            :time, :uint32
            :root, :uint32
            :event, :uint32
            :child, :uint32
            :root_x, :int16
            :root_y, :int16
            :event_x, :int16
            :event_y, :int16
            :state, :uint16
            :same_screen, :bool
            :device_id, :uint8
      end
      
      class DeviceKeyRelease < Xrb::Message
        OPCODE = 2
        
        layout \
            :response_type, :uint8
            :detail, :uint8
            :time, :uint32
            :root, :uint32
            :event, :uint32
            :child, :uint32
            :root_x, :int16
            :root_y, :int16
            :event_x, :int16
            :event_y, :int16
            :state, :uint16
            :same_screen, :bool
            :device_id, :uint8
      end
      
      class DeviceButtonPress < Xrb::Message
        OPCODE = 3
        
        layout \
            :response_type, :uint8
            :detail, :uint8
            :time, :uint32
            :root, :uint32
            :event, :uint32
            :child, :uint32
            :root_x, :int16
            :root_y, :int16
            :event_x, :int16
            :event_y, :int16
            :state, :uint16
            :same_screen, :bool
            :device_id, :uint8
      end
      
      class DeviceButtonRelease < Xrb::Message
        OPCODE = 4
        
        layout \
            :response_type, :uint8
            :detail, :uint8
            :time, :uint32
            :root, :uint32
            :event, :uint32
            :child, :uint32
            :root_x, :int16
            :root_y, :int16
            :event_x, :int16
            :event_y, :int16
            :state, :uint16
            :same_screen, :bool
            :device_id, :uint8
      end
      
      class DeviceMotionNotify < Xrb::Message
        OPCODE = 5
        
        layout \
            :response_type, :uint8
            :detail, :uint8
            :time, :uint32
            :root, :uint32
            :event, :uint32
            :child, :uint32
            :root_x, :int16
            :root_y, :int16
            :event_x, :int16
            :event_y, :int16
            :state, :uint16
            :same_screen, :bool
            :device_id, :uint8
      end
      
      class ProximityIn < Xrb::Message
        OPCODE = 8
        
        layout \
            :response_type, :uint8
            :detail, :uint8
            :time, :uint32
            :root, :uint32
            :event, :uint32
            :child, :uint32
            :root_x, :int16
            :root_y, :int16
            :event_x, :int16
            :event_y, :int16
            :state, :uint16
            :same_screen, :bool
            :device_id, :uint8
      end
      
      class ProximityOut < Xrb::Message
        OPCODE = 9
        
        layout \
            :response_type, :uint8
            :detail, :uint8
            :time, :uint32
            :root, :uint32
            :event, :uint32
            :child, :uint32
            :root_x, :int16
            :root_y, :int16
            :event_x, :int16
            :event_y, :int16
            :state, :uint16
            :same_screen, :bool
            :device_id, :uint8
      end
      
      class FocusIn < Xrb::Message
        OPCODE = 6
        
        layout \
            :response_type, :uint8
            :detail, :uint8
            :time, :uint32
            :window, :uint32
            :mode, :uint8
            :device_id, :uint8
            :pad1, [:uint8, 18]
      end
      
      class FocusOut < Xrb::Message
        OPCODE = 7
        
        layout \
            :response_type, :uint8
            :detail, :uint8
            :time, :uint32
            :window, :uint32
            :mode, :uint8
            :device_id, :uint8
            :pad1, [:uint8, 18]
      end
      
      class DeviceStateNotify < Xrb::Message
        OPCODE = 10
        
        layout \
            :response_type, :uint8
            :device_id, :uint8
            :time, :uint32
            :num_keys, :uint8
            :num_buttons, :uint8
            :num_valuators, :uint8
            :classes_reported, :uint8
            :buttons, [:uint8, 4]
            :keys, [:uint8, 4]
            :valuators, [:uint32, 3]
      end
      
      class DeviceMappingNotify < Xrb::Message
        OPCODE = 11
        
        layout \
            :response_type, :uint8
            :device_id, :uint8
            :request, :uint8
            :first_keycode, :uint8
            :count, :uint8
            :pad1, [:uint8, 1]
            :time, :uint32
            :pad2, [:uint8, 20]
      end
      
      class ChangeDeviceNotify < Xrb::Message
        OPCODE = 12
        
        layout \
            :response_type, :uint8
            :device_id, :uint8
            :time, :uint32
            :request, :uint8
            :pad1, [:uint8, 23]
      end
      
      class DeviceKeyStateNotify < Xrb::Message
        OPCODE = 13
        
        layout \
            :response_type, :uint8
            :device_id, :uint8
            :keys, [:uint8, 28]
      end
      
      class DeviceButtonStateNotify < Xrb::Message
        OPCODE = 14
        
        layout \
            :response_type, :uint8
            :device_id, :uint8
            :buttons, [:uint8, 28]
      end
      
      class DevicePresenceNotify < Xrb::Message
        OPCODE = 15
        
        layout \
            :response_type, :uint8
            :pad1, [:uint8, 1]
            :time, :uint32
            :devchange, :uint8
            :device_id, :uint8
            :control, :uint16
            :pad2, [:uint8, 20]
      end
      
    end
  end
end
