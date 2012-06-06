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
    typedef :uint32, :damage_t
    class DamageIterator < FFI::Struct
      layout \
          :data, :window_t,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_damage_next, [:pointer], :void
    attach_function :xcb_damage_end, [:pointer], GenericIterator
    REPORT_LEVEL_RAW_RECTANGLES = 1
    REPORT_LEVEL_DELTA_RECTANGLES = 2
    REPORT_LEVEL_BOUNDING_BOX = 3
    REPORT_LEVEL_NON_EMPTY = 4
    class NotifyEvent < FFI::Struct
      layout \
          :response_type, :uint8,
          :level, :uint8,
          :drawable, :drawable_t,
          :damage, :damage_t,
          :timestamp, :timestamp_t,
          :area, Rectangle,
          :geometry, Rectangle
    end

    class BadDamageError < FFI::Struct
      layout \
          :response_type, :uint8,
          :error_code, :uint8,
          :sequence, :uint16
    end

    class QueryVersionRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :major_version, :uint32,
          :minor_version, :uint32,
          :pad2, [:uint8, 16]
    end

    class QueryVersionCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_query_version, [:pointer,:uint8,:uint32,:uint32], QueryVersionCookie
    class QueryVersionReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :major_version, :uint32,
          :minor_version, :uint32,
          :pad2, [:uint8, 16]
    end

    attach_function :xcb_query_version_reply, [:pointer, QueryVersionCookie, :pointer], :pointer

        
    class CreateRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :damage, :damage_t,
          :drawable, :drawable_t,
          :level, :uint8,
          :pad1, [:uint8, 3]
    end

    class CreateCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_create_checked, [:pointer,:uint8,:damage_t,:drawable_t,:uint8], CreateCookie
    attach_function :xcb_create, [:pointer,:uint8,:damage_t,:drawable_t,:uint8], CreateCookie
    class DestroyRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :damage, :damage_t
    end

    class DestroyCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_destroy_checked, [:pointer,:uint8,:damage_t], DestroyCookie
    attach_function :xcb_destroy, [:pointer,:uint8,:damage_t], DestroyCookie
    class SubtractRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :damage, :damage_t,
          :repair, :region_t,
          :parts, :region_t
    end

    class SubtractCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_subtract_checked, [:pointer,:uint8,:damage_t,:region_t,:region_t], SubtractCookie
    attach_function :xcb_subtract, [:pointer,:uint8,:damage_t,:region_t,:region_t], SubtractCookie
    class AddRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :drawable, :drawable_t,
          :region, :region_t
    end

    class AddCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_add_checked, [:pointer,:uint8,:drawable_t,:region_t], AddCookie
    attach_function :xcb_add, [:pointer,:uint8,:drawable_t,:region_t], AddCookie
  end
end
