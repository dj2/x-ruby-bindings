#
# This file was auto-generated. Do not edit.
#

module Xrb
  module Composite
    module Reply
      class QueryVersion < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [1, :uint8],
            :sequence, :uint16,
            :length, :uint32,
            :major_version, :uint32,
            :minor_version, :uint32,
            :pad2, [16, :uint8]
      end
      
      class GetOverlayWindow < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [1, :uint8],
            :sequence, :uint16,
            :length, :uint32,
            :overlay_win, :uint32,
            :pad2, [20, :uint8]
      end
      
    end
  end
end
