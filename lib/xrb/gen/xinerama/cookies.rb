#
# This file was auto-generated. Do not edit.
#

module Xrb
  module Xinerama
    module Cookie
      class QueryVersion < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class GetState < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class GetScreenCount < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class GetScreenSize < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class IsActive < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class QueryScreens < Xrb::Message
        layout :sequence, {type: :int}
      end
      
    end
  end
end
