#
# This file was auto-generated. Do not edit.
#

module Xrb
  module Xv
    module Cookie
      class QueryExtension < Xrd::Message
        layout :sequence, :int
      end
      
      class QueryAdaptors < Xrd::Message
        layout :sequence, :int
      end
      
      class QueryEncodings < Xrd::Message
        layout :sequence, :int
      end
      
      class GrabPort < Xrd::Message
        layout :sequence, :int
      end
      
      class UngrabPort < Xrd::Message
        layout :sequence, :int
      end
      
      class PutVideo < Xrd::Message
        layout :sequence, :int
      end
      
      class PutStill < Xrd::Message
        layout :sequence, :int
      end
      
      class GetVideo < Xrd::Message
        layout :sequence, :int
      end
      
      class GetStill < Xrd::Message
        layout :sequence, :int
      end
      
      class StopVideo < Xrd::Message
        layout :sequence, :int
      end
      
      class SelectVideoNotify < Xrd::Message
        layout :sequence, :int
      end
      
      class SelectPortNotify < Xrd::Message
        layout :sequence, :int
      end
      
      class QueryBestSize < Xrd::Message
        layout :sequence, :int
      end
      
      class SetPortAttribute < Xrd::Message
        layout :sequence, :int
      end
      
      class GetPortAttribute < Xrd::Message
        layout :sequence, :int
      end
      
      class QueryPortAttributes < Xrd::Message
        layout :sequence, :int
      end
      
      class ListImageFormats < Xrd::Message
        layout :sequence, :int
      end
      
      class QueryImageAttributes < Xrd::Message
        layout :sequence, :int
      end
      
      class PutImage < Xrd::Message
        layout :sequence, :int
      end
      
      class ShmPutImage < Xrd::Message
        layout :sequence, :int
      end
      
    end
  end
end
