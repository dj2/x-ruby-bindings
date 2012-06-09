#
# This file was auto-generated. Do not edit.
#

module Xrb
  module Xinerama
    module Cookie
      class QueryVersion < Xrb::Message
        layout :sequence, :int
      end
      
      class GetState < Xrb::Message
        layout :sequence, :int
      end
      
      class GetScreenCount < Xrb::Message
        layout :sequence, :int
      end
      
      class GetScreenSize < Xrb::Message
        layout :sequence, :int
      end
      
      class IsActive < Xrb::Message
        layout :sequence, :int
      end
      
      class QueryScreens < Xrb::Message
        layout :sequence, :int
      end
      
    end
  end
end
