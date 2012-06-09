#
# This file was auto-generated. Do not edit.
#

module Xrb
  module Xv
    module Cookie
      class QueryExtension < Xrb::Message
        layout :sequence, :int
      end
      
      class QueryAdaptors < Xrb::Message
        layout :sequence, :int
      end
      
      class QueryEncodings < Xrb::Message
        layout :sequence, :int
      end
      
      class GrabPort < Xrb::Message
        layout :sequence, :int
      end
      
      class UngrabPort < Xrb::Message
        layout :sequence, :int
      end
      
      class PutVideo < Xrb::Message
        layout :sequence, :int
      end
      
      class PutStill < Xrb::Message
        layout :sequence, :int
      end
      
      class GetVideo < Xrb::Message
        layout :sequence, :int
      end
      
      class GetStill < Xrb::Message
        layout :sequence, :int
      end
      
      class StopVideo < Xrb::Message
        layout :sequence, :int
      end
      
      class SelectVideoNotify < Xrb::Message
        layout :sequence, :int
      end
      
      class SelectPortNotify < Xrb::Message
        layout :sequence, :int
      end
      
      class QueryBestSize < Xrb::Message
        layout :sequence, :int
      end
      
      class SetPortAttribute < Xrb::Message
        layout :sequence, :int
      end
      
      class GetPortAttribute < Xrb::Message
        layout :sequence, :int
      end
      
      class QueryPortAttributes < Xrb::Message
        layout :sequence, :int
      end
      
      class ListImageFormats < Xrb::Message
        layout :sequence, :int
      end
      
      class QueryImageAttributes < Xrb::Message
        layout :sequence, :int
      end
      
      class PutImage < Xrb::Message
        layout :sequence, :int
      end
      
      class ShmPutImage < Xrb::Message
        layout :sequence, :int
      end
      
    end
  end
end
