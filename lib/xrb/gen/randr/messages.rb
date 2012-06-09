#
# This file was auto-generated. Do not edit.
#

module Xrb
  module RandR
    class Message
      class Mode
        attr_accessor :id
        
        def to_wire
          [id].pack('L')
        end
      end
      
      class Crtc
        attr_accessor :id
        
        def to_wire
          [id].pack('L')
        end
      end
      
      class Output
        attr_accessor :id
        
        def to_wire
          [id].pack('L')
        end
      end
      
      class ScreenSize < Xrb::Message
        layout \
            :width, :uint16,
            :height, :uint16,
            :mwidth, :uint16,
            :mheight, :uint16
      end
      
      class RefreshRates < Xrb::Message
        layout \
            :nRates, :uint16,
            :rates, [:nRates, :uint16, :list]
      end
      
      class ModeInfo < Xrb::Message
        layout \
            :id, :uint32,
            :width, :uint16,
            :height, :uint16,
            :dot_clock, :uint32,
            :hsync_start, :uint16,
            :hsync_end, :uint16,
            :htotal, :uint16,
            :hskew, :uint16,
            :vsync_start, :uint16,
            :vsync_end, :uint16,
            :vtotal, :uint16,
            :name_len, :uint16,
            :mode_flags, :uint32
      end
      
      class CrtcChange < Xrb::Message
        layout \
            :timestamp, :uint32,
            :window, :uint32,
            :crtc, :uint32,
            :mode, :uint32,
            :rotation, :uint16,
            :pad1, [:uint8, 2],
            :x, :int16,
            :y, :int16,
            :width, :uint16,
            :height, :uint16
      end
      
      class OutputChange < Xrb::Message
        layout \
            :timestamp, :uint32,
            :config_timestamp, :uint32,
            :window, :uint32,
            :output, :uint32,
            :crtc, :uint32,
            :mode, :uint32,
            :rotation, :uint16,
            :connection, :uint8,
            :subpixel_order, :uint8
      end
      
      class OutputProperty < Xrb::Message
        layout \
            :window, :uint32,
            :output, :uint32,
            :atom, :uint32,
            :timestamp, :uint32,
            :status, :uint8,
            :pad1, [:uint8, 11]
      end
      
      class NotifyData < Xrb::Message
        union \
            :cc, :CrtcChange,
            :oc, :OutputChange,
            :op, :OutputProperty
      end
      
    end
  end
end
