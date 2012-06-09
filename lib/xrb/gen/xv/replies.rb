#
# This file was auto-generated. Do not edit.
#

module Xrb
  module Xv
    module Reply
      class QueryExtension < Xrb::Message
        layout \
            :response_type, :uint8
            :pad1, [:uint8, 1]
            :sequence, :uint16
            :length, :uint32
            :major, :uint16
            :minor, :uint16
      end
      
      class QueryAdaptors < Xrb::Message
        layout \
            :response_type, :uint8
            :pad1, [:uint8, 1]
            :sequence, :uint16
            :length, :uint32
            :num_adaptors, :uint16
            :pad2, [:uint8, 22]
      end
      
      class QueryEncodings < Xrb::Message
        layout \
            :response_type, :uint8
            :pad1, [:uint8, 1]
            :sequence, :uint16
            :length, :uint32
            :num_encodings, :uint16
            :pad2, [:uint8, 22]
      end
      
      class GrabPort < Xrb::Message
        layout \
            :response_type, :uint8
            :result, :uint8
            :sequence, :uint16
            :length, :uint32
      end
      
      class QueryBestSize < Xrb::Message
        layout \
            :response_type, :uint8
            :pad1, [:uint8, 1]
            :sequence, :uint16
            :length, :uint32
            :actual_width, :uint16
            :actual_height, :uint16
      end
      
      class GetPortAttribute < Xrb::Message
        layout \
            :response_type, :uint8
            :pad1, [:uint8, 1]
            :sequence, :uint16
            :length, :uint32
            :value, :int32
      end
      
      class QueryPortAttributes < Xrb::Message
        layout \
            :response_type, :uint8
            :pad1, [:uint8, 1]
            :sequence, :uint16
            :length, :uint32
            :num_attributes, :uint32
            :text_size, :uint32
            :pad2, [:uint8, 16]
      end
      
      class ListImageFormats < Xrb::Message
        layout \
            :response_type, :uint8
            :pad1, [:uint8, 1]
            :sequence, :uint16
            :length, :uint32
            :num_formats, :uint32
            :pad2, [:uint8, 20]
      end
      
      class QueryImageAttributes < Xrb::Message
        layout \
            :response_type, :uint8
            :pad1, [:uint8, 1]
            :sequence, :uint16
            :length, :uint32
            :num_planes, :uint32
            :data_size, :uint32
            :width, :uint16
            :height, :uint16
            :pad2, [:uint8, 12]
      end
      
    end
  end
end
