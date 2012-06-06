#
# This file auto-generated. Do not edit.
#

require 'ffi'
require 'xrb/xproto'
class Xrb
  class Shm
    extend FFI::Library
    ffi_lib 'shm'
    MAJOR_VERSION = 1
    MINOR_VERSION = 1
    typedef :uint32, :seg_t
    class SegIterator < FFI::Struct
      layout \
          :data, :window_t,
          :rem, :int,
          :indent, :int
    end
    attach_function :seg_next, :xcb_seg_next, [:pointer], :void
    attach_function :seg_end, :xcb_seg_end, [:pointer], GenericIterator
    class CompletionEvent < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :drawable, :drawable_t,
          :minor_event, :uint16,
          :major_event, :uint8,
          :pad2, [:uint8, 1],
          :shmseg, :seg_t,
          :offset, :uint32
    end

    class QueryVersionRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :major_version, :uint16,
          :minor_version, :uint16,
          :uid, :uint16,
          :gid, :uint16,
          :pixmap_format, :uint8,
          :pad1, [:uint8, 15]
    end

    class QueryVersionCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :query_version, :xcb_query_version, [:pointer,:uint8,:uint16,:uint16,:uint16,:uint16,:uint8], QueryVersionCookie
    class QueryVersionReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :shared_pixmaps, :bool,
          :sequence, :uint16,
          :length, :uint32,
          :major_version, :uint16,
          :minor_version, :uint16,
          :uid, :uint16,
          :gid, :uint16,
          :pixmap_format, :uint8,
          :pad1, [:uint8, 15]
    end

    attach_function :query_version_reply, :xcb_query_version_reply, [:pointer, QueryVersionCookie, :pointer], :pointer

        
    class AttachRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :shmseg, :seg_t,
          :shmid, :uint32,
          :read_only, :bool,
          :pad1, [:uint8, 3]
    end

    class AttachCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :attach_checked, :xcb_attach_checked, [:pointer,:uint8,:seg_t,:uint32,:bool], AttachCookie
    attach_function :attach, :xcb_attach, [:pointer,:uint8,:seg_t,:uint32,:bool], AttachCookie
    class DetachRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :shmseg, :seg_t
    end

    class DetachCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :detach_checked, :xcb_detach_checked, [:pointer,:uint8,:seg_t], DetachCookie
    attach_function :detach, :xcb_detach, [:pointer,:uint8,:seg_t], DetachCookie
    class PutImageRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :drawable, :drawable_t,
          :gc, :gcontext_t,
          :total_width, :uint16,
          :total_height, :uint16,
          :src_x, :uint16,
          :src_y, :uint16,
          :src_width, :uint16,
          :src_height, :uint16,
          :dst_x, :int16,
          :dst_y, :int16,
          :depth, :uint8,
          :format, :uint8,
          :send_event, :uint8,
          :pad1, [:uint8, 1],
          :shmseg, :seg_t,
          :offset, :uint32
    end

    class PutImageCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :put_image_checked, :xcb_put_image_checked, [:pointer,:uint8,:drawable_t,:gcontext_t,:uint16,:uint16,:uint16,:uint16,:uint16,:uint16,:int16,:int16,:uint8,:uint8,:uint8,:seg_t,:uint32], PutImageCookie
    attach_function :put_image, :xcb_put_image, [:pointer,:uint8,:drawable_t,:gcontext_t,:uint16,:uint16,:uint16,:uint16,:uint16,:uint16,:int16,:int16,:uint8,:uint8,:uint8,:seg_t,:uint32], PutImageCookie
    class GetImageRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :visual, :visualid_t,
          :size, :uint32
    end

    class GetImageCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :get_image, :xcb_get_image, [:pointer,:uint8,:visualid_t,:uint32], GetImageCookie
    class GetImageReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :depth, :uint8,
          :sequence, :uint16,
          :length, :uint32,
          :visual, :visualid_t,
          :size, :uint32
    end

    attach_function :get_image_reply, :xcb_get_image_reply, [:pointer, GetImageCookie, :pointer], :pointer

        
    class CreatePixmapRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :pid, :pixmap_t,
          :drawable, :drawable_t,
          :width, :uint16,
          :height, :uint16,
          :depth, :uint8,
          :pad1, [:uint8, 3],
          :shmseg, :seg_t,
          :offset, :uint32
    end

    class CreatePixmapCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :create_pixmap_checked, :xcb_create_pixmap_checked, [:pointer,:uint8,:pixmap_t,:drawable_t,:uint16,:uint16,:uint8,:seg_t,:uint32], CreatePixmapCookie
    attach_function :create_pixmap, :xcb_create_pixmap, [:pointer,:uint8,:pixmap_t,:drawable_t,:uint16,:uint16,:uint8,:seg_t,:uint32], CreatePixmapCookie
  end
end
