#
# This file was auto-generated. Do not edit.
#

module Xrb
  module Damage
    module Cookie
      class QueryVersion < Xrb::Message
        layout :sequence, :int
      end
      
      class Create < Xrb::Message
        layout :sequence, :int
      end
      
      class Destroy < Xrb::Message
        layout :sequence, :int
      end
      
      class Subtract < Xrb::Message
        layout :sequence, :int
      end
      
      class Add < Xrb::Message
        layout :sequence, :int
      end
      
    end
  end
end
