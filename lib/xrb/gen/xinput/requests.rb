#
# This file was auto-generated. Do not edit.
#

module Xrb
  module Input
    module Request
      class GetExtensionVersion < Xrb::Message
        include Xrb::Request

        OPCODE = 1

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :name_len, {type: :uint16},
            :pad1, {size: 2, type: :uint8},
            :name, {length_field: :name_len, type: :char, kind: :string}
      end

      class ListInputDevices < Xrb::Message
        include Xrb::Request

        OPCODE = 2

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16}
      end

      class OpenDevice < Xrb::Message
        include Xrb::Request

        OPCODE = 3

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :device_id, {type: :uint8},
            :pad1, {size: 3, type: :uint8}
      end

      class CloseDevice < Xrb::Message
        include Xrb::Request

        OPCODE = 4

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :device_id, {type: :uint8},
            :pad1, {size: 3, type: :uint8}
      end

      class SetDeviceMode < Xrb::Message
        include Xrb::Request

        OPCODE = 5

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :device_id, {type: :uint8},
            :mode, {type: :uint8},
            :pad1, {size: 2, type: :uint8}
      end

      class SelectExtensionEvent < Xrb::Message
        include Xrb::Request

        OPCODE = 6

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :window, {type: :uint32},
            :num_classes, {type: :uint16},
            :pad1, {size: 2, type: :uint8},
            :classes, {length_field: :num_classes, type: :uint32, kind: :list}
      end

      class GetSelectedExtensionEvents < Xrb::Message
        include Xrb::Request

        OPCODE = 7

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :window, {type: :uint32}
      end

      class ChangeDeviceDontPropagateList < Xrb::Message
        include Xrb::Request

        OPCODE = 8

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :window, {type: :uint32},
            :num_classes, {type: :uint16},
            :mode, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :classes, {length_field: :num_classes, type: :uint32, kind: :list}
      end

      class GetDeviceDontPropagateList < Xrb::Message
        include Xrb::Request

        OPCODE = 9

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :window, {type: :uint32}
      end

      class GetDeviceMotionEvents < Xrb::Message
        include Xrb::Request

        OPCODE = 10

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :start, {type: :uint32},
            :stop, {type: :uint32},
            :device_id, {type: :uint8}
      end

      class ChangeKeyboardDevice < Xrb::Message
        include Xrb::Request

        OPCODE = 11

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :device_id, {type: :uint8},
            :pad1, {size: 3, type: :uint8}
      end

      class ChangePointerDevice < Xrb::Message
        include Xrb::Request

        OPCODE = 12

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :x_axis, {type: :uint8},
            :y_axis, {type: :uint8},
            :device_id, {type: :uint8},
            :pad1, {size: 1, type: :uint8}
      end

      class GrabDevice < Xrb::Message
        include Xrb::Request

        OPCODE = 13

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :grab_window, {type: :uint32},
            :time, {type: :uint32},
            :num_classes, {type: :uint16},
            :this_device_mode, {type: :uint8},
            :other_device_mode, {type: :uint8},
            :owner_events, {type: :bool},
            :device_id, {type: :uint8},
            :pad1, {size: 2, type: :uint8},
            :classes, {length_field: :num_classes, type: :uint32, kind: :list}
      end

      class UngrabDevice < Xrb::Message
        include Xrb::Request

        OPCODE = 14

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :time, {type: :uint32},
            :device_id, {type: :uint8}
      end

      class GrabDeviceKey < Xrb::Message
        include Xrb::Request

        OPCODE = 15

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :grab_window, {type: :uint32},
            :num_classes, {type: :uint16},
            :modifiers, {type: :uint16},
            :modifier_device, {type: :uint8},
            :grabbed_device, {type: :uint8},
            :key, {type: :uint8},
            :this_device_mode, {type: :uint8},
            :other_device_mode, {type: :uint8},
            :owner_events, {type: :bool},
            :pad1, {size: 2, type: :uint8},
            :classes, {length_field: :num_classes, type: :uint32, kind: :list}
      end

      class UngrabDeviceKey < Xrb::Message
        include Xrb::Request

        OPCODE = 16

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :grabWindow, {type: :uint32},
            :modifiers, {type: :uint16},
            :modifier_device, {type: :uint8},
            :key, {type: :uint8},
            :grabbed_device, {type: :uint8}
      end

      class GrabDeviceButton < Xrb::Message
        include Xrb::Request

        OPCODE = 17

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :grab_window, {type: :uint32},
            :grabbed_device, {type: :uint8},
            :modifier_device, {type: :uint8},
            :num_classes, {type: :uint16},
            :modifiers, {type: :uint16},
            :this_device_mode, {type: :uint8},
            :other_device_mode, {type: :uint8},
            :button, {type: :uint8},
            :owner_events, {type: :uint8},
            :pad1, {size: 2, type: :uint8},
            :classes, {length_field: :num_classes, type: :uint32, kind: :list}
      end

      class UngrabDeviceButton < Xrb::Message
        include Xrb::Request

        OPCODE = 18

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :grab_window, {type: :uint32},
            :modifiers, {type: :uint16},
            :modifier_device, {type: :uint8},
            :button, {type: :uint8},
            :grabbed_device, {type: :uint8}
      end

      class AllowDeviceEvents < Xrb::Message
        include Xrb::Request

        OPCODE = 19

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :time, {type: :uint32},
            :mode, {type: :uint8},
            :device_id, {type: :uint8}
      end

      class GetDeviceFocus < Xrb::Message
        include Xrb::Request

        OPCODE = 20

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :device_id, {type: :uint8},
            :pad1, {size: 3, type: :uint8}
      end

      class SetDeviceFocus < Xrb::Message
        include Xrb::Request

        OPCODE = 21

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :focus, {type: :uint32},
            :time, {type: :uint32},
            :revert_to, {type: :uint8},
            :device_id, {type: :uint8}
      end

      class GetFeedbackControl < Xrb::Message
        include Xrb::Request

        OPCODE = 22

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :device_id, {type: :uint8},
            :pad1, {size: 3, type: :uint8}
      end

      class GetDeviceKeyMapping < Xrb::Message
        include Xrb::Request

        OPCODE = 24

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :device_id, {type: :uint8},
            :first_keycode, {type: :uint8},
            :count, {type: :uint8}
      end

      class ChangeDeviceKeyMapping < Xrb::Message
        include Xrb::Request

        OPCODE = 25

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :device_id, {type: :uint8},
            :first_keycode, {type: :uint8},
            :keysyms_per_keycode, {type: :uint8},
            :keycode_count, {type: :uint8}
      end

      class GetDeviceModifierMapping < Xrb::Message
        include Xrb::Request

        OPCODE = 26

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :device_id, {type: :uint8},
            :pad1, {size: 3, type: :uint8}
      end

      class SetDeviceModifierMapping < Xrb::Message
        include Xrb::Request

        OPCODE = 27

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :device_id, {type: :uint8},
            :keycodes_per_modifier, {type: :uint8},
            :pad1, {size: 1, type: :uint8}
      end

      class GetDeviceButtonMapping < Xrb::Message
        include Xrb::Request

        OPCODE = 28

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :device_id, {type: :uint8},
            :pad1, {size: 3, type: :uint8}
      end

      class SetDeviceButtonMapping < Xrb::Message
        include Xrb::Request

        OPCODE = 29

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :device_id, {type: :uint8},
            :map_size, {type: :uint8},
            :pad1, {size: 2, type: :uint8},
            :map, {length_field: :map_size, type: :uint8, kind: :list}
      end

      class QueryDeviceState < Xrb::Message
        include Xrb::Request

        OPCODE = 30

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :device_id, {type: :uint8},
            :pad1, {size: 3, type: :uint8}
      end

      class SendExtensionEvent < Xrb::Message
        include Xrb::Request

        OPCODE = 31

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :destination, {type: :uint32},
            :device_id, {type: :uint8},
            :propagate, {type: :bool},
            :num_classes, {type: :uint16},
            :num_events, {type: :uint8},
            :pad1, {size: 3, type: :uint8},
            :classes, {length_field: :num_classes, type: :uint32, kind: :list}
      end

      class DeviceBell < Xrb::Message
        include Xrb::Request

        OPCODE = 32

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :device_id, {type: :uint8},
            :feedback_id, {type: :uint8},
            :feedback_class, {type: :uint8},
            :percent, {type: :int8}
      end

      class SetDeviceValuators < Xrb::Message
        include Xrb::Request

        OPCODE = 33

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :device_id, {type: :uint8},
            :first_valuator, {type: :uint8},
            :num_valuators, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :valuators, {length_field: :num_valuators, type: :int32, kind: :list}
      end

      class GetDeviceControl < Xrb::Message
        include Xrb::Request

        OPCODE = 34

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :control_id, {type: :uint16},
            :device_id, {type: :uint8},
            :pad1, {size: 1, type: :uint8}
      end

    end
  end
end
