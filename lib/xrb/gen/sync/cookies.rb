#
# This file was auto-generated. Do not edit.
#

module Xrb
  module Sync
    module Cookie
      class Initialize < Xrd::Message
        layout :sequence, :int
      end
      
      class ListSystemCounters < Xrd::Message
        layout :sequence, :int
      end
      
      class CreateCounter < Xrd::Message
        layout :sequence, :int
      end
      
      class DestroyCounter < Xrd::Message
        layout :sequence, :int
      end
      
      class QueryCounter < Xrd::Message
        layout :sequence, :int
      end
      
      class Await < Xrd::Message
        layout :sequence, :int
      end
      
      class ChangeCounter < Xrd::Message
        layout :sequence, :int
      end
      
      class SetCounter < Xrd::Message
        layout :sequence, :int
      end
      
      class CreateAlarm < Xrd::Message
        layout :sequence, :int
      end
      
      class ChangeAlarm < Xrd::Message
        layout :sequence, :int
      end
      
      class DestroyAlarm < Xrd::Message
        layout :sequence, :int
      end
      
      class QueryAlarm < Xrd::Message
        layout :sequence, :int
      end
      
      class SetPriority < Xrd::Message
        layout :sequence, :int
      end
      
      class GetPriority < Xrd::Message
        layout :sequence, :int
      end
      
      class CreateFence < Xrd::Message
        layout :sequence, :int
      end
      
      class TriggerFence < Xrd::Message
        layout :sequence, :int
      end
      
      class ResetFence < Xrd::Message
        layout :sequence, :int
      end
      
      class DestroyFence < Xrd::Message
        layout :sequence, :int
      end
      
      class QueryFence < Xrd::Message
        layout :sequence, :int
      end
      
      class AwaitFence < Xrd::Message
        layout :sequence, :int
      end
      
    end
  end
end
