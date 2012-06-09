#
# This file was auto-generated. Do not edit.
#

module Xrb
  module DRI2
    module Cookie
      class QueryVersion < Xrb::Message
        layout :sequence, :int
      end
      
      class Connect < Xrb::Message
        layout :sequence, :int
      end
      
      class Authenticate < Xrb::Message
        layout :sequence, :int
      end
      
      class CreateDrawable < Xrb::Message
        layout :sequence, :int
      end
      
      class DestroyDrawable < Xrb::Message
        layout :sequence, :int
      end
      
      class GetBuffers < Xrb::Message
        layout :sequence, :int
      end
      
      class CopyRegion < Xrb::Message
        layout :sequence, :int
      end
      
      class GetBuffersWithFormat < Xrb::Message
        layout :sequence, :int
      end
      
      class SwapBuffers < Xrb::Message
        layout :sequence, :int
      end
      
      class GetMsc < Xrb::Message
        layout :sequence, :int
      end
      
      class WaitMsc < Xrb::Message
        layout :sequence, :int
      end
      
      class WaitSbc < Xrb::Message
        layout :sequence, :int
      end
      
      class SwapInterval < Xrb::Message
        layout :sequence, :int
      end
      
    end
  end
end
