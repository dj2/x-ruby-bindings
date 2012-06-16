#
# This file was auto-generated. Do not edit.
#

module Xrb
  module Xv
    module Request
      class QueryExtension < Xrb::Message
        include Xrb::Request

        OPCODE = 0

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :major, {type: :uint16},
            :minor, {type: :uint16}
      end

      class QueryAdaptors < Xrb::Message
        include Xrb::Request

        OPCODE = 1

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :num_adaptors, {type: :uint16},
            :pad2, {size: 22, type: :uint8},
            :info, {length_field: :num_adaptors, type: AdaptorInfo, kind: :list}
      end

      class QueryEncodings < Xrb::Message
        include Xrb::Request

        OPCODE = 2

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :num_encodings, {type: :uint16},
            :pad2, {size: 22, type: :uint8},
            :info, {length_field: :num_encodings, type: EncodingInfo, kind: :list}
      end

      class GrabPort < Xrb::Message
        include Xrb::Request

        OPCODE = 3

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16}
      end

      class UngrabPort < Xrb::Message
        include Xrb::Request

        OPCODE = 4

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :port, {type: :uint32},
            :time, {type: :uint32}
      end

      class PutVideo < Xrb::Message
        include Xrb::Request

        OPCODE = 5

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :port, {type: :uint32},
            :drawable, {type: :uint32},
            :gc, {type: :uint32},
            :vid_x, {type: :int16},
            :vid_y, {type: :int16},
            :vid_w, {type: :uint16},
            :vid_h, {type: :uint16},
            :drw_x, {type: :int16},
            :drw_y, {type: :int16},
            :drw_w, {type: :uint16},
            :drw_h, {type: :uint16}
      end

      class PutStill < Xrb::Message
        include Xrb::Request

        OPCODE = 6

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :port, {type: :uint32},
            :drawable, {type: :uint32},
            :gc, {type: :uint32},
            :vid_x, {type: :int16},
            :vid_y, {type: :int16},
            :vid_w, {type: :uint16},
            :vid_h, {type: :uint16},
            :drw_x, {type: :int16},
            :drw_y, {type: :int16},
            :drw_w, {type: :uint16},
            :drw_h, {type: :uint16}
      end

      class GetVideo < Xrb::Message
        include Xrb::Request

        OPCODE = 7

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :port, {type: :uint32},
            :drawable, {type: :uint32},
            :gc, {type: :uint32},
            :vid_x, {type: :int16},
            :vid_y, {type: :int16},
            :vid_w, {type: :uint16},
            :vid_h, {type: :uint16},
            :drw_x, {type: :int16},
            :drw_y, {type: :int16},
            :drw_w, {type: :uint16},
            :drw_h, {type: :uint16}
      end

      class GetStill < Xrb::Message
        include Xrb::Request

        OPCODE = 8

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :port, {type: :uint32},
            :drawable, {type: :uint32},
            :gc, {type: :uint32},
            :vid_x, {type: :int16},
            :vid_y, {type: :int16},
            :vid_w, {type: :uint16},
            :vid_h, {type: :uint16},
            :drw_x, {type: :int16},
            :drw_y, {type: :int16},
            :drw_w, {type: :uint16},
            :drw_h, {type: :uint16}
      end

      class StopVideo < Xrb::Message
        include Xrb::Request

        OPCODE = 9

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :port, {type: :uint32},
            :drawable, {type: :uint32}
      end

      class SelectVideoNotify < Xrb::Message
        include Xrb::Request

        OPCODE = 10

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :drawable, {type: :uint32},
            :onoff, {type: :bool},
            :pad1, {size: 3, type: :uint8}
      end

      class SelectPortNotify < Xrb::Message
        include Xrb::Request

        OPCODE = 11

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :port, {type: :uint32},
            :onoff, {type: :bool},
            :pad1, {size: 3, type: :uint8}
      end

      class QueryBestSize < Xrb::Message
        include Xrb::Request

        OPCODE = 12

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :actual_width, {type: :uint16},
            :actual_height, {type: :uint16}
      end

      class SetPortAttribute < Xrb::Message
        include Xrb::Request

        OPCODE = 13

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :port, {type: :uint32},
            :attribute, {type: :uint32},
            :value, {type: :int32}
      end

      class GetPortAttribute < Xrb::Message
        include Xrb::Request

        OPCODE = 14

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :value, {type: :int32}
      end

      class QueryPortAttributes < Xrb::Message
        include Xrb::Request

        OPCODE = 15

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :num_attributes, {type: :uint32},
            :text_size, {type: :uint32},
            :pad2, {size: 16, type: :uint8},
            :attributes, {length_field: :num_attributes, type: AttributeInfo, kind: :list}
      end

      class ListImageFormats < Xrb::Message
        include Xrb::Request

        OPCODE = 16

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :num_formats, {type: :uint32},
            :pad2, {size: 20, type: :uint8},
            :format, {length_field: :num_formats, type: ImageFormatInfo, kind: :list}
      end

      class QueryImageAttributes < Xrb::Message
        include Xrb::Request

        OPCODE = 17

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :num_planes, {type: :uint32},
            :data_size, {type: :uint32},
            :width, {type: :uint16},
            :height, {type: :uint16},
            :pad2, {size: 12, type: :uint8},
            :pitches, {length_field: :num_planes, type: :uint32, kind: :list},
            :offsets, {length_field: :num_planes, type: :uint32, kind: :list}
      end

      class PutImage < Xrb::Message
        include Xrb::Request

        OPCODE = 18

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :port, {type: :uint32},
            :drawable, {type: :uint32},
            :gc, {type: :uint32},
            :id, {type: :uint32},
            :src_x, {type: :int16},
            :src_y, {type: :int16},
            :src_w, {type: :uint16},
            :src_h, {type: :uint16},
            :drw_x, {type: :int16},
            :drw_y, {type: :int16},
            :drw_w, {type: :uint16},
            :drw_h, {type: :uint16},
            :width, {type: :uint16},
            :height, {type: :uint16}
      end

      class ShmPutImage < Xrb::Message
        include Xrb::Request

        OPCODE = 19

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :port, {type: :uint32},
            :drawable, {type: :uint32},
            :gc, {type: :uint32},
            :shmseg, {type: :uint32},
            :id, {type: :uint32},
            :offset, {type: :uint32},
            :src_x, {type: :int16},
            :src_y, {type: :int16},
            :src_w, {type: :uint16},
            :src_h, {type: :uint16},
            :drw_x, {type: :int16},
            :drw_y, {type: :int16},
            :drw_w, {type: :uint16},
            :drw_h, {type: :uint16},
            :width, {type: :uint16},
            :height, {type: :uint16},
            :send_event, {type: :uint8},
            :pad1, {size: 3, type: :uint8}
      end

    end
  end
end
