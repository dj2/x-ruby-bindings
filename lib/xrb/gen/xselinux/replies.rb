#
# This file was auto-generated. Do not edit.
#

module Xrb
  module SELinux
    module Reply
      class QueryVersion < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [:uint8, 1],
            :sequence, :uint16,
            :length, :uint32,
            :server_major, :uint16,
            :server_minor, :uint16
      end
      
      class GetDeviceCreateContext < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [:uint8, 1],
            :sequence, :uint16,
            :length, :uint32,
            :context_len, :uint32,
            :pad2, [:uint8, 20],
            :context, [:context_len, :string]
      end
      
      class GetDeviceContext < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [:uint8, 1],
            :sequence, :uint16,
            :length, :uint32,
            :context_len, :uint32,
            :pad2, [:uint8, 20],
            :context, [:context_len, :string]
      end
      
      class GetWindowCreateContext < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [:uint8, 1],
            :sequence, :uint16,
            :length, :uint32,
            :context_len, :uint32,
            :pad2, [:uint8, 20],
            :context, [:context_len, :string]
      end
      
      class GetWindowContext < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [:uint8, 1],
            :sequence, :uint16,
            :length, :uint32,
            :context_len, :uint32,
            :pad2, [:uint8, 20],
            :context, [:context_len, :string]
      end
      
      class GetPropertyCreateContext < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [:uint8, 1],
            :sequence, :uint16,
            :length, :uint32,
            :context_len, :uint32,
            :pad2, [:uint8, 20],
            :context, [:context_len, :string]
      end
      
      class GetPropertyUseContext < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [:uint8, 1],
            :sequence, :uint16,
            :length, :uint32,
            :context_len, :uint32,
            :pad2, [:uint8, 20],
            :context, [:context_len, :string]
      end
      
      class GetPropertyContext < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [:uint8, 1],
            :sequence, :uint16,
            :length, :uint32,
            :context_len, :uint32,
            :pad2, [:uint8, 20],
            :context, [:context_len, :string]
      end
      
      class GetPropertyDataContext < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [:uint8, 1],
            :sequence, :uint16,
            :length, :uint32,
            :context_len, :uint32,
            :pad2, [:uint8, 20],
            :context, [:context_len, :string]
      end
      
      class ListProperties < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [:uint8, 1],
            :sequence, :uint16,
            :length, :uint32,
            :properties_len, :uint32,
            :pad2, [:uint8, 20],
            :properties, [:properties_len, :string]
      end
      
      class GetSelectionCreateContext < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [:uint8, 1],
            :sequence, :uint16,
            :length, :uint32,
            :context_len, :uint32,
            :pad2, [:uint8, 20],
            :context, [:context_len, :string]
      end
      
      class GetSelectionUseContext < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [:uint8, 1],
            :sequence, :uint16,
            :length, :uint32,
            :context_len, :uint32,
            :pad2, [:uint8, 20],
            :context, [:context_len, :string]
      end
      
      class GetSelectionContext < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [:uint8, 1],
            :sequence, :uint16,
            :length, :uint32,
            :context_len, :uint32,
            :pad2, [:uint8, 20],
            :context, [:context_len, :string]
      end
      
      class GetSelectionDataContext < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [:uint8, 1],
            :sequence, :uint16,
            :length, :uint32,
            :context_len, :uint32,
            :pad2, [:uint8, 20],
            :context, [:context_len, :string]
      end
      
      class ListSelections < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [:uint8, 1],
            :sequence, :uint16,
            :length, :uint32,
            :selections_len, :uint32,
            :pad2, [:uint8, 20],
            :selections, [:selections_len, :string]
      end
      
      class GetClientContext < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [:uint8, 1],
            :sequence, :uint16,
            :length, :uint32,
            :context_len, :uint32,
            :pad2, [:uint8, 20],
            :context, [:context_len, :string]
      end
      
    end
  end
end
