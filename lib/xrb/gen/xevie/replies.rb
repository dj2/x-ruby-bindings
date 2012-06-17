#
# This file was auto-generated. Do not edit.
#

module Xrb
  module Xevie
    module Reply
      class QueryVersion < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :server_major_version, {type: :uint16},
            :server_minor_version, {type: :uint16},
            :pad2, {size: 20, type: :uint8}
      end

      class Start < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :pad2, {size: 24, type: :uint8}
      end

      class End < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :pad2, {size: 24, type: :uint8}
      end

      class Send < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :pad2, {size: 24, type: :uint8}
      end

      class SelectInput < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :pad2, {size: 24, type: :uint8}
      end

    end
  end
end
