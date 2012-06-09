#
# This file was auto-generated. Do not edit.
#

module Xrb
  module Input
    module Reply
      class GetExtensionVersion < Xrb::Message
        layout \
            :response_type, :uint8
            :pad1, [:uint8, 1]
            :sequence, :uint16
            :length, :uint32
            :server_major, :uint16
            :server_minor, :uint16
            :present, :bool
            :pad2, [:uint8, 19]
      end
      
      class ListInputDevices < Xrb::Message
        layout \
            :response_type, :uint8
            :pad1, [:uint8, 1]
            :sequence, :uint16
            :length, :uint32
            :devices_len, :uint8
            :pad2, [:uint8, 23]
      end
      
      class OpenDevice < Xrb::Message
        layout \
            :response_type, :uint8
            :pad1, [:uint8, 1]
            :sequence, :uint16
            :length, :uint32
            :num_classes, :uint8
            :pad2, [:uint8, 23]
      end
      
      class SetDeviceMode < Xrb::Message
        layout \
            :response_type, :uint8
            :pad1, [:uint8, 1]
            :sequence, :uint16
            :length, :uint32
            :status, :uint8
            :pad2, [:uint8, 23]
      end
      
      class GetSelectedExtensionEvents < Xrb::Message
        layout \
            :response_type, :uint8
            :pad1, [:uint8, 1]
            :sequence, :uint16
            :length, :uint32
            :num_this_classes, :uint16
            :num_all_classes, :uint16
            :pad2, [:uint8, 20]
      end
      
      class GetDeviceDontPropagateList < Xrb::Message
        layout \
            :response_type, :uint8
            :pad1, [:uint8, 1]
            :sequence, :uint16
            :length, :uint32
            :num_classes, :uint16
            :pad2, [:uint8, 22]
      end
      
      class GetDeviceMotionEvents < Xrb::Message
        layout \
            :response_type, :uint8
            :pad1, [:uint8, 1]
            :sequence, :uint16
            :length, :uint32
            :num_coords, :uint32
            :num_axes, :uint8
            :device_mode, :uint8
            :pad2, [:uint8, 18]
      end
      
      class ChangeKeyboardDevice < Xrb::Message
        layout \
            :response_type, :uint8
            :pad1, [:uint8, 1]
            :sequence, :uint16
            :length, :uint32
            :status, :uint8
            :pad2, [:uint8, 23]
      end
      
      class ChangePointerDevice < Xrb::Message
        layout \
            :response_type, :uint8
            :pad1, [:uint8, 1]
            :sequence, :uint16
            :length, :uint32
            :status, :uint8
            :pad2, [:uint8, 23]
      end
      
      class GrabDevice < Xrb::Message
        layout \
            :response_type, :uint8
            :pad1, [:uint8, 1]
            :sequence, :uint16
            :length, :uint32
            :status, :uint8
            :pad2, [:uint8, 23]
      end
      
      class GetDeviceFocus < Xrb::Message
        layout \
            :response_type, :uint8
            :pad1, [:uint8, 1]
            :sequence, :uint16
            :length, :uint32
            :focus, :uint32
            :time, :uint32
            :revert_to, :uint8
            :pad2, [:uint8, 15]
      end
      
      class GetFeedbackControl < Xrb::Message
        layout \
            :response_type, :uint8
            :pad1, [:uint8, 1]
            :sequence, :uint16
            :length, :uint32
            :num_feedback, :uint16
            :pad2, [:uint8, 22]
      end
      
      class GetDeviceKeyMapping < Xrb::Message
        layout \
            :response_type, :uint8
            :pad1, [:uint8, 1]
            :sequence, :uint16
            :length, :uint32
            :keysyms_per_keycode, :uint8
            :pad2, [:uint8, 23]
      end
      
      class GetDeviceModifierMapping < Xrb::Message
        layout \
            :response_type, :uint8
            :pad1, [:uint8, 1]
            :sequence, :uint16
            :length, :uint32
            :keycodes_per_modifier, :uint8
            :pad2, [:uint8, 23]
      end
      
      class SetDeviceModifierMapping < Xrb::Message
        layout \
            :response_type, :uint8
            :pad1, [:uint8, 1]
            :sequence, :uint16
            :length, :uint32
            :status, :uint8
            :pad2, [:uint8, 23]
      end
      
      class GetDeviceButtonMapping < Xrb::Message
        layout \
            :response_type, :uint8
            :pad1, [:uint8, 1]
            :sequence, :uint16
            :length, :uint32
            :map_size, :uint8
            :pad2, [:uint8, 23]
      end
      
      class SetDeviceButtonMapping < Xrb::Message
        layout \
            :response_type, :uint8
            :pad1, [:uint8, 1]
            :sequence, :uint16
            :length, :uint32
            :status, :uint8
            :pad2, [:uint8, 23]
      end
      
      class QueryDeviceState < Xrb::Message
        layout \
            :response_type, :uint8
            :pad1, [:uint8, 1]
            :sequence, :uint16
            :length, :uint32
            :num_classes, :uint8
            :pad2, [:uint8, 23]
      end
      
      class SetDeviceValuators < Xrb::Message
        layout \
            :response_type, :uint8
            :pad1, [:uint8, 1]
            :sequence, :uint16
            :length, :uint32
            :status, :uint8
            :pad2, [:uint8, 23]
      end
      
      class GetDeviceControl < Xrb::Message
        layout \
            :response_type, :uint8
            :pad1, [:uint8, 1]
            :sequence, :uint16
            :length, :uint32
            :status, :uint8
            :pad2, [:uint8, 23]
      end
      
    end
  end
end
