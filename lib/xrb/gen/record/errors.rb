#
# This file was auto-generated. Do not edit.
#

module Xrb
  module Record
    module Error
      class BadContext < Xrb::Message
        OPCODE = 0
        
        layout \
            :response_type, :uint8
            :error_code, :uint8
            :sequence, :uint16
            :invalid_record, :uint32
      end
      
    end
  end
end
