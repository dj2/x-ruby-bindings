#
# This file was auto-generated. Do not edit.
#

module Xrb
  module Record
    module Reply
      class QueryVersion < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :major_version, {type: :uint16},
            :minor_version, {type: :uint16}
      end

      class GetContext < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :enabled, {type: :bool},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :element_header, {type: :uint8},
            :pad1, {size: 3, type: :uint8},
            :num_intercepted_clients, {type: :uint32},
            :pad2, {size: 16, type: :uint8},
            :intercepted_clients, {length_field: :num_intercepted_clients, type: ClientInfo, kind: :list}
      end

      class EnableContext < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :category, {type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :element_header, {type: :uint8},
            :client_swapped, {type: :bool},
            :pad1, {size: 2, type: :uint8},
            :xid_base, {type: :uint32},
            :server_time, {type: :uint32},
            :rec_sequence_num, {type: :uint32},
            :pad2, {size: 8, type: :uint8},
            :data,{type: uint8, length_expr: '(length * 4)'}
      end

    end
  end
end
