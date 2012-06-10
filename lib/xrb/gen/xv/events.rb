#
# This file was auto-generated. Do not edit.
#

module Xrb
  module Xv
    module Event
      class VideoNotify < Xrb::Message
        OPCODE = 0
        
        layout \
            :response_type, :uint8,
            :reason, :uint8,
            :time, :uint32,
            :drawable, :uint32,
            :port, :uint32
      end
      
      class PortNotify < Xrb::Message
        OPCODE = 1
        
        layout \
            :response_type, :uint8,
            :pad1, [1, :uint8],
            :time, :uint32,
            :port, :uint32,
            :attribute, :uint32,
            :value, :int32
      end
      
    end
  end
end
