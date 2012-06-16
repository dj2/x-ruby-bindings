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
            :element_header, {type: :uint8},
            :pad1, {size: 3, type: :uint8},
            :num_intercepted_clients, {type: :uint32},
            :pad2, {size: 16, type: :uint8},
            :intercepted_clients, {length_field: :num_intercepted_clients, type: ClientInfo, kind: :list}
      end

      class EnableContext < Xrb::Message
        include Xrb::Request

        OPCODE = 5

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :element_header, {type: :uint8},
            :client_swapped, {type: :bool},
            :pad1, {size: 2, type: :uint8},
            :xid_base, {type: :uint32},
            :server_time, {type: :uint32},
            :rec_sequence_num, {type: :uint32},
            :pad2, {size: 8, type: :uint8},
            :data, {length_field: :length, type: :uint8, kind: :list}
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
