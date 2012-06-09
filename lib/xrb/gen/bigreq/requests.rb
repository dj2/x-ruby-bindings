#
# This file was auto-generated. Do not edit.
#

module Xrb
  module BigRequests
    module Request
      class Enable < Xrb::Message
        OPCODE = 0
        
        layout \
            :major_opcode, :uint8
            :minor_opcode, :uint8
            :length, :uint16
            :maximum_request_length, :uint32
      end
      
    end
  end
end
