#
# This file was auto-generated. Do not edit.
#

module Xrb
  module DPMS
    module Cookie
      class GetVersion < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class Capable < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class GetTimeouts < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class SetTimeouts < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class Enable < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class Disable < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class ForceLevel < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class Info < Xrb::Message
        layout :sequence, {type: :int}
      end
      
    end
  end
end
