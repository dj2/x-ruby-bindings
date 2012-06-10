#
# This file was auto-generated. Do not edit.
#

module Xrb
  module Xv
    module Reply
      class QueryExtension < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [1, :uint8],
            :sequence, :uint16,
            :length, :uint32,
            :major, :uint16,
            :minor, :uint16
      end
      
      class QueryAdaptors < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [1, :uint8],
            :sequence, :uint16,
            :length, :uint32,
            :num_adaptors, :uint16,
            :pad2, [22, :uint8],
            :info, [:num_adaptors, AdaptorInfo, :list]
      end
      
      class QueryEncodings < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [1, :uint8],
            :sequence, :uint16,
            :length, :uint32,
            :num_encodings, :uint16,
            :pad2, [22, :uint8],
            :info, [:num_encodings, EncodingInfo, :list]
      end
      
      class GrabPort < Xrb::Message
        layout \
            :response_type, :uint8,
            :result, :uint8,
            :sequence, :uint16,
            :length, :uint32
      end
      
      class QueryBestSize < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [1, :uint8],
            :sequence, :uint16,
            :length, :uint32,
            :actual_width, :uint16,
            :actual_height, :uint16
      end
      
      class GetPortAttribute < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [1, :uint8],
            :sequence, :uint16,
            :length, :uint32,
            :value, :int32
      end
      
      class QueryPortAttributes < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [1, :uint8],
            :sequence, :uint16,
            :length, :uint32,
            :num_attributes, :uint32,
            :text_size, :uint32,
            :pad2, [16, :uint8],
            :attributes, [:num_attributes, AttributeInfo, :list]
      end
      
      class ListImageFormats < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [1, :uint8],
            :sequence, :uint16,
            :length, :uint32,
            :num_formats, :uint32,
            :pad2, [20, :uint8],
            :format, [:num_formats, ImageFormatInfo, :list]
      end
      
      class QueryImageAttributes < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [1, :uint8],
            :sequence, :uint16,
            :length, :uint32,
            :num_planes, :uint32,
            :data_size, :uint32,
            :width, :uint16,
            :height, :uint16,
            :pad2, [12, :uint8],
            :pitches, [:num_planes, :uint32, :list],
            :offsets, [:num_planes, :uint32, :list]
      end
      
    end
  end
end
