#
# This file was auto-generated. Do not edit.
#

module Xrb
  module DRI2
    module Cookie
      class QueryVersion < Xrd::Message
        layout :sequence, :int
      end
      
      class Connect < Xrd::Message
        layout :sequence, :int
      end
      
      class Authenticate < Xrd::Message
        layout :sequence, :int
      end
      
      class CreateDrawable < Xrd::Message
        layout :sequence, :int
      end
      
      class DestroyDrawable < Xrd::Message
        layout :sequence, :int
      end
      
      class GetBuffers < Xrd::Message
        layout :sequence, :int
      end
      
      class CopyRegion < Xrd::Message
        layout :sequence, :int
      end
      
      class GetBuffersWithFormat < Xrd::Message
        layout :sequence, :int
      end
      
      class SwapBuffers < Xrd::Message
        layout :sequence, :int
      end
      
      class GetMsc < Xrd::Message
        layout :sequence, :int
      end
      
      class WaitMsc < Xrd::Message
        layout :sequence, :int
      end
      
      class WaitSbc < Xrd::Message
        layout :sequence, :int
      end
      
      class SwapInterval < Xrd::Message
        layout :sequence, :int
      end
      
    end
  end
end
