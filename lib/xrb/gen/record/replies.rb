#
# This file was auto-generated. Do not edit.
#

module Xrb
  module Record
    module Reply
      class QueryVersion < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [:uint8, 1],
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
            :pad1, [:uint8, 3],
            :num_intercepted_clients, :uint32,
            :pad2, [:uint8, 16],
            :intercepted_clients, [:num_intercepted_clients, :string]
      end
      
      class EnableContext < Xrb::Message
        layout \
            :response_type, :uint8,
            :category, :uint8,
            :sequence, :uint16,
            :length, :uint32,
            :element_header, :uint8,
            :client_swapped, :bool,
            :pad1, [:uint8, 2],
            :xid_base, :uint32,
            :server_time, :uint32,
            :rec_sequence_num, :uint32,
            :pad2, [:uint8, 8],
            :data, [:length, :string]
      end
      
    end
  end
end
