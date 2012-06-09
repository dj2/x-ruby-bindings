#
# This file was auto-generated. Do not edit.
#

module Xrb
  module XF86Dri
    module Cookie
      class QueryVersion < Xrd::Message
        layout :sequence, :int
      end
      
      class QueryDirectRenderingCapable < Xrd::Message
        layout :sequence, :int
      end
      
      class OpenConnection < Xrd::Message
        layout :sequence, :int
      end
      
      class CloseConnection < Xrd::Message
        layout :sequence, :int
      end
      
      class GetClientDriverName < Xrd::Message
        layout :sequence, :int
      end
      
      class CreateContext < Xrd::Message
        layout :sequence, :int
      end
      
      class DestroyContext < Xrd::Message
        layout :sequence, :int
      end
      
      class CreateDrawable < Xrd::Message
        layout :sequence, :int
      end
      
      class DestroyDrawable < Xrd::Message
        layout :sequence, :int
      end
      
      class GetDrawableInfo < Xrd::Message
        layout :sequence, :int
      end
      
      class GetDeviceInfo < Xrd::Message
        layout :sequence, :int
      end
      
      class AuthConnection < Xrd::Message
        layout :sequence, :int
      end
      
    end
  end
end
