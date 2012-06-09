#
# This file was auto-generated. Do not edit.
#

module Xrb
  module ScreenSaver
    module Cookie
      class QueryVersion < Xrb::Message
        layout :sequence, :int
      end
      
      class QueryInfo < Xrb::Message
        layout :sequence, :int
      end
      
      class SelectInput < Xrb::Message
        layout :sequence, :int
      end
      
      class SetAttributes < Xrb::Message
        layout :sequence, :int
      end
      
      class UnsetAttributes < Xrb::Message
        layout :sequence, :int
      end
      
      class Suspend < Xrb::Message
        layout :sequence, :int
      end
      
    end
  end
end
