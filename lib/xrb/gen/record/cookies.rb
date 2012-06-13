#
# This file was auto-generated. Do not edit.
#

module Xrb
  module Record
    module Cookie
      class QueryVersion < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class CreateContext < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class RegisterClients < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class UnregisterClients < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class GetContext < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class EnableContext < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class DisableContext < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class FreeContext < Xrb::Message
        layout :sequence, {type: :int}
      end
      
    end
  end
end
