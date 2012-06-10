#
# This file was auto-generated. Do not edit.
#

module Xrb
  module XF86Dri
    module Request
      class QueryVersion < Xrb::Message
        OPCODE = 0
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :dri_major_version, :uint16,
            :dri_minor_version, :uint16,
            :dri_minor_patch, :uint32
      end
      
      class QueryDirectRenderingCapable < Xrb::Message
        OPCODE = 1
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :is_capable, :bool
      end
      
      class OpenConnection < Xrb::Message
        OPCODE = 2
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :sarea_handle_low, :uint32,
            :sarea_handle_high, :uint32,
            :bus_id_len, :uint32,
            :pad2, [:uint8, 12],
            :bus_id, [:bus_id_len, :char, :string]
      end
      
      class CloseConnection < Xrb::Message
        OPCODE = 3
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :screen, :uint32
      end
      
      class GetClientDriverName < Xrb::Message
        OPCODE = 4
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :client_driver_major_version, :uint32,
            :client_driver_minor_version, :uint32,
            :client_driver_patch_version, :uint32,
            :client_driver_name_len, :uint32,
            :pad2, [:uint8, 8],
            :client_driver_name, [:client_driver_name_len, :char, :string]
      end
      
      class CreateContext < Xrb::Message
        OPCODE = 5
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :hw_context, :uint32
      end
      
      class DestroyContext < Xrb::Message
        OPCODE = 6
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :screen, :uint32,
            :context, :uint32
      end
      
      class CreateDrawable < Xrb::Message
        OPCODE = 7
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :hw_drawable_handle, :uint32
      end
      
      class DestroyDrawable < Xrb::Message
        OPCODE = 8
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :screen, :uint32,
            :drawable, :uint32
      end
      
      class GetDrawableInfo < Xrb::Message
        OPCODE = 9
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
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
            :clip_rects, [:num_clip_rects, :DrmClipRect, :list],
            :back_clip_rects, [:num_back_clip_rects, :DrmClipRect, :list]
      end
      
      class GetDeviceInfo < Xrb::Message
        OPCODE = 10
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :framebuffer_handle_low, :uint32,
            :framebuffer_handle_high, :uint32,
            :framebuffer_origin_offset, :uint32,
            :framebuffer_size, :uint32,
            :framebuffer_stride, :uint32,
            :device_private_size, :uint32,
            :device_private, [:device_private_size, :uint32, :list]
      end
      
      class AuthConnection < Xrb::Message
        OPCODE = 11
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :authenticated, :uint32
      end
      
    end
  end
end
