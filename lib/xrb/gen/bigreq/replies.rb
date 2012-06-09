#
# This file was auto-generated. Do not edit.
#

module Xrb
  module BigRequests
    module Reply
      class Enable < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [:uint8, 1],
            :sequence, :uint16,
            :length, :uint32,
            :maximum_request_length, :uint32
      end
      
    end
  end
end
