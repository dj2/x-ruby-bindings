#
# This file was auto-generated. Do not edit.
#

module Xrb
  module Sync
    module Cookie
      class Initialize < Xrb::Message
        layout :sequence, :int
      end
      
      class ListSystemCounters < Xrb::Message
        layout :sequence, :int
      end
      
      class CreateCounter < Xrb::Message
        layout :sequence, :int
      end
      
      class DestroyCounter < Xrb::Message
        layout :sequence, :int
      end
      
      class QueryCounter < Xrb::Message
        layout :sequence, :int
      end
      
      class Await < Xrb::Message
        layout :sequence, :int
      end
      
      class ChangeCounter < Xrb::Message
        layout :sequence, :int
      end
      
      class SetCounter < Xrb::Message
        layout :sequence, :int
      end
      
      class CreateAlarm < Xrb::Message
        layout :sequence, :int
      end
      
      class ChangeAlarm < Xrb::Message
        layout :sequence, :int
      end
      
      class DestroyAlarm < Xrb::Message
        layout :sequence, :int
      end
      
      class QueryAlarm < Xrb::Message
        layout :sequence, :int
      end
      
      class SetPriority < Xrb::Message
        layout :sequence, :int
      end
      
      class GetPriority < Xrb::Message
        layout :sequence, :int
      end
      
      class CreateFence < Xrb::Message
        layout :sequence, :int
      end
      
      class TriggerFence < Xrb::Message
        layout :sequence, :int
      end
      
      class ResetFence < Xrb::Message
        layout :sequence, :int
      end
      
      class DestroyFence < Xrb::Message
        layout :sequence, :int
      end
      
      class QueryFence < Xrb::Message
        layout :sequence, :int
      end
      
      class AwaitFence < Xrb::Message
        layout :sequence, :int
      end
      
    end
  end
end
