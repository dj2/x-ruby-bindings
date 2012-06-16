#
# This file was auto-generated. Do not edit.
#

module Xrb
  module DRI2
    module Reply
      class QueryVersion < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :major_version, {type: :uint32},
            :minor_version, {type: :uint32}
      end

      class Connect < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :driver_name_length, {type: :uint32},
            :device_name_length, {type: :uint32},
            :pad2, {size: 16, type: :uint8},
            :driver_name, {length_field: :driver_name_length, type: :char, kind: :string},
            :device_name, {length_field: :device_name_length, type: :char, kind: :string}
      end

      class Authenticate < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :authenticated, {type: :uint32}
      end

      class GetBuffers < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :width, {type: :uint32},
            :height, {type: :uint32},
            :count, {type: :uint32},
            :pad2, {size: 12, type: :uint8},
            :buffers, {length_field: :count, type: Dri2buffer, kind: :list}
      end

      class CopyRegion < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32}
      end

      class GetBuffersWithFormat < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :width, {type: :uint32},
            :height, {type: :uint32},
            :count, {type: :uint32},
            :pad2, {size: 12, type: :uint8},
            :buffers, {length_field: :count, type: Dri2buffer, kind: :list}
      end

      class SwapBuffers < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :swap_hi, {type: :uint32},
            :swap_lo, {type: :uint32}
      end

      class GetMsc < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :ust_hi, {type: :uint32},
            :ust_lo, {type: :uint32},
            :msc_hi, {type: :uint32},
            :msc_lo, {type: :uint32},
            :sbc_hi, {type: :uint32},
            :sbc_lo, {type: :uint32}
      end

      class WaitMsc < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :ust_hi, {type: :uint32},
            :ust_lo, {type: :uint32},
            :msc_hi, {type: :uint32},
            :msc_lo, {type: :uint32},
            :sbc_hi, {type: :uint32},
            :sbc_lo, {type: :uint32}
      end

      class WaitSbc < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :ust_hi, {type: :uint32},
            :ust_lo, {type: :uint32},
            :msc_hi, {type: :uint32},
            :msc_lo, {type: :uint32},
            :sbc_hi, {type: :uint32},
            :sbc_lo, {type: :uint32}
      end

    end
  end
end
