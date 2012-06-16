#
# This file was auto-generated. Do not edit.
#

module Xrb
  module Xv
    module Event
      class VideoNotify < Xrb::Message
        OPCODE = 0

        layout \
            :response_type, {type: :uint8},
            :reason, {type: :uint8},
            :sequence, {type: :uint16},
            :time, {type: :uint32},
            :drawable, {type: :uint32},
            :port, {type: :uint32}

        def to_sym
          :VideoNotify
        end
      end

      class PortNotify < Xrb::Message
        OPCODE = 1

        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :time, {type: :uint32},
            :port, {type: :uint32},
            :attribute, {type: :uint32},
            :value, {type: :int32}

        def to_sym
          :PortNotify
        end
      end

      @op_map = {
        0 => VideoNotify,
1 => PortNotify
      }
      def self.find(opcode)
        @op_map[opcode]
      end
    end
  end
end
