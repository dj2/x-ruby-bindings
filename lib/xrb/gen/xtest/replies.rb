#
# This file was auto-generated. Do not edit.
#

module Xrb
  module Test
    module Reply
      class GetVersion < Xrb::Message
        layout \
            :response_type, :uint8
            :major_version, :uint8
            :sequence, :uint16
            :length, :uint32
            :minor_version, :uint16
      end
      
      class CompareCursor < Xrb::Message
        layout \
            :response_type, :uint8
            :same, :bool
            :sequence, :uint16
            :length, :uint32
      end
      
    end
  end
end
