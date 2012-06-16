#
# This file was auto-generated. Do not edit.
#

module Xrb
  module BigRequests
    module Request
      class Enable < Xrb::Message
        include Xrb::Request

        OPCODE = 0

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16}
      end

    end
  end
end
