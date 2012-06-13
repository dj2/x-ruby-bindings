#
# This file was auto-generated. Do not edit.
#

module Xrb
  module Damage
    module Event
      class Notify < Xrb::Message
        OPCODE = 0
        
        layout \
            :response_type, {type: :uint8},
            :level, {type: :uint8},
            :drawable, {type: :uint32},
            :damage, {type: :uint32},
            :timestamp, {type: :uint32},
            :area, {type: :RECTANGLE},
            :geometry, {type: :RECTANGLE}
      end
      
      @op_map = {
        0 => Notify
      }
      def self.find(opcode)
        @op_map[opcode]
      end
    end
  end
end
