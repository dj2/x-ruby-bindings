#
# This file was auto-generated. Do not edit.
#

module Xrb
  module Damage
    module Event
      class Notify < Xrb::Message
        OPCODE = 0
        
        layout \
            :response_type, :uint8
            :level, :uint8
            :drawable, :uint32
            :damage, :uint32
            :timestamp, :uint32
            :area, :RECTANGLE
            :geometry, :RECTANGLE
      end
      
    end
  end
end
