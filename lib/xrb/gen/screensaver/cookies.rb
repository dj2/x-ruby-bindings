#
# This file was auto-generated. Do not edit.
#

module Xrb
  module ScreenSaver
    module Cookie
      class QueryVersion < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class QueryInfo < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class SelectInput < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class SetAttributes < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class UnsetAttributes < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class Suspend < Xrb::Message
        layout :sequence, {type: :int}
      end
      
    end
  end
end
