#
# This file was auto-generated. Do not edit.
#

module Xrb
  module DPMS
    module Request
      class GetVersion < Xrb::Message
        OPCODE = 0
        
        layout \
            :major_opcode, :uint8
            :minor_opcode, :uint8
            :length, :uint16
            :server_major_version, :uint16
            :server_minor_version, :uint16
      end
      
      class Capable < Xrb::Message
        OPCODE = 1
        
        layout \
            :major_opcode, :uint8
            :minor_opcode, :uint8
            :length, :uint16
            :capable, :bool
            :pad2, [:uint8, 23]
      end
      
      class GetTimeouts < Xrb::Message
        OPCODE = 2
        
        layout \
            :major_opcode, :uint8
            :minor_opcode, :uint8
            :length, :uint16
            :standby_timeout, :uint16
            :suspend_timeout, :uint16
            :off_timeout, :uint16
            :pad2, [:uint8, 18]
      end
      
      class SetTimeouts < Xrb::Message
        OPCODE = 3
        
        layout \
            :major_opcode, :uint8
            :minor_opcode, :uint8
            :length, :uint16
            :standby_timeout, :uint16
            :suspend_timeout, :uint16
            :off_timeout, :uint16
      end
      
      class Enable < Xrb::Message
        OPCODE = 4
        
        layout \
            :major_opcode, :uint8
            :minor_opcode, :uint8
            :length, :uint16
      end
      
      class Disable < Xrb::Message
        OPCODE = 5
        
        layout \
            :major_opcode, :uint8
            :minor_opcode, :uint8
            :length, :uint16
      end
      
      class ForceLevel < Xrb::Message
        OPCODE = 6
        
        layout \
            :major_opcode, :uint8
            :minor_opcode, :uint8
            :length, :uint16
            :power_level, :uint16
      end
      
      class Info < Xrb::Message
        OPCODE = 7
        
        layout \
            :major_opcode, :uint8
            :minor_opcode, :uint8
            :length, :uint16
            :power_level, :uint16
            :state, :bool
            :pad2, [:uint8, 21]
      end
      
    end
  end
end
