#
# This file was auto-generated. Do not edit.
#

module Xrb
  module RandR
    module Event
      class ScreenChangeNotify < Xrb::Message
        OPCODE = 0

        layout \
            :response_type, {type: :uint8},
            :rotation, {type: :uint8},
            :sequence, {type: :uint16},
            :timestamp, {type: :uint32},
            :config_timestamp, {type: :uint32},
            :root, {type: :uint32},
            :request_window, {type: :uint32},
            :sizeID, {type: :uint16},
            :subpixel_order, {type: :uint16},
            :width, {type: :uint16},
            :height, {type: :uint16},
            :mwidth, {type: :uint16},
            :mheight, {type: :uint16}

        def to_sym
          :ScreenChangeNotify
        end
      end

      class Notify < Xrb::Message
        OPCODE = 1

        layout \
            :response_type, {type: :uint8},
            :subCode, {type: :uint8},
            :sequence, {type: :uint16},
            :u, {type: :NotifyData}

        def to_sym
          :Notify
        end
      end

      @op_map = {
        0 => ScreenChangeNotify,
1 => Notify
      }
      def self.find(opcode)
        @op_map[opcode]
      end
    end
  end
end
