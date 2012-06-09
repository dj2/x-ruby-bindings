#
# This file was auto-generated. Do not edit.
#

module Xrb
  module DPMS
    module Reply
      class GetVersion < Xrb::Message
        layout \
            :response_type, :uint8
            :pad1, [:uint8, 1]
            :sequence, :uint16
            :length, :uint32
            :server_major_version, :uint16
            :server_minor_version, :uint16
      end
      
      class Capable < Xrb::Message
        layout \
            :response_type, :uint8
            :pad1, [:uint8, 1]
            :sequence, :uint16
            :length, :uint32
            :capable, :bool
            :pad2, [:uint8, 23]
      end
      
      class GetTimeouts < Xrb::Message
        layout \
            :response_type, :uint8
            :pad1, [:uint8, 1]
            :sequence, :uint16
            :length, :uint32
            :standby_timeout, :uint16
            :suspend_timeout, :uint16
            :off_timeout, :uint16
            :pad2, [:uint8, 18]
      end
      
      class Info < Xrb::Message
        layout \
            :response_type, :uint8
            :pad1, [:uint8, 1]
            :sequence, :uint16
            :length, :uint32
            :power_level, :uint16
            :state, :bool
            :pad2, [:uint8, 21]
      end
      
    end
  end
end
