#
# This file was auto-generated. Do not edit.
#

module Xrb
  module Shm
    module Event
      class Completion < Xrb::Message
        OPCODE = 0
        
        layout \
            :response_type, :uint8,
            :pad1, [1, :uint8],
            :drawable, :uint32,
            :minor_event, :uint16,
            :major_event, :uint8,
            :pad2, [1, :uint8],
            :shmseg, :uint32,
            :offset, :uint32
      end
      
    end
  end
end
