#
# This file was auto-generated. Do not edit.
#

module Xrb
  module Shm
    module Request
      class QueryVersion < Xrb::Message
        include Xrb::Request

        OPCODE = 0

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :major_version, {type: :uint16},
            :minor_version, {type: :uint16},
            :uid, {type: :uint16},
            :gid, {type: :uint16},
            :pixmap_format, {type: :uint8},
            :pad1, {size: 15, type: :uint8}
      end

      class Attach < Xrb::Message
        include Xrb::Request

        OPCODE = 1

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :shmseg, {type: :uint32},
            :shmid, {type: :uint32},
            :read_only, {type: :bool},
            :pad1, {size: 3, type: :uint8}
      end

      class Detach < Xrb::Message
        include Xrb::Request

        OPCODE = 2

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :shmseg, {type: :uint32}
      end

      class PutImage < Xrb::Message
        include Xrb::Request

        OPCODE = 3

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :drawable, {type: :uint32},
            :gc, {type: :uint32},
            :total_width, {type: :uint16},
            :total_height, {type: :uint16},
            :src_x, {type: :uint16},
            :src_y, {type: :uint16},
            :src_width, {type: :uint16},
            :src_height, {type: :uint16},
            :dst_x, {type: :int16},
            :dst_y, {type: :int16},
            :depth, {type: :uint8},
            :format, {type: :uint8},
            :send_event, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :shmseg, {type: :uint32},
            :offset, {type: :uint32}
      end

      class GetImage < Xrb::Message
        include Xrb::Request

        OPCODE = 4

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :visual, {type: :uint32},
            :size, {type: :uint32}
      end

      class CreatePixmap < Xrb::Message
        include Xrb::Request

        OPCODE = 5

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :pid, {type: :uint32},
            :drawable, {type: :uint32},
            :width, {type: :uint16},
            :height, {type: :uint16},
            :depth, {type: :uint8},
            :pad1, {size: 3, type: :uint8},
            :shmseg, {type: :uint32},
            :offset, {type: :uint32}
      end

    end
  end
end
