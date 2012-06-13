#
# This file was auto-generated. Do not edit.
#

module Xrb
  module GenericEvent
    module Request
      class QueryVersion < Xrb::Message
        OPCODE = 0
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :major_version, :uint16,
            :minor_version, :uint16,
            :pad2, [:uint8, 20]
      end
      
    end
  end
end
