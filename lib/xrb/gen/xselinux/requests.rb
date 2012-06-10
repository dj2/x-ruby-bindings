#
# This file was auto-generated. Do not edit.
#

module Xrb
  module SELinux
    module Request
      class QueryVersion < Xrb::Message
        OPCODE = 0
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :server_major, :uint16,
            :server_minor, :uint16
      end
      
      class SetDeviceCreateContext < Xrb::Message
        OPCODE = 1
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :context_len, :uint32,
            :context, [:context_len, :char, :string]
      end
      
      class GetDeviceCreateContext < Xrb::Message
        OPCODE = 2
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :context_len, :uint32,
            :pad2, [20, :uint8],
            :context, [:context_len, :char, :string]
      end
      
      class SetDeviceContext < Xrb::Message
        OPCODE = 3
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :device, :uint32,
            :context_len, :uint32,
            :context, [:context_len, :char, :string]
      end
      
      class GetDeviceContext < Xrb::Message
        OPCODE = 4
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :context_len, :uint32,
            :pad2, [20, :uint8],
            :context, [:context_len, :char, :string]
      end
      
      class SetWindowCreateContext < Xrb::Message
        OPCODE = 5
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :context_len, :uint32,
            :context, [:context_len, :char, :string]
      end
      
      class GetWindowCreateContext < Xrb::Message
        OPCODE = 6
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :context_len, :uint32,
            :pad2, [20, :uint8],
            :context, [:context_len, :char, :string]
      end
      
      class GetWindowContext < Xrb::Message
        OPCODE = 7
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :context_len, :uint32,
            :pad2, [20, :uint8],
            :context, [:context_len, :char, :string]
      end
      
      class SetPropertyCreateContext < Xrb::Message
        OPCODE = 8
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :context_len, :uint32,
            :context, [:context_len, :char, :string]
      end
      
      class GetPropertyCreateContext < Xrb::Message
        OPCODE = 9
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :context_len, :uint32,
            :pad2, [20, :uint8],
            :context, [:context_len, :char, :string]
      end
      
      class SetPropertyUseContext < Xrb::Message
        OPCODE = 10
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :context_len, :uint32,
            :context, [:context_len, :char, :string]
      end
      
      class GetPropertyUseContext < Xrb::Message
        OPCODE = 11
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :context_len, :uint32,
            :pad2, [20, :uint8],
            :context, [:context_len, :char, :string]
      end
      
      class GetPropertyContext < Xrb::Message
        OPCODE = 12
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :context_len, :uint32,
            :pad2, [20, :uint8],
            :context, [:context_len, :char, :string]
      end
      
      class GetPropertyDataContext < Xrb::Message
        OPCODE = 13
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :context_len, :uint32,
            :pad2, [20, :uint8],
            :context, [:context_len, :char, :string]
      end
      
      class ListProperties < Xrb::Message
        OPCODE = 14
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :properties_len, :uint32,
            :pad2, [20, :uint8],
            :properties, [:properties_len, ListItem, :list]
      end
      
      class SetSelectionCreateContext < Xrb::Message
        OPCODE = 15
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :context_len, :uint32,
            :context, [:context_len, :char, :string]
      end
      
      class GetSelectionCreateContext < Xrb::Message
        OPCODE = 16
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :context_len, :uint32,
            :pad2, [20, :uint8],
            :context, [:context_len, :char, :string]
      end
      
      class SetSelectionUseContext < Xrb::Message
        OPCODE = 17
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :context_len, :uint32,
            :context, [:context_len, :char, :string]
      end
      
      class GetSelectionUseContext < Xrb::Message
        OPCODE = 18
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :context_len, :uint32,
            :pad2, [20, :uint8],
            :context, [:context_len, :char, :string]
      end
      
      class GetSelectionContext < Xrb::Message
        OPCODE = 19
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :context_len, :uint32,
            :pad2, [20, :uint8],
            :context, [:context_len, :char, :string]
      end
      
      class GetSelectionDataContext < Xrb::Message
        OPCODE = 20
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :context_len, :uint32,
            :pad2, [20, :uint8],
            :context, [:context_len, :char, :string]
      end
      
      class ListSelections < Xrb::Message
        OPCODE = 21
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :selections_len, :uint32,
            :pad2, [20, :uint8],
            :selections, [:selections_len, ListItem, :list]
      end
      
      class GetClientContext < Xrb::Message
        OPCODE = 22
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :context_len, :uint32,
            :pad2, [20, :uint8],
            :context, [:context_len, :char, :string]
      end
      
    end
  end
end
