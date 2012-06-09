#
# This file was auto-generated. Do not edit.
#

module Xrb
  module Composite
    module Request
      class QueryVersion < Xrb::Message
        OPCODE = 0
        
        layout \
            :major_opcode, :uint8
            :minor_opcode, :uint8
            :length, :uint16
            :major_version, :uint32
            :minor_version, :uint32
            :pad2, [:uint8, 16]
      end
      
      class RedirectWindow < Xrb::Message
        OPCODE = 1
        
        layout \
            :major_opcode, :uint8
            :minor_opcode, :uint8
            :length, :uint16
            :window, :uint32
            :update, :uint8
            :pad1, [:uint8, 3]
      end
      
      class RedirectSubwindows < Xrb::Message
        OPCODE = 2
        
        layout \
            :major_opcode, :uint8
            :minor_opcode, :uint8
            :length, :uint16
            :window, :uint32
            :update, :uint8
            :pad1, [:uint8, 3]
      end
      
      class UnredirectWindow < Xrb::Message
        OPCODE = 3
        
        layout \
            :major_opcode, :uint8
            :minor_opcode, :uint8
            :length, :uint16
            :window, :uint32
            :update, :uint8
            :pad1, [:uint8, 3]
      end
      
      class UnredirectSubwindows < Xrb::Message
        OPCODE = 4
        
        layout \
            :major_opcode, :uint8
            :minor_opcode, :uint8
            :length, :uint16
            :window, :uint32
            :update, :uint8
            :pad1, [:uint8, 3]
      end
      
      class CreateRegionFromBorderClip < Xrb::Message
        OPCODE = 5
        
        layout \
            :major_opcode, :uint8
            :minor_opcode, :uint8
            :length, :uint16
            :region, :uint32
            :window, :uint32
      end
      
      class NameWindowPixmap < Xrb::Message
        OPCODE = 6
        
        layout \
            :major_opcode, :uint8
            :minor_opcode, :uint8
            :length, :uint16
            :window, :uint32
            :pixmap, :uint32
      end
      
      class GetOverlayWindow < Xrb::Message
        OPCODE = 7
        
        layout \
            :major_opcode, :uint8
            :minor_opcode, :uint8
            :length, :uint16
            :overlay_win, :uint32
            :pad2, [:uint8, 20]
      end
      
      class ReleaseOverlayWindow < Xrb::Message
        OPCODE = 8
        
        layout \
            :major_opcode, :uint8
            :minor_opcode, :uint8
            :length, :uint16
            :window, :uint32
      end
      
    end
  end
end
