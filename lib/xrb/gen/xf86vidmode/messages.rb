#
# This file was auto-generated. Do not edit.
#

module Xrb
  module XF86VidMode
    class Message
      class Syncrange
        attr_accessor :id
        
        def to_wire
          [id].pack('L')
        end
      end
      
      class Dotclock
        attr_accessor :id
        
        def to_wire
          [id].pack('L')
        end
      end
      
      class ModeInfo < Xrb::Message
        layout \
            :dotclock, :uint32,
            :hdisplay, :uint16,
            :hsyncstart, :uint16,
            :hsyncend, :uint16,
            :htotal, :uint16,
            :hskew, :uint32,
            :vdisplay, :uint16,
            :vsyncstart, :uint16,
            :vsyncend, :uint16,
            :vtotal, :uint16,
            :pad1, [:uint8, 4],
            :flags, :uint32,
            :pad2, [:uint8, 12],
            :privsize, :uint32
      end
      
    end
  end
end
