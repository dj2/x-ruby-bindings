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
    typedef :uint32, :context_t
    class ContextIterator < FFI::Struct
      layout \
          :data, :window_t,
          :rem, :int,
          :indent, :int
    end
    attach_function :context_next, :xcb_context_next, [:pointer], :void
    attach_function :context_end, :xcb_context_end, [:pointer], GenericIterator
    typedef :uint32, :surface_t
    class SurfaceIterator < FFI::Struct
      layout \
          :data, :window_t,
          :rem, :int,
          :indent, :int
    end
    attach_function :surface_next, :xcb_surface_next, [:pointer], :void
    attach_function :surface_end, :xcb_surface_end, [:pointer], GenericIterator
    typedef :uint32, :subpicture_t
    class SubpictureIterator < FFI::Struct
      layout \
          :data, :window_t,
          :rem, :int,
          :indent, :int
    end
    attach_function :subpicture_next, :xcb_subpicture_next, [:pointer], :void
    attach_function :subpicture_end, :xcb_subpicture_end, [:pointer], GenericIterator
    class SurfaceInfo < FFI::Struct
      layout \
          :id, :surface_t,
          :chroma_format, :uint16,
          :pad0, :uint16,
          :max_width, :uint16,
          :max_height, :uint16,
          :subpicture_max_width, :uint16,
          :subpicture_max_height, :uint16,
          :mc_type, :uint32,
          :flags, :uint32
    end

    class SurfaceInfoIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :surface_info_next, :xcb_surface_info_next, [:pointer], :void
    attach_function :surface_info_end, :xcb_surface_info_end, [:pointer], GenericIterator
    class QueryVersionRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :major, :uint32,
          :minor, :uint32
    end

    class QueryVersionCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :query_version, :xcb_query_version, [:pointer,:uint8,:uint32,:uint32], QueryVersionCookie
    class QueryVersionReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :major, :uint32,
          :minor, :uint32
    end

    attach_function :query_version_reply, :xcb_query_version_reply, [:pointer, QueryVersionCookie, :pointer], :pointer

        
    class ListSurfaceTypesRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :num, :uint32,
          :pad2, [:uint8, 20]
    end

    class ListSurfaceTypesCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :list_surface_types, :xcb_list_surface_types, [:pointer,:uint8,:uint32,:uint32], ListSurfaceTypesCookie
    class ListSurfaceTypesReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :num, :uint32,
          :pad2, [:uint8, 20]
    end

    attach_function :list_surface_types_reply, :xcb_list_surface_types_reply, [:pointer, ListSurfaceTypesCookie, :pointer], :pointer

        
    class CreateContextRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :width_actual, :uint16,
          :height_actual, :uint16,
          :flags_return, :uint32,
          :pad2, [:uint8, 20]
    end

    class CreateContextCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :create_context, :xcb_create_context, [:pointer,:uint8,:uint16,:uint16,:uint32,:uint32], CreateContextCookie
    class CreateContextReply < FFI::Struct
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

    attach_function :create_context_reply, :xcb_create_context_reply, [:pointer, CreateContextCookie, :pointer], :pointer

        
    class DestroyContextRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :context_id, :context_t
    end

    class DestroyContextCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :destroy_context_checked, :xcb_destroy_context_checked, [:pointer,:uint8,:context_t], DestroyContextCookie
    attach_function :destroy_context, :xcb_destroy_context, [:pointer,:uint8,:context_t], DestroyContextCookie
    class CreateSurfaceRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :pad2, [:uint8, 24]
    end

    class CreateSurfaceCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :create_surface, :xcb_create_surface, [:pointer,:uint8,:uint32], CreateSurfaceCookie
    class CreateSurfaceReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :pad2, [:uint8, 24]
    end

    attach_function :create_surface_reply, :xcb_create_surface_reply, [:pointer, CreateSurfaceCookie, :pointer], :pointer

        
    class DestroySurfaceRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :surface_id, :surface_t
    end

    class DestroySurfaceCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :destroy_surface_checked, :xcb_destroy_surface_checked, [:pointer,:uint8,:surface_t], DestroySurfaceCookie
    attach_function :destroy_surface, :xcb_destroy_surface, [:pointer,:uint8,:surface_t], DestroySurfaceCookie
    class CreateSubpictureRequest < FFI::Struct
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

    class CreateSubpictureCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :create_subpicture, :xcb_create_subpicture, [:pointer,:uint8,:uint16,:uint16,:uint16,:uint16,:uint32,:uint32], CreateSubpictureCookie
    class CreateSubpictureReply < FFI::Struct
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

    attach_function :create_subpicture_reply, :xcb_create_subpicture_reply, [:pointer, CreateSubpictureCookie, :pointer], :pointer

        
    class DestroySubpictureRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :subpicture_id, :subpicture_t
    end

    class DestroySubpictureCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :destroy_subpicture_checked, :xcb_destroy_subpicture_checked, [:pointer,:uint8,:subpicture_t], DestroySubpictureCookie
    attach_function :destroy_subpicture, :xcb_destroy_subpicture, [:pointer,:uint8,:subpicture_t], DestroySubpictureCookie
    class ListSubpictureTypesRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :num, :uint32,
          :pad2, [:uint8, 20]
    end

    class ListSubpictureTypesCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :list_subpicture_types, :xcb_list_subpicture_types, [:pointer,:uint8,:uint32,:uint32], ListSubpictureTypesCookie
    class ListSubpictureTypesReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :num, :uint32,
          :pad2, [:uint8, 20]
    end

    attach_function :list_subpicture_types_reply, :xcb_list_subpicture_types_reply, [:pointer, ListSubpictureTypesCookie, :pointer], :pointer

        
  end
end
