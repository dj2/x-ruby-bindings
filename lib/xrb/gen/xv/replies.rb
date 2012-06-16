#
# This file was auto-generated. Do not edit.
#

module Xrb
  module Xv
    module Reply
      class QueryExtension < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :major, {type: :uint16},
            :minor, {type: :uint16}
      end

      class QueryAdaptors < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :num_adaptors, {type: :uint16},
            :pad2, {size: 22, type: :uint8},
            :info, {length_field: :num_adaptors, type: AdaptorInfo, kind: :list}
      end

      class QueryEncodings < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :num_encodings, {type: :uint16},
            :pad2, {size: 22, type: :uint8},
            :info, {length_field: :num_encodings, type: EncodingInfo, kind: :list}
      end

      class GrabPort < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :result, {type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32}
      end

      class QueryBestSize < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :actual_width, {type: :uint16},
            :actual_height, {type: :uint16}
      end

      class GetPortAttribute < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :value, {type: :int32}
      end

      class QueryPortAttributes < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :num_attributes, {type: :uint32},
            :text_size, {type: :uint32},
            :pad2, {size: 16, type: :uint8},
            :attributes, {length_field: :num_attributes, type: AttributeInfo, kind: :list}
      end

      class ListImageFormats < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :num_formats, {type: :uint32},
            :pad2, {size: 20, type: :uint8},
            :format, {length_field: :num_formats, type: ImageFormatInfo, kind: :list}
      end

      class QueryImageAttributes < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :num_planes, {type: :uint32},
            :data_size, {type: :uint32},
            :width, {type: :uint16},
            :height, {type: :uint16},
            :pad2, {size: 12, type: :uint8},
            :pitches, {length_field: :num_planes, type: :uint32, kind: :list},
            :offsets, {length_field: :num_planes, type: :uint32, kind: :list}
      end

    end
  end
end
