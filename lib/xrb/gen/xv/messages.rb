#
# This file was auto-generated. Do not edit.
#

module Xrb
  module Xv
    class Message
      class Port
        attr_accessor :id

        def to_wire
          [id].pack('L')
        end
      end

      class Encoding
        attr_accessor :id

        def to_wire
          [id].pack('L')
        end
      end

      class Rational < Xrb::Message
        layout \
            :numerator, {type: :int32},
            :denominator, {type: :int32}
      end

      class Format < Xrb::Message
        layout \
            :visual, {type: :uint32},
            :depth, {type: :uint8},
            :pad1, {size: 3, type: :uint8}
      end

      class AdaptorInfo < Xrb::Message
        layout \
            :base_id, {type: :uint32},
            :name_size, {type: :uint16},
            :num_ports, {type: :uint16},
            :num_formats, {type: :uint16},
            :type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :name, {length_field: :name_size, type: :char, kind: :string},
            :formats, {length_field: :num_formats, type: Format, kind: :list}
      end

      class EncodingInfo < Xrb::Message
        layout \
            :encoding, {type: :uint32},
            :name_size, {type: :uint16},
            :width, {type: :uint16},
            :height, {type: :uint16},
            :pad1, {size: 2, type: :uint8},
            :rate, {type: :Rational},
            :name, {length_field: :name_size, type: :char, kind: :string}
      end

      class Image < Xrb::Message
        layout \
            :id, {type: :uint32},
            :width, {type: :uint16},
            :height, {type: :uint16},
            :data_size, {type: :uint32},
            :num_planes, {type: :uint32},
            :pitches, {length_field: :num_planes, type: :uint32, kind: :list},
            :offsets, {length_field: :num_planes, type: :uint32, kind: :list},
            :data, {length_field: :data_size, type: :uint8, kind: :list}
      end

      class AttributeInfo < Xrb::Message
        layout \
            :flags, {type: :uint32},
            :min, {type: :int32},
            :max, {type: :int32},
            :size, {type: :uint32},
            :name, {length_field: :size, type: :char, kind: :string}
      end

      class ImageFormatInfo < Xrb::Message
        layout \
            :id, {type: :uint32},
            :type, {type: :uint8},
            :byte_order, {type: :uint8},
            :pad1, {size: 2, type: :uint8},
            :guid, {type: :uint8, size: 16},
            :bpp, {type: :uint8},
            :num_planes, {type: :uint8},
            :pad2, {size: 2, type: :uint8},
            :depth, {type: :uint8},
            :pad3, {size: 3, type: :uint8},
            :red_mask, {type: :uint32},
            :green_mask, {type: :uint32},
            :blue_mask, {type: :uint32},
            :format, {type: :uint8},
            :pad4, {size: 3, type: :uint8},
            :y_sample_bits, {type: :uint32},
            :u_sample_bits, {type: :uint32},
            :v_sample_bits, {type: :uint32},
            :vhorz_y_period, {type: :uint32},
            :vhorz_u_period, {type: :uint32},
            :vhorz_v_period, {type: :uint32},
            :vvert_y_period, {type: :uint32},
            :vvert_u_period, {type: :uint32},
            :vvert_v_period, {type: :uint32},
            :vcomp_order, {type: :uint8, size: 32},
            :vscanline_order, {type: :uint8},
            :pad5, {size: 11, type: :uint8}
      end

    end
  end
end
