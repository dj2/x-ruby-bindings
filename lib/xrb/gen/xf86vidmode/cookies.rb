#
# This file was auto-generated. Do not edit.
#

module Xrb
  module XF86VidMode
    module Cookie
      class QueryVersion < Xrb::Message
        layout :sequence, :int
      end
      
      class GetModeLine < Xrb::Message
        layout :sequence, :int
      end
      
      class ModModeLine < Xrb::Message
        layout :sequence, :int
      end
      
      class SwitchMode < Xrb::Message
        layout :sequence, :int
      end
      
      class GetMonitor < Xrb::Message
        layout :sequence, :int
      end
      
      class LockModeSwitch < Xrb::Message
        layout :sequence, :int
      end
      
      class GetAllModeLines < Xrb::Message
        layout :sequence, :int
      end
      
      class AddModeLine < Xrb::Message
        layout :sequence, :int
      end
      
      class DeleteModeLine < Xrb::Message
        layout :sequence, :int
      end
      
      class ValidateModeLine < Xrb::Message
        layout :sequence, :int
      end
      
      class SwitchToMode < Xrb::Message
        layout :sequence, :int
      end
      
      class GetViewPort < Xrb::Message
        layout :sequence, :int
      end
      
      class SetViewPort < Xrb::Message
        layout :sequence, :int
      end
      
      class GetDotClocks < Xrb::Message
        layout :sequence, :int
      end
      
      class SetClientVersion < Xrb::Message
        layout :sequence, :int
      end
      
      class SetGamma < Xrb::Message
        layout :sequence, :int
      end
      
      class GetGamma < Xrb::Message
        layout :sequence, :int
      end
      
      class GetGammaRamp < Xrb::Message
        layout :sequence, :int
      end
      
      class SetGammaRamp < Xrb::Message
        layout :sequence, :int
      end
      
      class GetGammaRampSize < Xrb::Message
        layout :sequence, :int
      end
      
      class GetPermissions < Xrb::Message
        layout :sequence, :int
      end
      
    end
  end
end
