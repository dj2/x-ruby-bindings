#
# This file was auto-generated. Do not edit.
#

module Xrb
  module Composite
    module Cookie
      class QueryVersion < Xrd::Message
        layout :sequence, :int
      end
      
      class RedirectWindow < Xrd::Message
        layout :sequence, :int
      end
      
      class RedirectSubwindows < Xrd::Message
        layout :sequence, :int
      end
      
      class UnredirectWindow < Xrd::Message
        layout :sequence, :int
      end
      
      class UnredirectSubwindows < Xrd::Message
        layout :sequence, :int
      end
      
      class CreateRegionFromBorderClip < Xrd::Message
        layout :sequence, :int
      end
      
      class NameWindowPixmap < Xrd::Message
        layout :sequence, :int
      end
      
      class GetOverlayWindow < Xrd::Message
        layout :sequence, :int
      end
      
      class ReleaseOverlayWindow < Xrd::Message
        layout :sequence, :int
      end
      
    end
  end
end
