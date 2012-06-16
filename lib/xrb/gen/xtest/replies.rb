#
# This file was auto-generated. Do not edit.
#

module Xrb
  module Test
    module Reply
      class GetVersion < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :major_version, {type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :minor_version, {type: :uint16}
      end

      class CompareCursor < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :same, {type: :bool},
            :sequence, {type: :uint16},
            :length, {type: :uint32}
      end

    end
  end
end
