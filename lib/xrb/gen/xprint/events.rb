#
# This file was auto-generated. Do not edit.
#

module Xrb
  module XPrint
    module Event
      class Notify < Xrb::Message
        OPCODE = 0

        layout \
            :response_type, {type: :uint8},
            :detail, {type: :uint8},
            :sequence, {type: :uint16},
            :context, {type: :uint32},
            :cancel, {type: :bool}

        def to_sym
          :Notify
        end
      end

      class AttributNotify < Xrb::Message
        OPCODE = 1

        layout \
            :response_type, {type: :uint8},
            :detail, {type: :uint8},
            :sequence, {type: :uint16},
            :context, {type: :uint32}

        def to_sym
          :AttributNotify
        end
      end

      @op_map = {
        0 => Notify,
1 => AttributNotify
      }
      def self.find(opcode)
        @op_map[opcode]
      end
    end
  end
end
