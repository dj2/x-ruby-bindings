#
# This file was auto-generated. Do not edit.
#

module Xrb
  module BigRequests
    module Reply
      class Enable < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :maximum_request_length, {type: :uint32}
      end
      
    end
  end
end
