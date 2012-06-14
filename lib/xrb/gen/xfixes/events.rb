#
# This file was auto-generated. Do not edit.
#

module Xrb
  module XFixes
    module Event
      class SelectionNotify < Xrb::Message
        OPCODE = 0
        
        layout \
            :response_type, {type: :uint8},
            :subtype, {type: :uint8},
            :sequence, {type: :uint16},
            :window, {type: :uint32},
            :owner, {type: :uint32},
            :selection, {type: :uint32},
            :timestamp, {type: :uint32},
            :selection_timestamp, {type: :uint32},
            :pad1, {size: 8, type: :uint8}
      end
      
      class CursorNotify < Xrb::Message
        OPCODE = 1
        
        layout \
            :response_type, {type: :uint8},
            :subtype, {type: :uint8},
            :sequence, {type: :uint16},
            :window, {type: :uint32},
            :cursor_serial, {type: :uint32},
            :timestamp, {type: :uint32},
            :name, {type: :uint32},
            :pad1, {size: 12, type: :uint8}
      end
      
      @op_map = {
        0 => SelectionNotify,
1 => CursorNotify
      }
      def self.find(opcode)
        @op_map[opcode]
      end
    end
  end
end
