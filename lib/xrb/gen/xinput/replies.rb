#
# This file was auto-generated. Do not edit.
#

module Xrb
  module Input
    module Reply
      class GetExtensionVersion < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :server_major, {type: :uint16},
            :server_minor, {type: :uint16},
            :present, {type: :bool},
            :pad2, {size: 19, type: :uint8}
      end

      class ListInputDevices < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :devices_len, {type: :uint8},
            :pad2, {size: 23, type: :uint8},
            :devices, {length_field: :devices_len, type: DeviceInfo, kind: :list}
      end

      class OpenDevice < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :num_classes, {type: :uint8},
            :pad2, {size: 23, type: :uint8},
            :class_info, {length_field: :num_classes, type: InputClassInfo, kind: :list}
      end

      class SetDeviceMode < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :status, {type: :uint8},
            :pad2, {size: 23, type: :uint8}
      end

      class GetSelectedExtensionEvents < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :num_this_classes, {type: :uint16},
            :num_all_classes, {type: :uint16},
            :pad2, {size: 20, type: :uint8},
            :this_classes, {length_field: :num_this_classes, type: :uint32, kind: :list},
            :all_classes, {length_field: :num_all_classes, type: :uint32, kind: :list}
      end

      class GetDeviceDontPropagateList < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :num_classes, {type: :uint16},
            :pad2, {size: 22, type: :uint8},
            :classes, {length_field: :num_classes, type: :uint32, kind: :list}
      end

      class GetDeviceMotionEvents < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :num_coords, {type: :uint32},
            :num_axes, {type: :uint8},
            :device_mode, {type: :uint8},
            :pad2, {size: 18, type: :uint8}
      end

      class ChangeKeyboardDevice < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :status, {type: :uint8},
            :pad2, {size: 23, type: :uint8}
      end

      class ChangePointerDevice < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :status, {type: :uint8},
            :pad2, {size: 23, type: :uint8}
      end

      class GrabDevice < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :status, {type: :uint8},
            :pad2, {size: 23, type: :uint8}
      end

      class GetDeviceFocus < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :focus, {type: :uint32},
            :time, {type: :uint32},
            :revert_to, {type: :uint8},
            :pad2, {size: 15, type: :uint8}
      end

      class GetFeedbackControl < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :num_feedback, {type: :uint16},
            :pad2, {size: 22, type: :uint8}
      end

      class GetDeviceKeyMapping < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :keysyms_per_keycode, {type: :uint8},
            :pad2, {size: 23, type: :uint8},
            :keysyms, {length_field: :length, type: :uint32, kind: :list}
      end

      class GetDeviceModifierMapping < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :keycodes_per_modifier, {type: :uint8},
            :pad2, {size: 23, type: :uint8}
      end

      class SetDeviceModifierMapping < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :status, {type: :uint8},
            :pad2, {size: 23, type: :uint8}
      end

      class GetDeviceButtonMapping < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :map_size, {type: :uint8},
            :pad2, {size: 23, type: :uint8},
            :map, {length_field: :map_size, type: :uint8, kind: :list}
      end

      class SetDeviceButtonMapping < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :status, {type: :uint8},
            :pad2, {size: 23, type: :uint8}
      end

      class QueryDeviceState < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :num_classes, {type: :uint8},
            :pad2, {size: 23, type: :uint8}
      end

      class SetDeviceValuators < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :status, {type: :uint8},
            :pad2, {size: 23, type: :uint8}
      end

      class GetDeviceControl < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :status, {type: :uint8},
            :pad2, {size: 23, type: :uint8}
      end

    end
  end
end
