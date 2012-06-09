#
# This file was auto-generated. Do not edit.
#

module Xrb
  module Damage
    module Cookie
      class QueryVersion < Xrd::Message
        layout :sequence, :int
      end
      
      class Create < Xrd::Message
        layout :sequence, :int
      end
      
      class Destroy < Xrd::Message
        layout :sequence, :int
      end
      
      class Subtract < Xrd::Message
        layout :sequence, :int
      end
      
      class Add < Xrd::Message
        layout :sequence, :int
      end
      
    end
  end
end
