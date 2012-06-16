#
# This file was auto-generated. Do not edit.
#

module Xrb
  module Input
    module Event
      class DeviceValuator < Xrb::Message
        OPCODE = 0

        layout \
            :response_type, {type: :uint8},
            :device_id, {type: :uint8},
            :sequence, {type: :uint16},
            :device_state, {type: :uint16},
            :num_valuators, {type: :uint8},
            :first_valuator, {type: :uint8},
            :valuators, {type: :int32, size: 6}
      end

      class DeviceKeyPress < Xrb::Message
        OPCODE = 1

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
            :device_id, {type: :uint8}
      end

      class DeviceKeyRelease < Xrb::Message
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
            :device_id, {type: :uint8}
      end

      class DeviceButtonPress < Xrb::Message
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
            :device_id, {type: :uint8}
      end

      class DeviceButtonRelease < Xrb::Message
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
            :device_id, {type: :uint8}
      end

      class DeviceMotionNotify < Xrb::Message
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
            :device_id, {type: :uint8}
      end

      class ProximityIn < Xrb::Message
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
            :same_screen, {type: :bool},
            :device_id, {type: :uint8}
      end

      class ProximityOut < Xrb::Message
        OPCODE = 9

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
            :device_id, {type: :uint8}
      end

      class FocusIn < Xrb::Message
        OPCODE = 6

        layout \
            :response_type, {type: :uint8},
            :detail, {type: :uint8},
            :sequence, {type: :uint16},
            :time, {type: :uint32},
            :window, {type: :uint32},
            :mode, {type: :uint8},
            :device_id, {type: :uint8},
            :pad1, {size: 18, type: :uint8}
      end

      class FocusOut < Xrb::Message
        OPCODE = 7

        layout \
            :response_type, {type: :uint8},
            :detail, {type: :uint8},
            :sequence, {type: :uint16},
            :time, {type: :uint32},
            :window, {type: :uint32},
            :mode, {type: :uint8},
            :device_id, {type: :uint8},
            :pad1, {size: 18, type: :uint8}
      end

      class DeviceStateNotify < Xrb::Message
        OPCODE = 10

        layout \
            :response_type, {type: :uint8},
            :device_id, {type: :uint8},
            :sequence, {type: :uint16},
            :time, {type: :uint32},
            :num_keys, {type: :uint8},
            :num_buttons, {type: :uint8},
            :num_valuators, {type: :uint8},
            :classes_reported, {type: :uint8},
            :buttons, {type: :uint8, size: 4},
            :keys, {type: :uint8, size: 4},
            :valuators, {type: :uint32, size: 3}
      end

      class DeviceMappingNotify < Xrb::Message
        OPCODE = 11

        layout \
            :response_type, {type: :uint8},
            :device_id, {type: :uint8},
            :sequence, {type: :uint16},
            :request, {type: :uint8},
            :first_keycode, {type: :uint8},
            :count, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :time, {type: :uint32},
            :pad2, {size: 20, type: :uint8}
      end

      class ChangeDeviceNotify < Xrb::Message
        OPCODE = 12

        layout \
            :response_type, {type: :uint8},
            :device_id, {type: :uint8},
            :sequence, {type: :uint16},
            :time, {type: :uint32},
            :request, {type: :uint8},
            :pad1, {size: 23, type: :uint8}
      end

      class DeviceKeyStateNotify < Xrb::Message
        OPCODE = 13

        layout \
            :response_type, {type: :uint8},
            :device_id, {type: :uint8},
            :sequence, {type: :uint16},
            :keys, {type: :uint8, size: 28}
      end

      class DeviceButtonStateNotify < Xrb::Message
        OPCODE = 14

        layout \
            :response_type, {type: :uint8},
            :device_id, {type: :uint8},
            :sequence, {type: :uint16},
            :buttons, {type: :uint8, size: 28}
      end

      class DevicePresenceNotify < Xrb::Message
        OPCODE = 15

        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :time, {type: :uint32},
            :devchange, {type: :uint8},
            :device_id, {type: :uint8},
            :control, {type: :uint16},
            :pad2, {size: 20, type: :uint8}
      end

      @op_map = {
        0 => DeviceValuator,
1 => DeviceKeyPress,
2 => DeviceKeyRelease,
3 => DeviceButtonPress,
4 => DeviceButtonRelease,
5 => DeviceMotionNotify,
8 => ProximityIn,
9 => ProximityOut,
6 => FocusIn,
7 => FocusOut,
10 => DeviceStateNotify,
11 => DeviceMappingNotify,
12 => ChangeDeviceNotify,
13 => DeviceKeyStateNotify,
14 => DeviceButtonStateNotify,
15 => DevicePresenceNotify
      }
      def self.find(opcode)
        @op_map[opcode]
      end
    end
  end
end
