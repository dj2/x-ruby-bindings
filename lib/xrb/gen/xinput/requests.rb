#
# This file was auto-generated. Do not edit.
#

module Xrb
  module Input
    module Request
      class GetExtensionVersion < Xrb::Message
        OPCODE = 1
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :server_major, :uint16,
            :server_minor, :uint16,
            :present, :bool,
            :pad2, [19, :uint8]
      end
      
      class ListInputDevices < Xrb::Message
        OPCODE = 2
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :devices_len, :uint8,
            :pad2, [23, :uint8],
            :devices, [:devices_len, DeviceInfo, :list]
      end
      
      class OpenDevice < Xrb::Message
        OPCODE = 3
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :num_classes, :uint8,
            :pad2, [23, :uint8],
            :class_info, [:num_classes, InputClassInfo, :list]
      end
      
      class CloseDevice < Xrb::Message
        OPCODE = 4
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :device_id, :uint8,
            :pad1, [3, :uint8]
      end
      
      class SetDeviceMode < Xrb::Message
        OPCODE = 5
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :status, :uint8,
            :pad2, [23, :uint8]
      end
      
      class SelectExtensionEvent < Xrb::Message
        OPCODE = 6
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :window, :uint32,
            :num_classes, :uint16,
            :pad1, [2, :uint8],
            :classes, [:num_classes, :uint32, :list]
      end
      
      class GetSelectedExtensionEvents < Xrb::Message
        OPCODE = 7
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :num_this_classes, :uint16,
            :num_all_classes, :uint16,
            :pad2, [20, :uint8],
            :this_classes, [:num_this_classes, :uint32, :list],
            :all_classes, [:num_all_classes, :uint32, :list]
      end
      
      class ChangeDeviceDontPropagateList < Xrb::Message
        OPCODE = 8
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :window, :uint32,
            :num_classes, :uint16,
            :mode, :uint8,
            :pad1, [1, :uint8],
            :classes, [:num_classes, :uint32, :list]
      end
      
      class GetDeviceDontPropagateList < Xrb::Message
        OPCODE = 9
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :num_classes, :uint16,
            :pad2, [22, :uint8],
            :classes, [:num_classes, :uint32, :list]
      end
      
      class GetDeviceMotionEvents < Xrb::Message
        OPCODE = 10
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :num_coords, :uint32,
            :num_axes, :uint8,
            :device_mode, :uint8,
            :pad2, [18, :uint8]
      end
      
      class ChangeKeyboardDevice < Xrb::Message
        OPCODE = 11
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :status, :uint8,
            :pad2, [23, :uint8]
      end
      
      class ChangePointerDevice < Xrb::Message
        OPCODE = 12
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :status, :uint8,
            :pad2, [23, :uint8]
      end
      
      class GrabDevice < Xrb::Message
        OPCODE = 13
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :status, :uint8,
            :pad2, [23, :uint8]
      end
      
      class UngrabDevice < Xrb::Message
        OPCODE = 14
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :time, :uint32,
            :device_id, :uint8
      end
      
      class GrabDeviceKey < Xrb::Message
        OPCODE = 15
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :grab_window, :uint32,
            :num_classes, :uint16,
            :modifiers, :uint16,
            :modifier_device, :uint8,
            :grabbed_device, :uint8,
            :key, :uint8,
            :this_device_mode, :uint8,
            :other_device_mode, :uint8,
            :owner_events, :bool,
            :pad1, [2, :uint8],
            :classes, [:num_classes, :uint32, :list]
      end
      
      class UngrabDeviceKey < Xrb::Message
        OPCODE = 16
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :grabWindow, :uint32,
            :modifiers, :uint16,
            :modifier_device, :uint8,
            :key, :uint8,
            :grabbed_device, :uint8
      end
      
      class GrabDeviceButton < Xrb::Message
        OPCODE = 17
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :grab_window, :uint32,
            :grabbed_device, :uint8,
            :modifier_device, :uint8,
            :num_classes, :uint16,
            :modifiers, :uint16,
            :this_device_mode, :uint8,
            :other_device_mode, :uint8,
            :button, :uint8,
            :owner_events, :uint8,
            :pad1, [2, :uint8],
            :classes, [:num_classes, :uint32, :list]
      end
      
      class UngrabDeviceButton < Xrb::Message
        OPCODE = 18
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :grab_window, :uint32,
            :modifiers, :uint16,
            :modifier_device, :uint8,
            :button, :uint8,
            :grabbed_device, :uint8
      end
      
      class AllowDeviceEvents < Xrb::Message
        OPCODE = 19
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :time, :uint32,
            :mode, :uint8,
            :device_id, :uint8
      end
      
      class GetDeviceFocus < Xrb::Message
        OPCODE = 20
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :focus, :uint32,
            :time, :uint32,
            :revert_to, :uint8,
            :pad2, [15, :uint8]
      end
      
      class SetDeviceFocus < Xrb::Message
        OPCODE = 21
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :focus, :uint32,
            :time, :uint32,
            :revert_to, :uint8,
            :device_id, :uint8
      end
      
      class GetFeedbackControl < Xrb::Message
        OPCODE = 22
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :num_feedback, :uint16,
            :pad2, [22, :uint8]
      end
      
      class GetDeviceKeyMapping < Xrb::Message
        OPCODE = 24
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :keysyms_per_keycode, :uint8,
            :pad2, [23, :uint8],
            :keysyms, [:length, :uint32, :list]
      end
      
      class ChangeDeviceKeyMapping < Xrb::Message
        OPCODE = 25
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :device_id, :uint8,
            :first_keycode, :uint8,
            :keysyms_per_keycode, :uint8,
            :keycode_count, :uint8,
            :keysyms, [:keycode_count, :uint32, :list]
      end
      
      class GetDeviceModifierMapping < Xrb::Message
        OPCODE = 26
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :keycodes_per_modifier, :uint8,
            :pad2, [23, :uint8],
            :keymaps, [:keycodes_per_modifier, :uint8, :list]
      end
      
      class SetDeviceModifierMapping < Xrb::Message
        OPCODE = 27
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :status, :uint8,
            :pad2, [23, :uint8]
      end
      
      class GetDeviceButtonMapping < Xrb::Message
        OPCODE = 28
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :map_size, :uint8,
            :pad2, [23, :uint8],
            :map, [:map_size, :uint8, :list]
      end
      
      class SetDeviceButtonMapping < Xrb::Message
        OPCODE = 29
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :status, :uint8,
            :pad2, [23, :uint8]
      end
      
      class QueryDeviceState < Xrb::Message
        OPCODE = 30
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :num_classes, :uint8,
            :pad2, [23, :uint8]
      end
      
      class SendExtensionEvent < Xrb::Message
        OPCODE = 31
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :destination, :uint32,
            :device_id, :uint8,
            :propagate, :bool,
            :num_classes, :uint16,
            :num_events, :uint8,
            :pad1, [3, :uint8],
            :events, [:num_events, :char, :string],
            :classes, [:num_classes, :uint32, :list]
      end
      
      class DeviceBell < Xrb::Message
        OPCODE = 32
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :device_id, :uint8,
            :feedback_id, :uint8,
            :feedback_class, :uint8,
            :percent, :int8
      end
      
      class SetDeviceValuators < Xrb::Message
        OPCODE = 33
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :status, :uint8,
            :pad2, [23, :uint8]
      end
      
      class GetDeviceControl < Xrb::Message
        OPCODE = 34
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :status, :uint8,
            :pad2, [23, :uint8]
      end
      
    end
  end
end
