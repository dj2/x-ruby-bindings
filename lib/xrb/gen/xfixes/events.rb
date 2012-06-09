#
# This file was auto-generated. Do not edit.
#

module Xrb
  module XFixes
    module Event
      class SelectionNotify < Xrb::Message
        OPCODE = 0
        
        layout \
            :response_type, :uint8,
            :subtype, :uint8,
            :window, :uint32,
            :owner, :uint32,
            :selection, :uint32,
            :timestamp, :uint32,
            :selection_timestamp, :uint32,
            :pad1, [:uint8, 8]
      end
      
      class CursorNotify < Xrb::Message
        OPCODE = 1
        
        layout \
            :response_type, :uint8,
            :subtype, :uint8,
            :window, :uint32,
            :cursor_serial, :uint32,
            :timestamp, :uint32,
            :name, :uint32,
            :pad1, [:uint8, 12]
      end
      
    end
  end
end
