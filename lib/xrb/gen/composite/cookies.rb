#
# This file was auto-generated. Do not edit.
#

module Xrb
  module Composite
    module Cookie
      class QueryVersion < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class RedirectWindow < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class RedirectSubwindows < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class UnredirectWindow < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class UnredirectSubwindows < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class CreateRegionFromBorderClip < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class NameWindowPixmap < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class GetOverlayWindow < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class ReleaseOverlayWindow < Xrb::Message
        layout :sequence, {type: :int}
      end
      
    end
  end
end
