#
# This file was auto-generated. Do not edit.
#

module Xrb
  module Shm
    module Request
      class QueryVersion < Xrb::Message
        OPCODE = 0
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :major_version, :uint16,
            :minor_version, :uint16,
            :uid, :uint16,
            :gid, :uint16,
            :pixmap_format, :uint8,
            :pad1, [:uint8, 15]
      end
      
      class Attach < Xrb::Message
        OPCODE = 1
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :shmseg, :uint32,
            :shmid, :uint32,
            :read_only, :bool,
            :pad1, [:uint8, 3]
      end
      
      class Detach < Xrb::Message
        OPCODE = 2
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :shmseg, :uint32
      end
      
      class PutImage < Xrb::Message
        OPCODE = 3
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :drawable, :uint32,
            :gc, :uint32,
            :total_width, :uint16,
            :total_height, :uint16,
            :src_x, :uint16,
            :src_y, :uint16,
            :src_width, :uint16,
            :src_height, :uint16,
            :dst_x, :int16,
            :dst_y, :int16,
            :depth, :uint8,
            :format, :uint8,
            :send_event, :uint8,
            :pad1, [:uint8, 1],
            :shmseg, :uint32,
            :offset, :uint32
      end
      
      class GetImage < Xrb::Message
        OPCODE = 4
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :visual, :uint32,
            :size, :uint32
      end
      
      class CreatePixmap < Xrb::Message
        OPCODE = 5
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :pid, :uint32,
            :drawable, :uint32,
            :width, :uint16,
            :height, :uint16,
            :depth, :uint8,
            :pad1, [:uint8, 3],
            :shmseg, :uint32,
            :offset, :uint32
      end
      
    end
  end
end
