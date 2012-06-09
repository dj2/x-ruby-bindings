#
# This file was auto-generated. Do not edit.
#

module Xrb
  module Damage
    module Error
      class BadDamage < Xrb::Message
        OPCODE = 0
        
        layout \
            :response_type, :uint8,
            :error_code, :uint8,
            :sequence, :uint16
      end
      
    end
  end
end
