#
# This file was auto-generated. Do not edit.
#

module Xrb
  module XF86Dri
    module Cookie
      class QueryVersion < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class QueryDirectRenderingCapable < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class OpenConnection < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class CloseConnection < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class GetClientDriverName < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class CreateContext < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class DestroyContext < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class CreateDrawable < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class DestroyDrawable < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class GetDrawableInfo < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class GetDeviceInfo < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class AuthConnection < Xrb::Message
        layout :sequence, {type: :int}
      end
      
    end
  end
end
