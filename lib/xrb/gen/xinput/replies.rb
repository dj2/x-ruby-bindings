#
# This file was auto-generated. Do not edit.
#

module Xrb
  module Input
    module Reply
      class GetExtensionVersion < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [1, :uint8],
            :sequence, :uint16,
            :length, :uint32,
            :server_major, :uint16,
            :server_minor, :uint16,
            :present, :bool,
            :pad2, [19, :uint8]
      end
      
      class ListInputDevices < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [1, :uint8],
            :sequence, :uint16,
            :length, :uint32,
            :devices_len, :uint8,
            :pad2, [23, :uint8],
            :devices, [:devices_len, DeviceInfo, :list]
      end
      
      class OpenDevice < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [1, :uint8],
            :sequence, :uint16,
            :length, :uint32,
            :num_classes, :uint8,
            :pad2, [23, :uint8],
            :class_info, [:num_classes, InputClassInfo, :list]
      end
      
      class SetDeviceMode < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [1, :uint8],
            :sequence, :uint16,
            :length, :uint32,
            :status, :uint8,
            :pad2, [23, :uint8]
      end
      
      class GetSelectedExtensionEvents < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [1, :uint8],
            :sequence, :uint16,
            :length, :uint32,
            :num_this_classes, :uint16,
            :num_all_classes, :uint16,
            :pad2, [20, :uint8],
            :this_classes, [:num_this_classes, :uint32, :list],
            :all_classes, [:num_all_classes, :uint32, :list]
      end
      
      class GetDeviceDontPropagateList < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [1, :uint8],
            :sequence, :uint16,
            :length, :uint32,
            :num_classes, :uint16,
            :pad2, [22, :uint8],
            :classes, [:num_classes, :uint32, :list]
      end
      
      class GetDeviceMotionEvents < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [1, :uint8],
            :sequence, :uint16,
            :length, :uint32,
            :num_coords, :uint32,
            :num_axes, :uint8,
            :device_mode, :uint8,
            :pad2, [18, :uint8]
      end
      
      class ChangeKeyboardDevice < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [1, :uint8],
            :sequence, :uint16,
            :length, :uint32,
            :status, :uint8,
            :pad2, [23, :uint8]
      end
      
      class ChangePointerDevice < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [1, :uint8],
            :sequence, :uint16,
            :length, :uint32,
            :status, :uint8,
            :pad2, [23, :uint8]
      end
      
      class GrabDevice < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [1, :uint8],
            :sequence, :uint16,
            :length, :uint32,
            :status, :uint8,
            :pad2, [23, :uint8]
      end
      
      class GetDeviceFocus < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [1, :uint8],
            :sequence, :uint16,
            :length, :uint32,
            :focus, :uint32,
            :time, :uint32,
            :revert_to, :uint8,
            :pad2, [15, :uint8]
      end
      
      class GetFeedbackControl < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [1, :uint8],
            :sequence, :uint16,
            :length, :uint32,
            :num_feedback, :uint16,
            :pad2, [22, :uint8]
      end
      
      class GetDeviceKeyMapping < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [1, :uint8],
            :sequence, :uint16,
            :length, :uint32,
            :keysyms_per_keycode, :uint8,
            :pad2, [23, :uint8],
            :keysyms, [:length, :uint32, :list]
      end
      
      class GetDeviceModifierMapping < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [1, :uint8],
            :sequence, :uint16,
            :length, :uint32,
            :keycodes_per_modifier, :uint8,
            :pad2, [23, :uint8],
            :keymaps, [:keycodes_per_modifier, :uint8, :list]
      end
      
      class SetDeviceModifierMapping < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [1, :uint8],
            :sequence, :uint16,
            :length, :uint32,
            :status, :uint8,
            :pad2, [23, :uint8]
      end
      
      class GetDeviceButtonMapping < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [1, :uint8],
            :sequence, :uint16,
            :length, :uint32,
            :map_size, :uint8,
            :pad2, [23, :uint8],
            :map, [:map_size, :uint8, :list]
      end
      
      class SetDeviceButtonMapping < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [1, :uint8],
            :sequence, :uint16,
            :length, :uint32,
            :status, :uint8,
            :pad2, [23, :uint8]
      end
      
      class QueryDeviceState < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [1, :uint8],
            :sequence, :uint16,
            :length, :uint32,
            :num_classes, :uint8,
            :pad2, [23, :uint8]
      end
      
      class SetDeviceValuators < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [1, :uint8],
            :sequence, :uint16,
            :length, :uint32,
            :status, :uint8,
            :pad2, [23, :uint8]
      end
      
      class GetDeviceControl < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [1, :uint8],
            :sequence, :uint16,
            :length, :uint32,
            :status, :uint8,
            :pad2, [23, :uint8]
      end
      
    end
  end
end
