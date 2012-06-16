#
# This file was auto-generated. Do not edit.
#

module Xrb
  module DPMS
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

      class Capable < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :capable, {type: :bool},
            :pad2, {size: 23, type: :uint8}
      end

      class GetTimeouts < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :standby_timeout, {type: :uint16},
            :suspend_timeout, {type: :uint16},
            :off_timeout, {type: :uint16},
            :pad2, {size: 18, type: :uint8}
      end

      class Info < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :power_level, {type: :uint16},
            :state, {type: :bool},
            :pad2, {size: 21, type: :uint8}
      end

    end
  end
end
