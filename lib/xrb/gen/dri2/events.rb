#
# This file was auto-generated. Do not edit.
#

module Xrb
  module DRI2
    module Event
      class BufferSwapComplete < Xrb::Message
        OPCODE = 0
        
        layout \
            :response_type, :uint8,
            :pad1, [:uint8, 1],
            :event_type, :uint16,
            :pad2, [:uint8, 2],
            :drawable, :uint32,
            :ust_hi, :uint32,
            :ust_lo, :uint32,
            :msc_hi, :uint32,
            :msc_lo, :uint32,
            :sbc, :uint32
      end
      
      class InvalidateBuffers < Xrb::Message
        OPCODE = 1
        
        layout \
            :response_type, :uint8,
            :pad1, [:uint8, 1],
            :drawable, :uint32
      end
      
    end
  end
end
