#
# This file was auto-generated. Do not edit.
#

module Xrb
  module Xevie
    module Reply
      class QueryVersion < Xrb::Message
        layout \
            :response_type, :uint8
            :pad1, [:uint8, 1]
            :sequence, :uint16
            :length, :uint32
            :server_major_version, :uint16
            :server_minor_version, :uint16
            :pad2, [:uint8, 20]
      end
      
      class Start < Xrb::Message
        layout \
            :response_type, :uint8
            :pad1, [:uint8, 1]
            :sequence, :uint16
            :length, :uint32
            :pad2, [:uint8, 24]
      end
      
      class End < Xrb::Message
        layout \
            :response_type, :uint8
            :pad1, [:uint8, 1]
            :sequence, :uint16
            :length, :uint32
            :pad2, [:uint8, 24]
      end
      
      class Send < Xrb::Message
        layout \
            :response_type, :uint8
            :pad1, [:uint8, 1]
            :sequence, :uint16
            :length, :uint32
            :pad2, [:uint8, 24]
      end
      
      class SelectInput < Xrb::Message
        layout \
            :response_type, :uint8
            :pad1, [:uint8, 1]
            :sequence, :uint16
            :length, :uint32
            :pad2, [:uint8, 24]
      end
      
    end
  end
end
