#
# This file was auto-generated. Do not edit.
#

module Xrb
  module XFixes
    module Error
      class BadRegion < Xrb::Message
        OPCODE = 0

        layout \
            :response_type, {type: :uint8},
            :error_code, {type: :uint8},
            :sequence, {type: :uint16}
      end

      @op_map = {
        0 => BadRegion
      }
      def self.find(opcode)
        @op_map[opcode]
      end
    end
  end
end
