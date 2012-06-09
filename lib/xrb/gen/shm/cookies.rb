#
# This file was auto-generated. Do not edit.
#

module Xrb
  module Shm
    module Cookie
      class QueryVersion < Xrd::Message
        layout :sequence, :int
      end
      
      class Attach < Xrd::Message
        layout :sequence, :int
      end
      
      class Detach < Xrd::Message
        layout :sequence, :int
      end
      
      class PutImage < Xrd::Message
        layout :sequence, :int
      end
      
      class GetImage < Xrd::Message
        layout :sequence, :int
      end
      
      class CreatePixmap < Xrd::Message
        layout :sequence, :int
      end
      
    end
  end
end
