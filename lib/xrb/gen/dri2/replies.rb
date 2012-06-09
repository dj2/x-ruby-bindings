#
# This file was auto-generated. Do not edit.
#

module Xrb
  module DRI2
    module Reply
      class QueryVersion < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [:uint8, 1],
            :sequence, :uint16,
            :length, :uint32,
            :major_version, :uint32,
            :minor_version, :uint32
      end
      
      class Connect < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [:uint8, 1],
            :sequence, :uint16,
            :length, :uint32,
            :driver_name_length, :uint32,
            :device_name_length, :uint32,
            :pad2, [:uint8, 16],
            :alignment_pad, [:uint8, 3]
      end
      
      class Authenticate < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [:uint8, 1],
            :sequence, :uint16,
            :length, :uint32,
            :authenticated, :uint32
      end
      
      class GetBuffers < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [:uint8, 1],
            :sequence, :uint16,
            :length, :uint32,
            :width, :uint32,
            :height, :uint32,
            :count, :uint32,
            :pad2, [:uint8, 12]
      end
      
      class CopyRegion < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [:uint8, 1],
            :sequence, :uint16,
            :length, :uint32
      end
      
      class GetBuffersWithFormat < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [:uint8, 1],
            :sequence, :uint16,
            :length, :uint32,
            :width, :uint32,
            :height, :uint32,
            :count, :uint32,
            :pad2, [:uint8, 12]
      end
      
      class SwapBuffers < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [:uint8, 1],
            :sequence, :uint16,
            :length, :uint32,
            :swap_hi, :uint32,
            :swap_lo, :uint32
      end
      
      class GetMsc < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [:uint8, 1],
            :sequence, :uint16,
            :length, :uint32,
            :ust_hi, :uint32,
            :ust_lo, :uint32,
            :msc_hi, :uint32,
            :msc_lo, :uint32,
            :sbc_hi, :uint32,
            :sbc_lo, :uint32
      end
      
      class WaitMsc < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [:uint8, 1],
            :sequence, :uint16,
            :length, :uint32,
            :ust_hi, :uint32,
            :ust_lo, :uint32,
            :msc_hi, :uint32,
            :msc_lo, :uint32,
            :sbc_hi, :uint32,
            :sbc_lo, :uint32
      end
      
      class WaitSbc < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [:uint8, 1],
            :sequence, :uint16,
            :length, :uint32,
            :ust_hi, :uint32,
            :ust_lo, :uint32,
            :msc_hi, :uint32,
            :msc_lo, :uint32,
            :sbc_hi, :uint32,
            :sbc_lo, :uint32
      end
      
    end
  end
end
