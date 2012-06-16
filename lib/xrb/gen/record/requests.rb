#
# This file was auto-generated. Do not edit.
#

module Xrb
  module Record
    module Request
      class QueryVersion < Xrb::Message
        include Xrb::Request

        OPCODE = 0

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :major_version, {type: :uint16},
            :minor_version, {type: :uint16}
      end

      class CreateContext < Xrb::Message
        include Xrb::Request

        OPCODE = 1

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :context, {type: :uint32},
            :element_header, {type: :uint8},
            :pad1, {size: 3, type: :uint8},
            :num_client_specs, {type: :uint32},
            :num_ranges, {type: :uint32},
            :client_specs, {length_field: :num_client_specs, type: :uint32, kind: :list},
            :ranges, {length_field: :num_ranges, type: Range, kind: :list}
      end

      class RegisterClients < Xrb::Message
        include Xrb::Request

        OPCODE = 2

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :context, {type: :uint32},
            :element_header, {type: :uint8},
            :pad1, {size: 3, type: :uint8},
            :num_client_specs, {type: :uint32},
            :num_ranges, {type: :uint32},
            :client_specs, {length_field: :num_client_specs, type: :uint32, kind: :list},
            :ranges, {length_field: :num_ranges, type: Range, kind: :list}
      end

      class UnregisterClients < Xrb::Message
        include Xrb::Request

        OPCODE = 3

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :context, {type: :uint32},
            :num_client_specs, {type: :uint32},
            :client_specs, {length_field: :num_client_specs, type: :uint32, kind: :list}
      end

      class GetContext < Xrb::Message
        include Xrb::Request

        OPCODE = 4

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :context, {type: :uint32}
      end

      class EnableContext < Xrb::Message
        include Xrb::Request

        OPCODE = 5

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :context, {type: :uint32}
      end

      class DisableContext < Xrb::Message
        include Xrb::Request

        OPCODE = 6

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :context, {type: :uint32}
      end

      class FreeContext < Xrb::Message
        include Xrb::Request

        OPCODE = 7

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :context, {type: :uint32}
      end

    end
  end
end
