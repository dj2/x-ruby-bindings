#
# This file was auto-generated. Do not edit.
#

module Xrb
  module XF86Dri
    module Request
      class QueryVersion < Xrb::Message
        include Xrb::Request

        OPCODE = 0

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :dri_major_version, {type: :uint16},
            :dri_minor_version, {type: :uint16},
            :dri_minor_patch, {type: :uint32}
      end

      class QueryDirectRenderingCapable < Xrb::Message
        include Xrb::Request

        OPCODE = 1

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :is_capable, {type: :bool}
      end

      class OpenConnection < Xrb::Message
        include Xrb::Request

        OPCODE = 2

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :sarea_handle_low, {type: :uint32},
            :sarea_handle_high, {type: :uint32},
            :bus_id_len, {type: :uint32},
            :pad2, {size: 12, type: :uint8},
            :bus_id, {length_field: :bus_id_len, type: :char, kind: :string}
      end

      class CloseConnection < Xrb::Message
        include Xrb::Request

        OPCODE = 3

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :screen, {type: :uint32}
      end

      class GetClientDriverName < Xrb::Message
        include Xrb::Request

        OPCODE = 4

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :client_driver_major_version, {type: :uint32},
            :client_driver_minor_version, {type: :uint32},
            :client_driver_patch_version, {type: :uint32},
            :client_driver_name_len, {type: :uint32},
            :pad2, {size: 8, type: :uint8},
            :client_driver_name, {length_field: :client_driver_name_len, type: :char, kind: :string}
      end

      class CreateContext < Xrb::Message
        include Xrb::Request

        OPCODE = 5

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :hw_context, {type: :uint32}
      end

      class DestroyContext < Xrb::Message
        include Xrb::Request

        OPCODE = 6

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :screen, {type: :uint32},
            :context, {type: :uint32}
      end

      class CreateDrawable < Xrb::Message
        include Xrb::Request

        OPCODE = 7

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :hw_drawable_handle, {type: :uint32}
      end

      class DestroyDrawable < Xrb::Message
        include Xrb::Request

        OPCODE = 8

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :screen, {type: :uint32},
            :drawable, {type: :uint32}
      end

      class GetDrawableInfo < Xrb::Message
        include Xrb::Request

        OPCODE = 9

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :drawable_table_index, {type: :uint32},
            :drawable_table_stamp, {type: :uint32},
            :drawable_origin_X, {type: :int16},
            :drawable_origin_Y, {type: :int16},
            :drawable_size_W, {type: :int16},
            :drawable_size_H, {type: :int16},
            :num_clip_rects, {type: :uint32},
            :back_x, {type: :int16},
            :back_y, {type: :int16},
            :num_back_clip_rects, {type: :uint32},
            :clip_rects, {length_field: :num_clip_rects, type: DrmClipRect, kind: :list},
            :back_clip_rects, {length_field: :num_back_clip_rects, type: DrmClipRect, kind: :list}
      end

      class GetDeviceInfo < Xrb::Message
        include Xrb::Request

        OPCODE = 10

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :framebuffer_handle_low, {type: :uint32},
            :framebuffer_handle_high, {type: :uint32},
            :framebuffer_origin_offset, {type: :uint32},
            :framebuffer_size, {type: :uint32},
            :framebuffer_stride, {type: :uint32},
            :device_private_size, {type: :uint32},
            :device_private, {length_field: :device_private_size, type: :uint32, kind: :list}
      end

      class AuthConnection < Xrb::Message
        include Xrb::Request

        OPCODE = 11

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :authenticated, {type: :uint32}
      end

    end
  end
end
