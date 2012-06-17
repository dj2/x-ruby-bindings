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
            :width, {type: :uint16},
            :height, {type: :uint16},
            :mwidth, {type: :uint16},
            :mheight, {type: :uint16}
      end

      class RefreshRates < Xrb::Message
        layout \
            :nRates, {type: :uint16},
            :rates, {length_field: :nRates, type: :uint16, kind: :list}
      end

      class ModeInfo < Xrb::Message
        layout \
            :id, {type: :uint32},
            :width, {type: :uint16},
            :height, {type: :uint16},
            :dot_clock, {type: :uint32},
            :hsync_start, {type: :uint16},
            :hsync_end, {type: :uint16},
            :htotal, {type: :uint16},
            :hskew, {type: :uint16},
            :vsync_start, {type: :uint16},
            :vsync_end, {type: :uint16},
            :vtotal, {type: :uint16},
            :name_len, {type: :uint16},
            :mode_flags, {type: :uint32}
      end

      class CrtcChange < Xrb::Message
        layout \
            :timestamp, {type: :uint32},
            :window, {type: :uint32},
            :crtc, {type: :uint32},
            :mode, {type: :uint32},
            :rotation, {type: :uint16},
            :pad1, {size: 2, type: :uint8},
            :x, {type: :int16},
            :y, {type: :int16},
            :width, {type: :uint16},
            :height, {type: :uint16}
      end

      class OutputChange < Xrb::Message
        layout \
            :timestamp, {type: :uint32},
            :config_timestamp, {type: :uint32},
            :window, {type: :uint32},
            :output, {type: :uint32},
            :crtc, {type: :uint32},
            :mode, {type: :uint32},
            :rotation, {type: :uint16},
            :connection, {type: :uint8},
            :subpixel_order, {type: :uint8}
      end

      class OutputProperty < Xrb::Message
        layout \
            :window, {type: :uint32},
            :output, {type: :uint32},
            :atom, {type: :uint32},
            :timestamp, {type: :uint32},
            :status, {type: :uint8},
            :pad1, {size: 11, type: :uint8}
      end

      class NotifyData < Xrb::Message
        union \
            :cc, {type: :CrtcChange},
            :oc, {type: :OutputChange},
            :op, {type: :OutputProperty}
      end

    end
  end
end
