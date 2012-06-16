#
# This file was auto-generated. Do not edit.
#

module Xrb
  module XCMisc
    module Reply
      class GetVersion < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :server_major_version, {type: :uint16},
            :server_minor_version, {type: :uint16}
      end

      class GetXidRange < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :start_id, {type: :uint32},
            :count, {type: :uint32}
      end

      class GetXidList < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :ids_len, {type: :uint32},
            :pad2, {size: 20, type: :uint8},
            :ids, {length_field: :ids_len, type: :uint32, kind: :list}
      end

    end
  end
end
