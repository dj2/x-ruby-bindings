#
# This file was auto-generated. Do not edit.
#

module Xrb
  module ScreenSaver
    module Cookie
      class QueryVersion < Xrd::Message
        layout :sequence, :int
      end
      
      class QueryInfo < Xrd::Message
        layout :sequence, :int
      end
      
      class SelectInput < Xrd::Message
        layout :sequence, :int
      end
      
      class SetAttributes < Xrd::Message
        layout :sequence, :int
      end
      
      class UnsetAttributes < Xrd::Message
        layout :sequence, :int
      end
      
      class Suspend < Xrd::Message
        layout :sequence, :int
      end
      
    end
  end
end
