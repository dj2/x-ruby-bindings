#
# This file was auto-generated. Do not edit.
#

module Xrb
  module GenericEvent
    module Reply
      class QueryVersion < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [:uint8, 1],
            :sequence, :uint16,
            :length, :uint32,
            :major_version, :uint16,
            :minor_version, :uint16,
            :pad2, [:uint8, 20]
      end
      
    end
  end
end
