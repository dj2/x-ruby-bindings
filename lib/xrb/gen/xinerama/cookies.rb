#
# This file was auto-generated. Do not edit.
#

module Xrb
  module Xinerama
    module Cookie
      class QueryVersion < Xrd::Message
        layout :sequence, :int
      end
      
      class GetState < Xrd::Message
        layout :sequence, :int
      end
      
      class GetScreenCount < Xrd::Message
        layout :sequence, :int
      end
      
      class GetScreenSize < Xrd::Message
        layout :sequence, :int
      end
      
      class IsActive < Xrd::Message
        layout :sequence, :int
      end
      
      class QueryScreens < Xrd::Message
        layout :sequence, :int
      end
      
    end
  end
end
