#
# This file was auto-generated. Do not edit.
#

module Xrb
  module XF86Dri
    module Reply
      class QueryVersion < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [:uint8, 1],
            :sequence, :uint16,
            :length, :uint32,
            :dri_major_version, :uint16,
            :dri_minor_version, :uint16,
            :dri_minor_patch, :uint32
      end
      
      class QueryDirectRenderingCapable < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [:uint8, 1],
            :sequence, :uint16,
            :length, :uint32,
            :is_capable, :bool
      end
      
      class OpenConnection < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [:uint8, 1],
            :sequence, :uint16,
            :length, :uint32,
            :sarea_handle_low, :uint32,
            :sarea_handle_high, :uint32,
            :bus_id_len, :uint32,
            :pad2, [:uint8, 12],
            :bus_id, [:bus_id_len, :string]
      end
      
      class GetClientDriverName < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [:uint8, 1],
            :sequence, :uint16,
            :length, :uint32,
            :client_driver_major_version, :uint32,
            :client_driver_minor_version, :uint32,
            :client_driver_patch_version, :uint32,
            :client_driver_name_len, :uint32,
            :pad2, [:uint8, 8],
            :client_driver_name, [:client_driver_name_len, :string]
      end
      
      class CreateContext < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [:uint8, 1],
            :sequence, :uint16,
            :length, :uint32,
            :hw_context, :uint32
      end
      
      class CreateDrawable < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [:uint8, 1],
            :sequence, :uint16,
            :length, :uint32,
            :hw_drawable_handle, :uint32
      end
      
      class GetDrawableInfo < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [:uint8, 1],
            :sequence, :uint16,
            :length, :uint32,
            :drawable_table_index, :uint32,
            :drawable_table_stamp, :uint32,
            :drawable_origin_X, :int16,
            :drawable_origin_Y, :int16,
            :drawable_size_W, :int16,
            :drawable_size_H, :int16,
            :num_clip_rects, :uint32,
            :back_x, :int16,
            :back_y, :int16,
            :num_back_clip_rects, :uint32,
            :clip_rects, [:num_clip_rects, :string],
            :back_clip_rects, [:num_back_clip_rects, :string]
      end
      
      class GetDeviceInfo < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [:uint8, 1],
            :sequence, :uint16,
            :length, :uint32,
            :framebuffer_handle_low, :uint32,
            :framebuffer_handle_high, :uint32,
            :framebuffer_origin_offset, :uint32,
            :framebuffer_size, :uint32,
            :framebuffer_stride, :uint32,
            :device_private_size, :uint32,
            :device_private, [:device_private_size, :string]
      end
      
      class AuthConnection < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [:uint8, 1],
            :sequence, :uint16,
            :length, :uint32,
            :authenticated, :uint32
      end
      
    end
  end
end
