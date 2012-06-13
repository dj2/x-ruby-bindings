#
# This file was auto-generated. Do not edit.
#

module Xrb
  module XCMisc
    module Cookie
      class GetVersion < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class GetXidRange < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class GetXidList < Xrb::Message
        layout :sequence, {type: :int}
      end
      
    end
  end
end
