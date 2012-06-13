#
# This file was auto-generated. Do not edit.
#

module Xrb
  module SELinux
    module Reply
      class QueryVersion < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :server_major, {type: :uint16},
            :server_minor, {type: :uint16}
      end
      
      class GetDeviceCreateContext < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :context_len, {type: :uint32},
            :pad2, {size: 20, type: :uint8},
            :context, {length_field: :context_len, type: :char, kind: :string}
      end
      
      class GetDeviceContext < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :context_len, {type: :uint32},
            :pad2, {size: 20, type: :uint8},
            :context, {length_field: :context_len, type: :char, kind: :string}
      end
      
      class GetWindowCreateContext < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :context_len, {type: :uint32},
            :pad2, {size: 20, type: :uint8},
            :context, {length_field: :context_len, type: :char, kind: :string}
      end
      
      class GetWindowContext < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :context_len, {type: :uint32},
            :pad2, {size: 20, type: :uint8},
            :context, {length_field: :context_len, type: :char, kind: :string}
      end
      
      class GetPropertyCreateContext < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :context_len, {type: :uint32},
            :pad2, {size: 20, type: :uint8},
            :context, {length_field: :context_len, type: :char, kind: :string}
      end
      
      class GetPropertyUseContext < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :context_len, {type: :uint32},
            :pad2, {size: 20, type: :uint8},
            :context, {length_field: :context_len, type: :char, kind: :string}
      end
      
      class GetPropertyContext < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :context_len, {type: :uint32},
            :pad2, {size: 20, type: :uint8},
            :context, {length_field: :context_len, type: :char, kind: :string}
      end
      
      class GetPropertyDataContext < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :context_len, {type: :uint32},
            :pad2, {size: 20, type: :uint8},
            :context, {length_field: :context_len, type: :char, kind: :string}
      end
      
      class ListProperties < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :properties_len, {type: :uint32},
            :pad2, {size: 20, type: :uint8},
            :properties, {length_field: :properties_len, type: ListItem, kind: :list}
      end
      
      class GetSelectionCreateContext < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :context_len, {type: :uint32},
            :pad2, {size: 20, type: :uint8},
            :context, {length_field: :context_len, type: :char, kind: :string}
      end
      
      class GetSelectionUseContext < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :context_len, {type: :uint32},
            :pad2, {size: 20, type: :uint8},
            :context, {length_field: :context_len, type: :char, kind: :string}
      end
      
      class GetSelectionContext < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :context_len, {type: :uint32},
            :pad2, {size: 20, type: :uint8},
            :context, {length_field: :context_len, type: :char, kind: :string}
      end
      
      class GetSelectionDataContext < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :context_len, {type: :uint32},
            :pad2, {size: 20, type: :uint8},
            :context, {length_field: :context_len, type: :char, kind: :string}
      end
      
      class ListSelections < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :selections_len, {type: :uint32},
            :pad2, {size: 20, type: :uint8},
            :selections, {length_field: :selections_len, type: ListItem, kind: :list}
      end
      
      class GetClientContext < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :context_len, {type: :uint32},
            :pad2, {size: 20, type: :uint8},
            :context, {length_field: :context_len, type: :char, kind: :string}
      end
      
    end
  end
end
