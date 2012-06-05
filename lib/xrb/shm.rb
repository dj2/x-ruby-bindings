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
    typedef :uint32, :xrb_seg_t
    class XrbSegIterator < FFI::Struct
      layout \
          :data, :xrb_window_t,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_seg_next, [:pointer], :void
    attach_function :xcb_seg_end, [:pointer], XrbGenericIterator
    class XrbCompletionEvent < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :drawable, :xrb_drawable_t,
          :minor_event, :uint16,
          :major_event, :uint8,
          :pad2, [:uint8, 1],
          :shmseg, :xrb_seg_t,
          :offset, :uint32
    end

    class XrbQueryVersionRequest < FFI::Struct
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

    class XrbQueryVersionCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_query_version, [:pointer,:uint8,:uint8,:uint16,:uint16,:uint16,:uint16,:uint16,:uint8], XrbQueryVersionCookie
    class XrbQueryVersionReply < FFI::Struct
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

    attach_function :xcb_query_version_reply, [:pointer, XrbQueryVersionCookie, :pointer], :pointer

        
    class XrbAttachRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :shmseg, :xrb_seg_t,
          :shmid, :uint32,
          :read_only, :bool,
          :pad1, [:uint8, 3]
    end

    class XrbAttachCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_attach_checked, [:pointer,:uint8,:uint8,:uint16,:xrb_seg_t,:uint32,:bool], XrbAttachCookie
    attach_function :xcb_attach, [:pointer,:uint8,:uint8,:uint16,:xrb_seg_t,:uint32,:bool], XrbAttachCookie
    class XrbDetachRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :shmseg, :xrb_seg_t
    end

    class XrbDetachCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_detach_checked, [:pointer,:uint8,:uint8,:uint16,:xrb_seg_t], XrbDetachCookie
    attach_function :xcb_detach, [:pointer,:uint8,:uint8,:uint16,:xrb_seg_t], XrbDetachCookie
    class XrbPutImageRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :drawable, :xrb_drawable_t,
          :gc, :xrb_gcontext_t,
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
          :shmseg, :xrb_seg_t,
          :offset, :uint32
    end

    class XrbPutImageCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_put_image_checked, [:pointer,:uint8,:uint8,:uint16,:xrb_drawable_t,:xrb_gcontext_t,:uint16,:uint16,:uint16,:uint16,:uint16,:uint16,:int16,:int16,:uint8,:uint8,:uint8,:xrb_seg_t,:uint32], XrbPutImageCookie
    attach_function :xcb_put_image, [:pointer,:uint8,:uint8,:uint16,:xrb_drawable_t,:xrb_gcontext_t,:uint16,:uint16,:uint16,:uint16,:uint16,:uint16,:int16,:int16,:uint8,:uint8,:uint8,:xrb_seg_t,:uint32], XrbPutImageCookie
    class XrbGetImageRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :visual, :xrb_visualid_t,
          :size, :uint32
    end

    class XrbGetImageCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_image, [:pointer,:uint8,:uint8,:uint16,:xrb_visualid_t,:uint32], XrbGetImageCookie
    class XrbGetImageReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :depth, :uint8,
          :sequence, :uint16,
          :length, :uint32,
          :visual, :xrb_visualid_t,
          :size, :uint32
    end

    attach_function :xcb_get_image_reply, [:pointer, XrbGetImageCookie, :pointer], :pointer

        
    class XrbCreatePixmapRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :pid, :xrb_pixmap_t,
          :drawable, :xrb_drawable_t,
          :width, :uint16,
          :height, :uint16,
          :depth, :uint8,
          :pad1, [:uint8, 3],
          :shmseg, :xrb_seg_t,
          :offset, :uint32
    end

    class XrbCreatePixmapCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_create_pixmap_checked, [:pointer,:uint8,:uint8,:uint16,:xrb_pixmap_t,:xrb_drawable_t,:uint16,:uint16,:uint8,:xrb_seg_t,:uint32], XrbCreatePixmapCookie
    attach_function :xcb_create_pixmap, [:pointer,:uint8,:uint8,:uint16,:xrb_pixmap_t,:xrb_drawable_t,:uint16,:uint16,:uint8,:xrb_seg_t,:uint32], XrbCreatePixmapCookie
  end
end
