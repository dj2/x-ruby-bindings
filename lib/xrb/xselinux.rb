#
# This file auto-generated. Do not edit.
#

require 'ffi'
require 'xrb/xproto'
class Xrb
  class SELinux
    extend FFI::Library
    ffi_lib 'xselinux'
    MAJOR_VERSION = 1
    MINOR_VERSION = 0
    class ListItem < FFI::Struct
      layout \
          :name, :atom_t,
          :object_context_len, :uint32,
          :data_context_len, :uint32
    end

    class ListItemIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_list_item_next, [:pointer], :void
    attach_function :xcb_list_item_end, [:pointer], GenericIterator
    attach_function :xcb_list_item_sizeof, [:pointer], :int
    attach_function :xcb_list_item_object_context, [:pointer], :pointer
    attach_function :xcb_list_item_object_context_length, [:pointer], :int
    attach_function :xcb_list_item_data_context, [:pointer], :pointer
    attach_function :xcb_list_item_data_context_length, [:pointer], :int
    class QueryVersionRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :server_major, :uint16,
          :server_minor, :uint16
    end

    class QueryVersionCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_query_version, [:pointer,:uint8,:uint16,:uint16], QueryVersionCookie
    class QueryVersionReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :server_major, :uint16,
          :server_minor, :uint16
    end

    attach_function :xcb_query_version_reply, [:pointer, QueryVersionCookie, :pointer], :pointer

        
    class SetDeviceCreateContextRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :context_len, :uint32
    end

    class SetDeviceCreateContextCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_set_device_create_context_checked, [:pointer,:uint8,:uint32,:uint32], SetDeviceCreateContextCookie
    attach_function :xcb_set_device_create_context, [:pointer,:uint8,:uint32,:uint32], SetDeviceCreateContextCookie
    class GetDeviceCreateContextRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :context_len, :uint32,
          :pad2, [:uint8, 20]
    end

    class GetDeviceCreateContextCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_device_create_context, [:pointer,:uint8,:uint32,:uint32], GetDeviceCreateContextCookie
    class GetDeviceCreateContextReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :context_len, :uint32,
          :pad2, [:uint8, 20]
    end

    attach_function :xcb_get_device_create_context_reply, [:pointer, GetDeviceCreateContextCookie, :pointer], :pointer

        
    class SetDeviceContextRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :device, :uint32,
          :context_len, :uint32
    end

    class SetDeviceContextCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_set_device_context_checked, [:pointer,:uint8,:uint32,:uint32,:uint32], SetDeviceContextCookie
    attach_function :xcb_set_device_context, [:pointer,:uint8,:uint32,:uint32,:uint32], SetDeviceContextCookie
    class GetDeviceContextRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :context_len, :uint32,
          :pad2, [:uint8, 20]
    end

    class GetDeviceContextCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_device_context, [:pointer,:uint8,:uint32,:uint32], GetDeviceContextCookie
    class GetDeviceContextReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :context_len, :uint32,
          :pad2, [:uint8, 20]
    end

    attach_function :xcb_get_device_context_reply, [:pointer, GetDeviceContextCookie, :pointer], :pointer

        
    class SetWindowCreateContextRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :context_len, :uint32
    end

    class SetWindowCreateContextCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_set_window_create_context_checked, [:pointer,:uint8,:uint32,:uint32], SetWindowCreateContextCookie
    attach_function :xcb_set_window_create_context, [:pointer,:uint8,:uint32,:uint32], SetWindowCreateContextCookie
    class GetWindowCreateContextRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :context_len, :uint32,
          :pad2, [:uint8, 20]
    end

    class GetWindowCreateContextCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_window_create_context, [:pointer,:uint8,:uint32,:uint32], GetWindowCreateContextCookie
    class GetWindowCreateContextReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :context_len, :uint32,
          :pad2, [:uint8, 20]
    end

    attach_function :xcb_get_window_create_context_reply, [:pointer, GetWindowCreateContextCookie, :pointer], :pointer

        
    class GetWindowContextRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :context_len, :uint32,
          :pad2, [:uint8, 20]
    end

    class GetWindowContextCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_window_context, [:pointer,:uint8,:uint32,:uint32], GetWindowContextCookie
    class GetWindowContextReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :context_len, :uint32,
          :pad2, [:uint8, 20]
    end

    attach_function :xcb_get_window_context_reply, [:pointer, GetWindowContextCookie, :pointer], :pointer

        
    class SetPropertyCreateContextRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :context_len, :uint32
    end

    class SetPropertyCreateContextCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_set_property_create_context_checked, [:pointer,:uint8,:uint32,:uint32], SetPropertyCreateContextCookie
    attach_function :xcb_set_property_create_context, [:pointer,:uint8,:uint32,:uint32], SetPropertyCreateContextCookie
    class GetPropertyCreateContextRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :context_len, :uint32,
          :pad2, [:uint8, 20]
    end

    class GetPropertyCreateContextCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_property_create_context, [:pointer,:uint8,:uint32,:uint32], GetPropertyCreateContextCookie
    class GetPropertyCreateContextReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :context_len, :uint32,
          :pad2, [:uint8, 20]
    end

    attach_function :xcb_get_property_create_context_reply, [:pointer, GetPropertyCreateContextCookie, :pointer], :pointer

        
    class SetPropertyUseContextRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :context_len, :uint32
    end

    class SetPropertyUseContextCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_set_property_use_context_checked, [:pointer,:uint8,:uint32,:uint32], SetPropertyUseContextCookie
    attach_function :xcb_set_property_use_context, [:pointer,:uint8,:uint32,:uint32], SetPropertyUseContextCookie
    class GetPropertyUseContextRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :context_len, :uint32,
          :pad2, [:uint8, 20]
    end

    class GetPropertyUseContextCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_property_use_context, [:pointer,:uint8,:uint32,:uint32], GetPropertyUseContextCookie
    class GetPropertyUseContextReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :context_len, :uint32,
          :pad2, [:uint8, 20]
    end

    attach_function :xcb_get_property_use_context_reply, [:pointer, GetPropertyUseContextCookie, :pointer], :pointer

        
    class GetPropertyContextRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :context_len, :uint32,
          :pad2, [:uint8, 20]
    end

    class GetPropertyContextCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_property_context, [:pointer,:uint8,:uint32,:uint32], GetPropertyContextCookie
    class GetPropertyContextReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :context_len, :uint32,
          :pad2, [:uint8, 20]
    end

    attach_function :xcb_get_property_context_reply, [:pointer, GetPropertyContextCookie, :pointer], :pointer

        
    class GetPropertyDataContextRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :context_len, :uint32,
          :pad2, [:uint8, 20]
    end

    class GetPropertyDataContextCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_property_data_context, [:pointer,:uint8,:uint32,:uint32], GetPropertyDataContextCookie
    class GetPropertyDataContextReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :context_len, :uint32,
          :pad2, [:uint8, 20]
    end

    attach_function :xcb_get_property_data_context_reply, [:pointer, GetPropertyDataContextCookie, :pointer], :pointer

        
    class ListPropertiesRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :properties_len, :uint32,
          :pad2, [:uint8, 20]
    end

    class ListPropertiesCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_list_properties, [:pointer,:uint8,:uint32,:uint32], ListPropertiesCookie
    class ListPropertiesReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :properties_len, :uint32,
          :pad2, [:uint8, 20]
    end

    attach_function :xcb_list_properties_reply, [:pointer, ListPropertiesCookie, :pointer], :pointer

        
    class SetSelectionCreateContextRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :context_len, :uint32
    end

    class SetSelectionCreateContextCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_set_selection_create_context_checked, [:pointer,:uint8,:uint32,:uint32], SetSelectionCreateContextCookie
    attach_function :xcb_set_selection_create_context, [:pointer,:uint8,:uint32,:uint32], SetSelectionCreateContextCookie
    class GetSelectionCreateContextRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :context_len, :uint32,
          :pad2, [:uint8, 20]
    end

    class GetSelectionCreateContextCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_selection_create_context, [:pointer,:uint8,:uint32,:uint32], GetSelectionCreateContextCookie
    class GetSelectionCreateContextReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :context_len, :uint32,
          :pad2, [:uint8, 20]
    end

    attach_function :xcb_get_selection_create_context_reply, [:pointer, GetSelectionCreateContextCookie, :pointer], :pointer

        
    class SetSelectionUseContextRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :context_len, :uint32
    end

    class SetSelectionUseContextCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_set_selection_use_context_checked, [:pointer,:uint8,:uint32,:uint32], SetSelectionUseContextCookie
    attach_function :xcb_set_selection_use_context, [:pointer,:uint8,:uint32,:uint32], SetSelectionUseContextCookie
    class GetSelectionUseContextRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :context_len, :uint32,
          :pad2, [:uint8, 20]
    end

    class GetSelectionUseContextCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_selection_use_context, [:pointer,:uint8,:uint32,:uint32], GetSelectionUseContextCookie
    class GetSelectionUseContextReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :context_len, :uint32,
          :pad2, [:uint8, 20]
    end

    attach_function :xcb_get_selection_use_context_reply, [:pointer, GetSelectionUseContextCookie, :pointer], :pointer

        
    class GetSelectionContextRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :context_len, :uint32,
          :pad2, [:uint8, 20]
    end

    class GetSelectionContextCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_selection_context, [:pointer,:uint8,:uint32,:uint32], GetSelectionContextCookie
    class GetSelectionContextReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :context_len, :uint32,
          :pad2, [:uint8, 20]
    end

    attach_function :xcb_get_selection_context_reply, [:pointer, GetSelectionContextCookie, :pointer], :pointer

        
    class GetSelectionDataContextRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :context_len, :uint32,
          :pad2, [:uint8, 20]
    end

    class GetSelectionDataContextCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_selection_data_context, [:pointer,:uint8,:uint32,:uint32], GetSelectionDataContextCookie
    class GetSelectionDataContextReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :context_len, :uint32,
          :pad2, [:uint8, 20]
    end

    attach_function :xcb_get_selection_data_context_reply, [:pointer, GetSelectionDataContextCookie, :pointer], :pointer

        
    class ListSelectionsRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :selections_len, :uint32,
          :pad2, [:uint8, 20]
    end

    class ListSelectionsCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_list_selections, [:pointer,:uint8,:uint32,:uint32], ListSelectionsCookie
    class ListSelectionsReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :selections_len, :uint32,
          :pad2, [:uint8, 20]
    end

    attach_function :xcb_list_selections_reply, [:pointer, ListSelectionsCookie, :pointer], :pointer

        
    class GetClientContextRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :context_len, :uint32,
          :pad2, [:uint8, 20]
    end

    class GetClientContextCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_client_context, [:pointer,:uint8,:uint32,:uint32], GetClientContextCookie
    class GetClientContextReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :context_len, :uint32,
          :pad2, [:uint8, 20]
    end

    attach_function :xcb_get_client_context_reply, [:pointer, GetClientContextCookie, :pointer], :pointer

        
  end
end
