#
# This file was auto-generated. Do not edit.
#

module Xrb
  module ScreenSaver
    module Request
      class QueryVersion < Xrb::Message
        OPCODE = 0
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :server_major_version, :uint16,
            :server_minor_version, :uint16,
            :pad2, [20, :uint8]
      end
      
      class QueryInfo < Xrb::Message
        OPCODE = 1
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :saver_window, :uint32,
            :ms_until_server, :uint32,
            :ms_since_user_input, :uint32,
            :event_mask, :uint32,
            :kind, :uint8,
            :pad1, [7, :uint8]
      end
      
      class SelectInput < Xrb::Message
        OPCODE = 2
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :drawable, :uint32,
            :event_mask, :uint32
      end
      
      class SetAttributes < Xrb::Message
        OPCODE = 3
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :drawable, :uint32,
            :x, :int16,
            :y, :int16,
            :width, :uint16,
            :height, :uint16,
            :border_width, :uint16,
            :class, :uint8,
            :depth, :uint8,
            :visual, :uint32,
            :value_mask, :uint32
      end
      
      class UnsetAttributes < Xrb::Message
        OPCODE = 4
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :drawable, :uint32
      end
      
      class Suspend < Xrb::Message
        OPCODE = 5
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :suspend, :bool,
            :pad1, [3, :uint8]
      end
      
    end
  end
end
