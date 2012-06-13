#
# This file was auto-generated. Do not edit.
#

module Xrb
  module SELinux
    module Request
      class QueryVersion < Xrb::Message
        include Xrb::Request
        
        OPCODE = 0
        
        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :server_major, {type: :uint16},
            :server_minor, {type: :uint16}
      end
      
      class SetDeviceCreateContext < Xrb::Message
        include Xrb::Request
        
        OPCODE = 1
        
        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :context_len, {type: :uint32},
            :context, {length_field: :context_len, type: :char, kind: :string}
      end
      
      class GetDeviceCreateContext < Xrb::Message
        include Xrb::Request
        
        OPCODE = 2
        
        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :context_len, {type: :uint32},
            :pad2, {size: 20, type: :uint8},
            :context, {length_field: :context_len, type: :char, kind: :string}
      end
      
      class SetDeviceContext < Xrb::Message
        include Xrb::Request
        
        OPCODE = 3
        
        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :device, {type: :uint32},
            :context_len, {type: :uint32},
            :context, {length_field: :context_len, type: :char, kind: :string}
      end
      
      class GetDeviceContext < Xrb::Message
        include Xrb::Request
        
        OPCODE = 4
        
        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :context_len, {type: :uint32},
            :pad2, {size: 20, type: :uint8},
            :context, {length_field: :context_len, type: :char, kind: :string}
      end
      
      class SetWindowCreateContext < Xrb::Message
        include Xrb::Request
        
        OPCODE = 5
        
        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :context_len, {type: :uint32},
            :context, {length_field: :context_len, type: :char, kind: :string}
      end
      
      class GetWindowCreateContext < Xrb::Message
        include Xrb::Request
        
        OPCODE = 6
        
        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :context_len, {type: :uint32},
            :pad2, {size: 20, type: :uint8},
            :context, {length_field: :context_len, type: :char, kind: :string}
      end
      
      class GetWindowContext < Xrb::Message
        include Xrb::Request
        
        OPCODE = 7
        
        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :context_len, {type: :uint32},
            :pad2, {size: 20, type: :uint8},
            :context, {length_field: :context_len, type: :char, kind: :string}
      end
      
      class SetPropertyCreateContext < Xrb::Message
        include Xrb::Request
        
        OPCODE = 8
        
        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :context_len, {type: :uint32},
            :context, {length_field: :context_len, type: :char, kind: :string}
      end
      
      class GetPropertyCreateContext < Xrb::Message
        include Xrb::Request
        
        OPCODE = 9
        
        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :context_len, {type: :uint32},
            :pad2, {size: 20, type: :uint8},
            :context, {length_field: :context_len, type: :char, kind: :string}
      end
      
      class SetPropertyUseContext < Xrb::Message
        include Xrb::Request
        
        OPCODE = 10
        
        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :context_len, {type: :uint32},
            :context, {length_field: :context_len, type: :char, kind: :string}
      end
      
      class GetPropertyUseContext < Xrb::Message
        include Xrb::Request
        
        OPCODE = 11
        
        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :context_len, {type: :uint32},
            :pad2, {size: 20, type: :uint8},
            :context, {length_field: :context_len, type: :char, kind: :string}
      end
      
      class GetPropertyContext < Xrb::Message
        include Xrb::Request
        
        OPCODE = 12
        
        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :context_len, {type: :uint32},
            :pad2, {size: 20, type: :uint8},
            :context, {length_field: :context_len, type: :char, kind: :string}
      end
      
      class GetPropertyDataContext < Xrb::Message
        include Xrb::Request
        
        OPCODE = 13
        
        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :context_len, {type: :uint32},
            :pad2, {size: 20, type: :uint8},
            :context, {length_field: :context_len, type: :char, kind: :string}
      end
      
      class ListProperties < Xrb::Message
        include Xrb::Request
        
        OPCODE = 14
        
        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :properties_len, {type: :uint32},
            :pad2, {size: 20, type: :uint8},
            :properties, {length_field: :properties_len, type: ListItem, kind: :list}
      end
      
      class SetSelectionCreateContext < Xrb::Message
        include Xrb::Request
        
        OPCODE = 15
        
        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :context_len, {type: :uint32},
            :context, {length_field: :context_len, type: :char, kind: :string}
      end
      
      class GetSelectionCreateContext < Xrb::Message
        include Xrb::Request
        
        OPCODE = 16
        
        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :context_len, {type: :uint32},
            :pad2, {size: 20, type: :uint8},
            :context, {length_field: :context_len, type: :char, kind: :string}
      end
      
      class SetSelectionUseContext < Xrb::Message
        include Xrb::Request
        
        OPCODE = 17
        
        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :context_len, {type: :uint32},
            :context, {length_field: :context_len, type: :char, kind: :string}
      end
      
      class GetSelectionUseContext < Xrb::Message
        include Xrb::Request
        
        OPCODE = 18
        
        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :context_len, {type: :uint32},
            :pad2, {size: 20, type: :uint8},
            :context, {length_field: :context_len, type: :char, kind: :string}
      end
      
      class GetSelectionContext < Xrb::Message
        include Xrb::Request
        
        OPCODE = 19
        
        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :context_len, {type: :uint32},
            :pad2, {size: 20, type: :uint8},
            :context, {length_field: :context_len, type: :char, kind: :string}
      end
      
      class GetSelectionDataContext < Xrb::Message
        include Xrb::Request
        
        OPCODE = 20
        
        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :context_len, {type: :uint32},
            :pad2, {size: 20, type: :uint8},
            :context, {length_field: :context_len, type: :char, kind: :string}
      end
      
      class ListSelections < Xrb::Message
        include Xrb::Request
        
        OPCODE = 21
        
        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :selections_len, {type: :uint32},
            :pad2, {size: 20, type: :uint8},
            :selections, {length_field: :selections_len, type: ListItem, kind: :list}
      end
      
      class GetClientContext < Xrb::Message
        include Xrb::Request
        
        OPCODE = 22
        
        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :context_len, {type: :uint32},
            :pad2, {size: 20, type: :uint8},
            :context, {length_field: :context_len, type: :char, kind: :string}
      end
      
    end
  end
end
