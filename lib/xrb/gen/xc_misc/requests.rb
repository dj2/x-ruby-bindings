#
# This file was auto-generated. Do not edit.
#

module Xrb
  module XCMisc
    module Request
      class GetVersion < Xrb::Message
        include Xrb::Request
        
        OPCODE = 0
        
        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :server_major_version, {type: :uint16},
            :server_minor_version, {type: :uint16}
      end
      
      class GetXidRange < Xrb::Message
        include Xrb::Request
        
        OPCODE = 1
        
        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :start_id, {type: :uint32},
            :count, {type: :uint32}
      end
      
      class GetXidList < Xrb::Message
        include Xrb::Request
        
        OPCODE = 2
        
        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :ids_len, {type: :uint32},
            :pad2, {size: 20, type: :uint8},
            :ids, {length_field: :ids_len, type: :uint32, kind: :list}
      end
      
    end
  end
end
