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
            :driver_name_length, {type: :uint32},
            :device_name_length, {type: :uint32},
            :pad2, {size: 16, type: :uint8},
            :driver_name, {length_field: :driver_name_length, type: :char, kind: :string},
            :alignment_pad, {type: :uint8, size: 3},
            :device_name, {length_field: :device_name_length, type: :char, kind: :string}
      end
      
      class Authenticate < Xrb::Message
        include Xrb::Request
        
        OPCODE = 2
        
        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :authenticated, {type: :uint32}
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
            :width, {type: :uint32},
            :height, {type: :uint32},
            :count, {type: :uint32},
            :pad2, {size: 12, type: :uint8},
            :buffers, {length_field: :count, type: Dri2buffer, kind: :list}
      end
      
      class CopyRegion < Xrb::Message
        include Xrb::Request
        
        OPCODE = 6
        
        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16}
      end
      
      class GetBuffersWithFormat < Xrb::Message
        include Xrb::Request
        
        OPCODE = 7
        
        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :width, {type: :uint32},
            :height, {type: :uint32},
            :count, {type: :uint32},
            :pad2, {size: 12, type: :uint8},
            :buffers, {length_field: :count, type: Dri2buffer, kind: :list}
      end
      
      class SwapBuffers < Xrb::Message
        include Xrb::Request
        
        OPCODE = 8
        
        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :swap_hi, {type: :uint32},
            :swap_lo, {type: :uint32}
      end
      
      class GetMsc < Xrb::Message
        include Xrb::Request
        
        OPCODE = 9
        
        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :ust_hi, {type: :uint32},
            :ust_lo, {type: :uint32},
            :msc_hi, {type: :uint32},
            :msc_lo, {type: :uint32},
            :sbc_hi, {type: :uint32},
            :sbc_lo, {type: :uint32}
      end
      
      class WaitMsc < Xrb::Message
        include Xrb::Request
        
        OPCODE = 10
        
        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :ust_hi, {type: :uint32},
            :ust_lo, {type: :uint32},
            :msc_hi, {type: :uint32},
            :msc_lo, {type: :uint32},
            :sbc_hi, {type: :uint32},
            :sbc_lo, {type: :uint32}
      end
      
      class WaitSbc < Xrb::Message
        include Xrb::Request
        
        OPCODE = 11
        
        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :ust_hi, {type: :uint32},
            :ust_lo, {type: :uint32},
            :msc_hi, {type: :uint32},
            :msc_lo, {type: :uint32},
            :sbc_hi, {type: :uint32},
            :sbc_lo, {type: :uint32}
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
