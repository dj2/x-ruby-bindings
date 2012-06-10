#
# This file was auto-generated. Do not edit.
#

module Xrb
  module Xv
    module Request
      class QueryExtension < Xrb::Message
        OPCODE = 0
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :major, :uint16,
            :minor, :uint16
      end
      
      class QueryAdaptors < Xrb::Message
        OPCODE = 1
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :num_adaptors, :uint16,
            :pad2, [:uint8, 22],
            :info, [:num_adaptors, :AdaptorInfo, :list]
      end
      
      class QueryEncodings < Xrb::Message
        OPCODE = 2
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :num_encodings, :uint16,
            :pad2, [:uint8, 22],
            :info, [:num_encodings, :EncodingInfo, :list]
      end
      
      class GrabPort < Xrb::Message
        OPCODE = 3
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16
      end
      
      class UngrabPort < Xrb::Message
        OPCODE = 4
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :port, :uint32,
            :time, :uint32
      end
      
      class PutVideo < Xrb::Message
        OPCODE = 5
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :port, :uint32,
            :drawable, :uint32,
            :gc, :uint32,
            :vid_x, :int16,
            :vid_y, :int16,
            :vid_w, :uint16,
            :vid_h, :uint16,
            :drw_x, :int16,
            :drw_y, :int16,
            :drw_w, :uint16,
            :drw_h, :uint16
      end
      
      class PutStill < Xrb::Message
        OPCODE = 6
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :port, :uint32,
            :drawable, :uint32,
            :gc, :uint32,
            :vid_x, :int16,
            :vid_y, :int16,
            :vid_w, :uint16,
            :vid_h, :uint16,
            :drw_x, :int16,
            :drw_y, :int16,
            :drw_w, :uint16,
            :drw_h, :uint16
      end
      
      class GetVideo < Xrb::Message
        OPCODE = 7
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :port, :uint32,
            :drawable, :uint32,
            :gc, :uint32,
            :vid_x, :int16,
            :vid_y, :int16,
            :vid_w, :uint16,
            :vid_h, :uint16,
            :drw_x, :int16,
            :drw_y, :int16,
            :drw_w, :uint16,
            :drw_h, :uint16
      end
      
      class GetStill < Xrb::Message
        OPCODE = 8
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :port, :uint32,
            :drawable, :uint32,
            :gc, :uint32,
            :vid_x, :int16,
            :vid_y, :int16,
            :vid_w, :uint16,
            :vid_h, :uint16,
            :drw_x, :int16,
            :drw_y, :int16,
            :drw_w, :uint16,
            :drw_h, :uint16
      end
      
      class StopVideo < Xrb::Message
        OPCODE = 9
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :port, :uint32,
            :drawable, :uint32
      end
      
      class SelectVideoNotify < Xrb::Message
        OPCODE = 10
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :drawable, :uint32,
            :onoff, :bool,
            :pad1, [:uint8, 3]
      end
      
      class SelectPortNotify < Xrb::Message
        OPCODE = 11
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :port, :uint32,
            :onoff, :bool,
            :pad1, [:uint8, 3]
      end
      
      class QueryBestSize < Xrb::Message
        OPCODE = 12
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :actual_width, :uint16,
            :actual_height, :uint16
      end
      
      class SetPortAttribute < Xrb::Message
        OPCODE = 13
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :port, :uint32,
            :attribute, :uint32,
            :value, :int32
      end
      
      class GetPortAttribute < Xrb::Message
        OPCODE = 14
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :value, :int32
      end
      
      class QueryPortAttributes < Xrb::Message
        OPCODE = 15
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :num_attributes, :uint32,
            :text_size, :uint32,
            :pad2, [:uint8, 16],
            :attributes, [:num_attributes, :AttributeInfo, :list]
      end
      
      class ListImageFormats < Xrb::Message
        OPCODE = 16
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :num_formats, :uint32,
            :pad2, [:uint8, 20],
            :format, [:num_formats, :ImageFormatInfo, :list]
      end
      
      class QueryImageAttributes < Xrb::Message
        OPCODE = 17
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :num_planes, :uint32,
            :data_size, :uint32,
            :width, :uint16,
            :height, :uint16,
            :pad2, [:uint8, 12],
            :pitches, [:num_planes, :uint32, :list],
            :offsets, [:num_planes, :uint32, :list]
      end
      
      class PutImage < Xrb::Message
        OPCODE = 18
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :port, :uint32,
            :drawable, :uint32,
            :gc, :uint32,
            :id, :uint32,
            :src_x, :int16,
            :src_y, :int16,
            :src_w, :uint16,
            :src_h, :uint16,
            :drw_x, :int16,
            :drw_y, :int16,
            :drw_w, :uint16,
            :drw_h, :uint16,
            :width, :uint16,
            :height, :uint16
      end
      
      class ShmPutImage < Xrb::Message
        OPCODE = 19
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :port, :uint32,
            :drawable, :uint32,
            :gc, :uint32,
            :shmseg, :uint32,
            :id, :uint32,
            :offset, :uint32,
            :src_x, :int16,
            :src_y, :int16,
            :src_w, :uint16,
            :src_h, :uint16,
            :drw_x, :int16,
            :drw_y, :int16,
            :drw_w, :uint16,
            :drw_h, :uint16,
            :width, :uint16,
            :height, :uint16,
            :send_event, :uint8,
            :pad1, [:uint8, 3]
      end
      
    end
  end
end
