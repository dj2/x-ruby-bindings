#
# This file was auto-generated. Do not edit.
#

module Xrb
  module Composite
    module Cookie
      class QueryVersion < Xrb::Message
        layout :sequence, :int
      end
      
      class RedirectWindow < Xrb::Message
        layout :sequence, :int
      end
      
      class RedirectSubwindows < Xrb::Message
        layout :sequence, :int
      end
      
      class UnredirectWindow < Xrb::Message
        layout :sequence, :int
      end
      
      class UnredirectSubwindows < Xrb::Message
        layout :sequence, :int
      end
      
      class CreateRegionFromBorderClip < Xrb::Message
        layout :sequence, :int
      end
      
      class NameWindowPixmap < Xrb::Message
        layout :sequence, :int
      end
      
      class GetOverlayWindow < Xrb::Message
        layout :sequence, :int
      end
      
      class ReleaseOverlayWindow < Xrb::Message
        layout :sequence, :int
      end
      
    end
  end
end
