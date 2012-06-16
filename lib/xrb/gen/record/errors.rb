#
# This file was auto-generated. Do not edit.
#

module Xrb
  module Record
    module Error
      class BadContext < Xrb::Message
        OPCODE = 0

        layout \
            :response_type, {type: :uint8},
            :error_code, {type: :uint8},
            :sequence, {type: :uint16},
            :invalid_record, {type: :uint32}
      end

      @op_map = {
        0 => BadContext
      }
      def self.find(opcode)
        @op_map[opcode]
      end
    end
  end
end
