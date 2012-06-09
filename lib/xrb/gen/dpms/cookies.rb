#
# This file was auto-generated. Do not edit.
#

module Xrb
  module DPMS
    module Cookie
      class GetVersion < Xrd::Message
        layout :sequence, :int
      end
      
      class Capable < Xrd::Message
        layout :sequence, :int
      end
      
      class GetTimeouts < Xrd::Message
        layout :sequence, :int
      end
      
      class SetTimeouts < Xrd::Message
        layout :sequence, :int
      end
      
      class Enable < Xrd::Message
        layout :sequence, :int
      end
      
      class Disable < Xrd::Message
        layout :sequence, :int
      end
      
      class ForceLevel < Xrd::Message
        layout :sequence, :int
      end
      
      class Info < Xrd::Message
        layout :sequence, :int
      end
      
    end
  end
end
