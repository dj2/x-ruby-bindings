#
# This file auto-generated. Do not edit.
#

require 'ffi'
require 'xrb/xv'
class Xrb
  class XvMC
    extend FFI::Library
    ffi_lib 'xvmc'
    MAJOR_VERSION = 1
    MINOR_VERSION = 1
    typedef :uint32, :xrb_context_t
    class XrbContextIterator < FFI::Struct
      layout \
          :data, :xrb_window_t,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_context_next, [:pointer], :void
    attach_function :xcb_context_end, [:pointer], XrbGenericIterator
    typedef :uint32, :xrb_surface_t
    class XrbSurfaceIterator < FFI::Struct
      layout \
          :data, :xrb_window_t,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_surface_next, [:pointer], :void
    attach_function :xcb_surface_end, [:pointer], XrbGenericIterator
    typedef :uint32, :xrb_subpicture_t
    class XrbSubpictureIterator < FFI::Struct
      layout \
          :data, :xrb_window_t,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_subpicture_next, [:pointer], :void
    attach_function :xcb_subpicture_end, [:pointer], XrbGenericIterator
    class XrbSurfaceInfo < FFI::Struct
      layout \
          :id, :xrb_surface_t,
          :chroma_format, :uint16,
          :pad0, :uint16,
          :max_width, :uint16,
          :max_height, :uint16,
          :subpicture_max_width, :uint16,
          :subpicture_max_height, :uint16,
          :mc_type, :uint32,
          :flags, :uint32
    end

    class XrbSurfaceInfoIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_surface_info_next, [:pointer], :void
    attach_function :xcb_surface_info_end, [:pointer], XrbGenericIterator
    class XrbQueryVersionRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :major, :uint32,
          :minor, :uint32
    end

    class XrbQueryVersionCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_query_version, [:pointer,:uint8,:uint8,:uint16,:uint32,:uint32], XrbQueryVersionCookie
    class XrbQueryVersionReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :major, :uint32,
          :minor, :uint32
    end

    attach_function :xcb_query_version_reply, [:pointer, XrbQueryVersionCookie, :pointer], :pointer

        
    class XrbListSurfaceTypesRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :num, :uint32,
          :pad2, [:uint8, 20]
    end

    class XrbListSurfaceTypesCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_list_surface_types, [:pointer,:uint8,:uint8,:uint16,:uint32,:uint32], XrbListSurfaceTypesCookie
    class XrbListSurfaceTypesReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :num, :uint32,
          :pad2, [:uint8, 20]
    end

    attach_function :xcb_list_surface_types_reply, [:pointer, XrbListSurfaceTypesCookie, :pointer], :pointer

        
    class XrbCreateContextRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :width_actual, :uint16,
          :height_actual, :uint16,
          :flags_return, :uint32,
          :pad2, [:uint8, 20]
    end

    class XrbCreateContextCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_create_context, [:pointer,:uint8,:uint8,:uint16,:uint16,:uint16,:uint32,:uint32], XrbCreateContextCookie
    class XrbCreateContextReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :width_actual, :uint16,
          :height_actual, :uint16,
          :flags_return, :uint32,
          :pad2, [:uint8, 20]
    end

    attach_function :xcb_create_context_reply, [:pointer, XrbCreateContextCookie, :pointer], :pointer

        
    class XrbDestroyContextRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :context_id, :xrb_context_t
    end

    class XrbDestroyContextCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_destroy_context_checked, [:pointer,:uint8,:uint8,:uint16,:xrb_context_t], XrbDestroyContextCookie
    attach_function :xcb_destroy_context, [:pointer,:uint8,:uint8,:uint16,:xrb_context_t], XrbDestroyContextCookie
    class XrbCreateSurfaceRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :pad2, [:uint8, 24]
    end

    class XrbCreateSurfaceCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_create_surface, [:pointer,:uint8,:uint8,:uint16,:uint32], XrbCreateSurfaceCookie
    class XrbCreateSurfaceReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :pad2, [:uint8, 24]
    end

    attach_function :xcb_create_surface_reply, [:pointer, XrbCreateSurfaceCookie, :pointer], :pointer

        
    class XrbDestroySurfaceRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :surface_id, :xrb_surface_t
    end

    class XrbDestroySurfaceCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_destroy_surface_checked, [:pointer,:uint8,:uint8,:uint16,:xrb_surface_t], XrbDestroySurfaceCookie
    attach_function :xcb_destroy_surface, [:pointer,:uint8,:uint8,:uint16,:xrb_surface_t], XrbDestroySurfaceCookie
    class XrbCreateSubpictureRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :width_actual, :uint16,
          :height_actual, :uint16,
          :num_palette_entries, :uint16,
          :entry_bytes, :uint16,
          :component_order_len, [:uint32 , 4],
          :pad2, [:uint8, 12]
    end

    class XrbCreateSubpictureCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_create_subpicture, [:pointer,:uint8,:uint8,:uint16,:uint16,:uint16,:uint16,:uint16,:uint32,:uint32], XrbCreateSubpictureCookie
    class XrbCreateSubpictureReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :width_actual, :uint16,
          :height_actual, :uint16,
          :num_palette_entries, :uint16,
          :entry_bytes, :uint16,
          :component_order_len, [:uint32 , 4],
          :pad2, [:uint8, 12]
    end

    attach_function :xcb_create_subpicture_reply, [:pointer, XrbCreateSubpictureCookie, :pointer], :pointer

        
    class XrbDestroySubpictureRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :subpicture_id, :xrb_subpicture_t
    end

    class XrbDestroySubpictureCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_destroy_subpicture_checked, [:pointer,:uint8,:uint8,:uint16,:xrb_subpicture_t], XrbDestroySubpictureCookie
    attach_function :xcb_destroy_subpicture, [:pointer,:uint8,:uint8,:uint16,:xrb_subpicture_t], XrbDestroySubpictureCookie
    class XrbListSubpictureTypesRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :num, :uint32,
          :pad2, [:uint8, 20]
    end

    class XrbListSubpictureTypesCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_list_subpicture_types, [:pointer,:uint8,:uint8,:uint16,:uint32,:uint32], XrbListSubpictureTypesCookie
    class XrbListSubpictureTypesReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :num, :uint32,
          :pad2, [:uint8, 20]
    end

    attach_function :xcb_list_subpicture_types_reply, [:pointer, XrbListSubpictureTypesCookie, :pointer], :pointer

        
  end
end
