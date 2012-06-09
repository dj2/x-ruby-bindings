#
# This file was auto-generated. Do not edit.
#

module Xrb
  module DRI2
    module Request
      class QueryVersion < Xrb::Message
        OPCODE = 0
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :major_version, :uint32,
            :minor_version, :uint32
      end
      
      class Connect < Xrb::Message
        OPCODE = 1
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :driver_name_length, :uint32,
            :device_name_length, :uint32,
            :pad2, [:uint8, 16],
            :alignment_pad, [:uint8, 3]
      end
      
      class Authenticate < Xrb::Message
        OPCODE = 2
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :authenticated, :uint32
      end
      
      class CreateDrawable < Xrb::Message
        OPCODE = 3
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :drawable, :uint32
      end
      
      class DestroyDrawable < Xrb::Message
        OPCODE = 4
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :drawable, :uint32
      end
      
      class GetBuffers < Xrb::Message
        OPCODE = 5
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :width, :uint32,
            :height, :uint32,
            :count, :uint32,
            :pad2, [:uint8, 12]
      end
      
      class CopyRegion < Xrb::Message
        OPCODE = 6
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16
      end
      
      class GetBuffersWithFormat < Xrb::Message
        OPCODE = 7
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :width, :uint32,
            :height, :uint32,
            :count, :uint32,
            :pad2, [:uint8, 12]
      end
      
      class SwapBuffers < Xrb::Message
        OPCODE = 8
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :swap_hi, :uint32,
            :swap_lo, :uint32
      end
      
      class GetMsc < Xrb::Message
        OPCODE = 9
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :ust_hi, :uint32,
            :ust_lo, :uint32,
            :msc_hi, :uint32,
            :msc_lo, :uint32,
            :sbc_hi, :uint32,
            :sbc_lo, :uint32
      end
      
      class WaitMsc < Xrb::Message
        OPCODE = 10
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :ust_hi, :uint32,
            :ust_lo, :uint32,
            :msc_hi, :uint32,
            :msc_lo, :uint32,
            :sbc_hi, :uint32,
            :sbc_lo, :uint32
      end
      
      class WaitSbc < Xrb::Message
        OPCODE = 11
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :ust_hi, :uint32,
            :ust_lo, :uint32,
            :msc_hi, :uint32,
            :msc_lo, :uint32,
            :sbc_hi, :uint32,
            :sbc_lo, :uint32
      end
      
      class SwapInterval < Xrb::Message
        OPCODE = 12
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :drawable, :uint32,
            :interval, :uint32
      end
      
    end
  end
end
