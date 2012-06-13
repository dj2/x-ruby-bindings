#
# This file was auto-generated. Do not edit.
#

module Xrb
  module Input
    module Cookie
      class GetExtensionVersion < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class ListInputDevices < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class OpenDevice < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class CloseDevice < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class SetDeviceMode < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class SelectExtensionEvent < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class GetSelectedExtensionEvents < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class ChangeDeviceDontPropagateList < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class GetDeviceDontPropagateList < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class GetDeviceMotionEvents < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class ChangeKeyboardDevice < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class ChangePointerDevice < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class GrabDevice < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class UngrabDevice < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class GrabDeviceKey < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class UngrabDeviceKey < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class GrabDeviceButton < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class UngrabDeviceButton < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class AllowDeviceEvents < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class GetDeviceFocus < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class SetDeviceFocus < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class GetFeedbackControl < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class GetDeviceKeyMapping < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class ChangeDeviceKeyMapping < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class GetDeviceModifierMapping < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class SetDeviceModifierMapping < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class GetDeviceButtonMapping < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class SetDeviceButtonMapping < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class QueryDeviceState < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class SendExtensionEvent < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class DeviceBell < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class SetDeviceValuators < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class GetDeviceControl < Xrb::Message
        layout :sequence, {type: :int}
      end
      
    end
  end
end
