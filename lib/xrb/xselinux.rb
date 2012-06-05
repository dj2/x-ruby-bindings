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
    class XrbListItem < FFI::Struct
      layout \
          :name, :xrb_atom_t,
          :object_context_len, :uint32,
          :data_context_len, :uint32
    end

    class XrbListItemIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_list_item_next, [:pointer], :void
    attach_function :xcb_list_item_end, [:pointer], XrbGenericIterator
    attach_function :xcb_list_item_sizeof, [:pointer], :int
    attach_function :xcb_list_item_object_context, [:pointer], :pointer
    attach_function :xcb_list_item_object_context_length, [:pointer], :int
    attach_function :xcb_list_item_data_context, [:pointer], :pointer
    attach_function :xcb_list_item_data_context_length, [:pointer], :int
    class XrbQueryVersionRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :server_major, :uint16,
          :server_minor, :uint16
    end

    class XrbQueryVersionCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_query_version, [:pointer,:uint8,:uint16,:uint16], XrbQueryVersionCookie
    class XrbQueryVersionReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :server_major, :uint16,
          :server_minor, :uint16
    end

    attach_function :xcb_query_version_reply, [:pointer, XrbQueryVersionCookie, :pointer], :pointer

        
    class XrbSetDeviceCreateContextRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :context_len, :uint32
    end

    class XrbSetDeviceCreateContextCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_set_device_create_context_checked, [:pointer,:uint8,:uint32,:uint32], XrbSetDeviceCreateContextCookie
    attach_function :xcb_set_device_create_context, [:pointer,:uint8,:uint32,:uint32], XrbSetDeviceCreateContextCookie
    class XrbGetDeviceCreateContextRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :context_len, :uint32,
          :pad2, [:uint8, 20]
    end

    class XrbGetDeviceCreateContextCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_device_create_context, [:pointer,:uint8,:uint32,:uint32], XrbGetDeviceCreateContextCookie
    class XrbGetDeviceCreateContextReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :context_len, :uint32,
          :pad2, [:uint8, 20]
    end

    attach_function :xcb_get_device_create_context_reply, [:pointer, XrbGetDeviceCreateContextCookie, :pointer], :pointer

        
    class XrbSetDeviceContextRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :device, :uint32,
          :context_len, :uint32
    end

    class XrbSetDeviceContextCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_set_device_context_checked, [:pointer,:uint8,:uint32,:uint32,:uint32], XrbSetDeviceContextCookie
    attach_function :xcb_set_device_context, [:pointer,:uint8,:uint32,:uint32,:uint32], XrbSetDeviceContextCookie
    class XrbGetDeviceContextRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :context_len, :uint32,
          :pad2, [:uint8, 20]
    end

    class XrbGetDeviceContextCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_device_context, [:pointer,:uint8,:uint32,:uint32], XrbGetDeviceContextCookie
    class XrbGetDeviceContextReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :context_len, :uint32,
          :pad2, [:uint8, 20]
    end

    attach_function :xcb_get_device_context_reply, [:pointer, XrbGetDeviceContextCookie, :pointer], :pointer

        
    class XrbSetWindowCreateContextRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :context_len, :uint32
    end

    class XrbSetWindowCreateContextCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_set_window_create_context_checked, [:pointer,:uint8,:uint32,:uint32], XrbSetWindowCreateContextCookie
    attach_function :xcb_set_window_create_context, [:pointer,:uint8,:uint32,:uint32], XrbSetWindowCreateContextCookie
    class XrbGetWindowCreateContextRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :context_len, :uint32,
          :pad2, [:uint8, 20]
    end

    class XrbGetWindowCreateContextCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_window_create_context, [:pointer,:uint8,:uint32,:uint32], XrbGetWindowCreateContextCookie
    class XrbGetWindowCreateContextReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :context_len, :uint32,
          :pad2, [:uint8, 20]
    end

    attach_function :xcb_get_window_create_context_reply, [:pointer, XrbGetWindowCreateContextCookie, :pointer], :pointer

        
    class XrbGetWindowContextRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :context_len, :uint32,
          :pad2, [:uint8, 20]
    end

    class XrbGetWindowContextCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_window_context, [:pointer,:uint8,:uint32,:uint32], XrbGetWindowContextCookie
    class XrbGetWindowContextReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :context_len, :uint32,
          :pad2, [:uint8, 20]
    end

    attach_function :xcb_get_window_context_reply, [:pointer, XrbGetWindowContextCookie, :pointer], :pointer

        
    class XrbSetPropertyCreateContextRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :context_len, :uint32
    end

    class XrbSetPropertyCreateContextCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_set_property_create_context_checked, [:pointer,:uint8,:uint32,:uint32], XrbSetPropertyCreateContextCookie
    attach_function :xcb_set_property_create_context, [:pointer,:uint8,:uint32,:uint32], XrbSetPropertyCreateContextCookie
    class XrbGetPropertyCreateContextRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :context_len, :uint32,
          :pad2, [:uint8, 20]
    end

    class XrbGetPropertyCreateContextCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_property_create_context, [:pointer,:uint8,:uint32,:uint32], XrbGetPropertyCreateContextCookie
    class XrbGetPropertyCreateContextReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :context_len, :uint32,
          :pad2, [:uint8, 20]
    end

    attach_function :xcb_get_property_create_context_reply, [:pointer, XrbGetPropertyCreateContextCookie, :pointer], :pointer

        
    class XrbSetPropertyUseContextRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :context_len, :uint32
    end

    class XrbSetPropertyUseContextCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_set_property_use_context_checked, [:pointer,:uint8,:uint32,:uint32], XrbSetPropertyUseContextCookie
    attach_function :xcb_set_property_use_context, [:pointer,:uint8,:uint32,:uint32], XrbSetPropertyUseContextCookie
    class XrbGetPropertyUseContextRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :context_len, :uint32,
          :pad2, [:uint8, 20]
    end

    class XrbGetPropertyUseContextCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_property_use_context, [:pointer,:uint8,:uint32,:uint32], XrbGetPropertyUseContextCookie
    class XrbGetPropertyUseContextReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :context_len, :uint32,
          :pad2, [:uint8, 20]
    end

    attach_function :xcb_get_property_use_context_reply, [:pointer, XrbGetPropertyUseContextCookie, :pointer], :pointer

        
    class XrbGetPropertyContextRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :context_len, :uint32,
          :pad2, [:uint8, 20]
    end

    class XrbGetPropertyContextCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_property_context, [:pointer,:uint8,:uint32,:uint32], XrbGetPropertyContextCookie
    class XrbGetPropertyContextReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :context_len, :uint32,
          :pad2, [:uint8, 20]
    end

    attach_function :xcb_get_property_context_reply, [:pointer, XrbGetPropertyContextCookie, :pointer], :pointer

        
    class XrbGetPropertyDataContextRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :context_len, :uint32,
          :pad2, [:uint8, 20]
    end

    class XrbGetPropertyDataContextCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_property_data_context, [:pointer,:uint8,:uint32,:uint32], XrbGetPropertyDataContextCookie
    class XrbGetPropertyDataContextReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :context_len, :uint32,
          :pad2, [:uint8, 20]
    end

    attach_function :xcb_get_property_data_context_reply, [:pointer, XrbGetPropertyDataContextCookie, :pointer], :pointer

        
    class XrbListPropertiesRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :properties_len, :uint32,
          :pad2, [:uint8, 20]
    end

    class XrbListPropertiesCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_list_properties, [:pointer,:uint8,:uint32,:uint32], XrbListPropertiesCookie
    class XrbListPropertiesReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :properties_len, :uint32,
          :pad2, [:uint8, 20]
    end

    attach_function :xcb_list_properties_reply, [:pointer, XrbListPropertiesCookie, :pointer], :pointer

        
    class XrbSetSelectionCreateContextRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :context_len, :uint32
    end

    class XrbSetSelectionCreateContextCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_set_selection_create_context_checked, [:pointer,:uint8,:uint32,:uint32], XrbSetSelectionCreateContextCookie
    attach_function :xcb_set_selection_create_context, [:pointer,:uint8,:uint32,:uint32], XrbSetSelectionCreateContextCookie
    class XrbGetSelectionCreateContextRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :context_len, :uint32,
          :pad2, [:uint8, 20]
    end

    class XrbGetSelectionCreateContextCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_selection_create_context, [:pointer,:uint8,:uint32,:uint32], XrbGetSelectionCreateContextCookie
    class XrbGetSelectionCreateContextReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :context_len, :uint32,
          :pad2, [:uint8, 20]
    end

    attach_function :xcb_get_selection_create_context_reply, [:pointer, XrbGetSelectionCreateContextCookie, :pointer], :pointer

        
    class XrbSetSelectionUseContextRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :context_len, :uint32
    end

    class XrbSetSelectionUseContextCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_set_selection_use_context_checked, [:pointer,:uint8,:uint32,:uint32], XrbSetSelectionUseContextCookie
    attach_function :xcb_set_selection_use_context, [:pointer,:uint8,:uint32,:uint32], XrbSetSelectionUseContextCookie
    class XrbGetSelectionUseContextRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :context_len, :uint32,
          :pad2, [:uint8, 20]
    end

    class XrbGetSelectionUseContextCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_selection_use_context, [:pointer,:uint8,:uint32,:uint32], XrbGetSelectionUseContextCookie
    class XrbGetSelectionUseContextReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :context_len, :uint32,
          :pad2, [:uint8, 20]
    end

    attach_function :xcb_get_selection_use_context_reply, [:pointer, XrbGetSelectionUseContextCookie, :pointer], :pointer

        
    class XrbGetSelectionContextRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :context_len, :uint32,
          :pad2, [:uint8, 20]
    end

    class XrbGetSelectionContextCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_selection_context, [:pointer,:uint8,:uint32,:uint32], XrbGetSelectionContextCookie
    class XrbGetSelectionContextReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :context_len, :uint32,
          :pad2, [:uint8, 20]
    end

    attach_function :xcb_get_selection_context_reply, [:pointer, XrbGetSelectionContextCookie, :pointer], :pointer

        
    class XrbGetSelectionDataContextRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :context_len, :uint32,
          :pad2, [:uint8, 20]
    end

    class XrbGetSelectionDataContextCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_selection_data_context, [:pointer,:uint8,:uint32,:uint32], XrbGetSelectionDataContextCookie
    class XrbGetSelectionDataContextReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :context_len, :uint32,
          :pad2, [:uint8, 20]
    end

    attach_function :xcb_get_selection_data_context_reply, [:pointer, XrbGetSelectionDataContextCookie, :pointer], :pointer

        
    class XrbListSelectionsRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :selections_len, :uint32,
          :pad2, [:uint8, 20]
    end

    class XrbListSelectionsCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_list_selections, [:pointer,:uint8,:uint32,:uint32], XrbListSelectionsCookie
    class XrbListSelectionsReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :selections_len, :uint32,
          :pad2, [:uint8, 20]
    end

    attach_function :xcb_list_selections_reply, [:pointer, XrbListSelectionsCookie, :pointer], :pointer

        
    class XrbGetClientContextRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :context_len, :uint32,
          :pad2, [:uint8, 20]
    end

    class XrbGetClientContextCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_client_context, [:pointer,:uint8,:uint32,:uint32], XrbGetClientContextCookie
    class XrbGetClientContextReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :context_len, :uint32,
          :pad2, [:uint8, 20]
    end

    attach_function :xcb_get_client_context_reply, [:pointer, XrbGetClientContextCookie, :pointer], :pointer

        
  end
end
