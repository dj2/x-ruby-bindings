#
# This file was auto-generated. Do not edit.
#

module Xrb
  module XPrint
    module Event
      class Notify < Xrb::Message
        OPCODE = 0
        
        layout \
            :response_type, :uint8
            :detail, :uint8
            :context, :uint32
            :cancel, :bool
      end
      
      class AttributNotify < Xrb::Message
        OPCODE = 1
        
        layout \
            :response_type, :uint8
            :detail, :uint8
            :context, :uint32
      end
      
    end
  end
end
