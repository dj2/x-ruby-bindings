#
# This file was auto-generated. Do not edit.
#

module Xrb
  module Input
    module Cookie
      class GetExtensionVersion < Xrd::Message
        layout :sequence, :int
      end
      
      class ListInputDevices < Xrd::Message
        layout :sequence, :int
      end
      
      class OpenDevice < Xrd::Message
        layout :sequence, :int
      end
      
      class CloseDevice < Xrd::Message
        layout :sequence, :int
      end
      
      class SetDeviceMode < Xrd::Message
        layout :sequence, :int
      end
      
      class SelectExtensionEvent < Xrd::Message
        layout :sequence, :int
      end
      
      class GetSelectedExtensionEvents < Xrd::Message
        layout :sequence, :int
      end
      
      class ChangeDeviceDontPropagateList < Xrd::Message
        layout :sequence, :int
      end
      
      class GetDeviceDontPropagateList < Xrd::Message
        layout :sequence, :int
      end
      
      class GetDeviceMotionEvents < Xrd::Message
        layout :sequence, :int
      end
      
      class ChangeKeyboardDevice < Xrd::Message
        layout :sequence, :int
      end
      
      class ChangePointerDevice < Xrd::Message
        layout :sequence, :int
      end
      
      class GrabDevice < Xrd::Message
        layout :sequence, :int
      end
      
      class UngrabDevice < Xrd::Message
        layout :sequence, :int
      end
      
      class GrabDeviceKey < Xrd::Message
        layout :sequence, :int
      end
      
      class UngrabDeviceKey < Xrd::Message
        layout :sequence, :int
      end
      
      class GrabDeviceButton < Xrd::Message
        layout :sequence, :int
      end
      
      class UngrabDeviceButton < Xrd::Message
        layout :sequence, :int
      end
      
      class AllowDeviceEvents < Xrd::Message
        layout :sequence, :int
      end
      
      class GetDeviceFocus < Xrd::Message
        layout :sequence, :int
      end
      
      class SetDeviceFocus < Xrd::Message
        layout :sequence, :int
      end
      
      class GetFeedbackControl < Xrd::Message
        layout :sequence, :int
      end
      
      class GetDeviceKeyMapping < Xrd::Message
        layout :sequence, :int
      end
      
      class ChangeDeviceKeyMapping < Xrd::Message
        layout :sequence, :int
      end
      
      class GetDeviceModifierMapping < Xrd::Message
        layout :sequence, :int
      end
      
      class SetDeviceModifierMapping < Xrd::Message
        layout :sequence, :int
      end
      
      class GetDeviceButtonMapping < Xrd::Message
        layout :sequence, :int
      end
      
      class SetDeviceButtonMapping < Xrd::Message
        layout :sequence, :int
      end
      
      class QueryDeviceState < Xrd::Message
        layout :sequence, :int
      end
      
      class SendExtensionEvent < Xrd::Message
        layout :sequence, :int
      end
      
      class DeviceBell < Xrd::Message
        layout :sequence, :int
      end
      
      class SetDeviceValuators < Xrd::Message
        layout :sequence, :int
      end
      
      class GetDeviceControl < Xrd::Message
        layout :sequence, :int
      end
      
    end
  end
end
