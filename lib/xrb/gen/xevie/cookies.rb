#
# This file was auto-generated. Do not edit.
#

module Xrb
  module Xevie
    module Cookie
      class QueryVersion < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class Start < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class End < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class Send < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class SelectInput < Xrb::Message
        layout :sequence, {type: :int}
      end
      
    end
  end
end
