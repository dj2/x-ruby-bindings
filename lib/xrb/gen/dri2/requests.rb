#
# This file was auto-generated. Do not edit.
#

module Xrb
  module DRI2
    module Request
      class QueryVersion < Xrb::Message
        include Xrb::Request

        OPCODE = 0

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :major_version, {type: :uint32},
            :minor_version, {type: :uint32}
      end

      class Connect < Xrb::Message
        include Xrb::Request

        OPCODE = 1

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :window, {type: :uint32},
            :driver_type, {type: :uint32}
      end

      class Authenticate < Xrb::Message
        include Xrb::Request

        OPCODE = 2

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :window, {type: :uint32},
            :magic, {type: :uint32}
      end

      class CreateDrawable < Xrb::Message
        include Xrb::Request

        OPCODE = 3

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :drawable, {type: :uint32}
      end

      class DestroyDrawable < Xrb::Message
        include Xrb::Request

        OPCODE = 4

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :drawable, {type: :uint32}
      end

      class GetBuffers < Xrb::Message
        include Xrb::Request

        OPCODE = 5

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :drawable, {type: :uint32},
            :count, {type: :uint32},
            :attachments, {type: :uint32, kind: :list}
      end

      class CopyRegion < Xrb::Message
        include Xrb::Request

        OPCODE = 6

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :drawable, {type: :uint32},
            :region, {type: :uint32},
            :dest, {type: :uint32},
            :src, {type: :uint32}
      end

      class GetBuffersWithFormat < Xrb::Message
        include Xrb::Request

        OPCODE = 7

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :drawable, {type: :uint32},
            :count, {type: :uint32},
            :attachments, {type: AttachFormat, kind: :list}
      end

      class SwapBuffers < Xrb::Message
        include Xrb::Request

        OPCODE = 8

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :drawable, {type: :uint32},
            :target_msc_hi, {type: :uint32},
            :target_msc_lo, {type: :uint32},
            :divisor_hi, {type: :uint32},
            :divisor_lo, {type: :uint32},
            :remainder_hi, {type: :uint32},
            :remainder_lo, {type: :uint32}
      end

      class GetMsc < Xrb::Message
        include Xrb::Request

        OPCODE = 9

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :drawable, {type: :uint32}
      end

      class WaitMsc < Xrb::Message
        include Xrb::Request

        OPCODE = 10

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :drawable, {type: :uint32},
            :target_msc_hi, {type: :uint32},
            :target_msc_lo, {type: :uint32},
            :divisor_hi, {type: :uint32},
            :divisor_lo, {type: :uint32},
            :remainder_hi, {type: :uint32},
            :remainder_lo, {type: :uint32}
      end

      class WaitSbc < Xrb::Message
        include Xrb::Request

        OPCODE = 11

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :drawable, {type: :uint32},
            :target_sbc_hi, {type: :uint32},
            :target_sbc_lo, {type: :uint32}
      end

      class SwapInterval < Xrb::Message
        include Xrb::Request

        OPCODE = 12

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :drawable, {type: :uint32},
            :interval, {type: :uint32}
      end

    end
  end
end
