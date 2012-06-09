#
# This file was auto-generated. Do not edit.
#

module Xrb
  module Record
    module Request
      class QueryVersion < Xrb::Message
        OPCODE = 0
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :major_version, :uint16,
            :minor_version, :uint16
      end
      
      class CreateContext < Xrb::Message
        OPCODE = 1
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :context, :uint32,
            :element_header, :uint8,
            :pad1, [:uint8, 3],
            :num_client_specs, :uint32,
            :num_ranges, :uint32,
            :client_specs, [:num_client_specs, :string],
            :ranges, [:num_ranges, :string]
      end
      
      class RegisterClients < Xrb::Message
        OPCODE = 2
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :context, :uint32,
            :element_header, :uint8,
            :pad1, [:uint8, 3],
            :num_client_specs, :uint32,
            :num_ranges, :uint32,
            :client_specs, [:num_client_specs, :string],
            :ranges, [:num_ranges, :string]
      end
      
      class UnregisterClients < Xrb::Message
        OPCODE = 3
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :context, :uint32,
            :num_client_specs, :uint32,
            :client_specs, [:num_client_specs, :string]
      end
      
      class GetContext < Xrb::Message
        OPCODE = 4
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :element_header, :uint8,
            :pad1, [:uint8, 3],
            :num_intercepted_clients, :uint32,
            :pad2, [:uint8, 16],
            :intercepted_clients, [:num_intercepted_clients, :string]
      end
      
      class EnableContext < Xrb::Message
        OPCODE = 5
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :element_header, :uint8,
            :client_swapped, :bool,
            :pad1, [:uint8, 2],
            :xid_base, :uint32,
            :server_time, :uint32,
            :rec_sequence_num, :uint32,
            :pad2, [:uint8, 8],
            :data, [:length, :string]
      end
      
      class DisableContext < Xrb::Message
        OPCODE = 6
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :context, :uint32
      end
      
      class FreeContext < Xrb::Message
        OPCODE = 7
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :context, :uint32
      end
      
    end
  end
end
