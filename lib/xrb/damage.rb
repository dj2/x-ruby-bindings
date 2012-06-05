#
# This file auto-generated. Do not edit.
#

require 'ffi'
require 'xrb/xproto'
require 'xrb/xfixes'
class Xrb
  class Damage
    extend FFI::Library
    ffi_lib 'damage'
    MAJOR_VERSION = 1
    MINOR_VERSION = 1
    typedef :uint32, :xrb_damage_t
    class XrbDamageIterator < FFI::Struct
      layout \
          :data, :xrb_window_t,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_damage_next, [:pointer], :void
    attach_function :xcb_damage_end, [:pointer], XrbGenericIterator
    enum :xrb_report_level_t, [
        :xrb_report_level_raw_rectangles, 1,
        :xrb_report_level_delta_rectangles, 2,
        :xrb_report_level_bounding_box, 3,
        :xrb_report_level_non_empty, 4
    ]
    class XrbNotifyEvent < FFI::Struct
      layout \
          :response_type, :uint8,
          :level, :uint8,
          :drawable, :xrb_drawable_t,
          :damage, :xrb_damage_t,
          :timestamp, :xrb_timestamp_t,
          :area, XrbRectangle,
          :geometry, XrbRectangle
    end

    class XrbBadDamageError < FFI::Struct
      layout \
          :response_type, :uint8,
          :error_code, :uint8,
          :sequence, :uint16
    end

    class XrbQueryVersionRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :major_version, :uint32,
          :minor_version, :uint32,
          :pad2, [:uint8, 16]
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
          :major_version, :uint32,
          :minor_version, :uint32,
          :pad2, [:uint8, 16]
    end

    attach_function :xcb_query_version_reply, [:pointer, XrbQueryVersionCookie, :pointer], :pointer

        
    class XrbCreateRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :damage, :xrb_damage_t,
          :drawable, :xrb_drawable_t,
          :level, :uint8,
          :pad1, [:uint8, 3]
    end

    class XrbCreateCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_create_checked, [:pointer,:uint8,:uint8,:uint16,:xrb_damage_t,:xrb_drawable_t,:uint8], XrbCreateCookie
    attach_function :xcb_create, [:pointer,:uint8,:uint8,:uint16,:xrb_damage_t,:xrb_drawable_t,:uint8], XrbCreateCookie
    class XrbDestroyRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :damage, :xrb_damage_t
    end

    class XrbDestroyCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_destroy_checked, [:pointer,:uint8,:uint8,:uint16,:xrb_damage_t], XrbDestroyCookie
    attach_function :xcb_destroy, [:pointer,:uint8,:uint8,:uint16,:xrb_damage_t], XrbDestroyCookie
    class XrbSubtractRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :damage, :xrb_damage_t,
          :repair, :xrb_region_t,
          :parts, :xrb_region_t
    end

    class XrbSubtractCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_subtract_checked, [:pointer,:uint8,:uint8,:uint16,:xrb_damage_t,:xrb_region_t,:xrb_region_t], XrbSubtractCookie
    attach_function :xcb_subtract, [:pointer,:uint8,:uint8,:uint16,:xrb_damage_t,:xrb_region_t,:xrb_region_t], XrbSubtractCookie
    class XrbAddRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :drawable, :xrb_drawable_t,
          :region, :xrb_region_t
    end

    class XrbAddCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_add_checked, [:pointer,:uint8,:uint8,:uint16,:xrb_drawable_t,:xrb_region_t], XrbAddCookie
    attach_function :xcb_add, [:pointer,:uint8,:uint8,:uint16,:xrb_drawable_t,:xrb_region_t], XrbAddCookie
  end
end
