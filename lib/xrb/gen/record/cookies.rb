#
# This file was auto-generated. Do not edit.
#

module Xrb
  module Record
    module Cookie
      class QueryVersion < Xrd::Message
        layout :sequence, :int
      end
      
      class CreateContext < Xrd::Message
        layout :sequence, :int
      end
      
      class RegisterClients < Xrd::Message
        layout :sequence, :int
      end
      
      class UnregisterClients < Xrd::Message
        layout :sequence, :int
      end
      
      class GetContext < Xrd::Message
        layout :sequence, :int
      end
      
      class EnableContext < Xrd::Message
        layout :sequence, :int
      end
      
      class DisableContext < Xrd::Message
        layout :sequence, :int
      end
      
      class FreeContext < Xrd::Message
        layout :sequence, :int
      end
      
    end
  end
end
