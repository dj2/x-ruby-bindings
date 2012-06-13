#
# This file was auto-generated. Do not edit.
#

module Xrb
  module Shm
    module Cookie
      class QueryVersion < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class Attach < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class Detach < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class PutImage < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class GetImage < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class CreatePixmap < Xrb::Message
        layout :sequence, {type: :int}
      end
      
    end
  end
end
