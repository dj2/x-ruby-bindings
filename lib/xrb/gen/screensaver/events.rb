#
# This file was auto-generated. Do not edit.
#

module Xrb
  module ScreenSaver
    module Event
      class Notify < Xrb::Message
        OPCODE = 0
        
        layout \
            :response_type, :uint8,
            :code, :uint8,
            :state, :uint8,
            :pad1, [:uint8, 1],
            :sequence_number, :uint16,
            :time, :uint32,
            :root, :uint32,
            :window, :uint32,
            :kind, :uint8,
            :forced, :bool,
            :pad2, [:uint8, 14]
      end
      
    end
  end
end
