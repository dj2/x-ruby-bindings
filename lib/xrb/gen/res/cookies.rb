#
# This file was auto-generated. Do not edit.
#

module Xrb
  module Res
    module Cookie
      class QueryVersion < Xrb::Message
        layout :sequence, :int
      end
      
      class QueryClients < Xrb::Message
        layout :sequence, :int
      end
      
      class QueryClientResources < Xrb::Message
        layout :sequence, :int
      end
      
      class QueryClientPixmapBytes < Xrb::Message
        layout :sequence, :int
      end
      
    end
  end
end
