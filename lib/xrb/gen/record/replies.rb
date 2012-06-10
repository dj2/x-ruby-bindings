#
# This file was auto-generated. Do not edit.
#

module Xrb
  module Record
    module Reply
      class QueryVersion < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [1, :uint8],
            :sequence, :uint16,
            :length, :uint32,
            :major_version, :uint16,
            :minor_version, :uint16
      end
      
      class GetContext < Xrb::Message
        layout \
            :response_type, :uint8,
            :enabled, :bool,
            :sequence, :uint16,
            :length, :uint32,
            :element_header, :uint8,
            :pad1, [3, :uint8],
            :num_intercepted_clients, :uint32,
            :pad2, [16, :uint8],
            :intercepted_clients, [:num_intercepted_clients, ClientInfo, :list]
      end
      
      class EnableContext < Xrb::Message
        layout \
            :response_type, :uint8,
            :category, :uint8,
            :sequence, :uint16,
            :length, :uint32,
            :element_header, :uint8,
            :client_swapped, :bool,
            :pad1, [2, :uint8],
            :xid_base, :uint32,
            :server_time, :uint32,
            :rec_sequence_num, :uint32,
            :pad2, [8, :uint8],
            :data, [:length, :uint8, :list]
      end
      
    end
  end
end
