#
# This file was auto-generated. Do not edit.
#

module Xrb
  module Xv
    module Message
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
      
      class Rational < Xrd::Message
        layout \
            :numerator, :int32,
            :denominator, :int32
      end
      
      class Format < Xrd::Message
        layout \
            :visual, :uint32,
            :depth, :uint8,
            :pad1, [:uint8, 3]
      end
      
      class AdaptorInfo < Xrd::Message
        layout \
            :base_id, :uint32,
            :name_size, :uint16,
            :num_ports, :uint16,
            :num_formats, :uint16,
            :type, :uint8,
            :pad1, [:uint8, 1]
      end
      
      class EncodingInfo < Xrd::Message
        layout \
            :encoding, :uint32,
            :name_size, :uint16,
            :width, :uint16,
            :height, :uint16,
            :pad1, [:uint8, 2],
            :rate, :Rational
      end
      
      class Image < Xrd::Message
        layout \
            :id, :uint32,
            :width, :uint16,
            :height, :uint16,
            :data_size, :uint32,
            :num_planes, :uint32
      end
      
      class AttributeInfo < Xrd::Message
        layout \
            :flags, :uint32,
            :min, :int32,
            :max, :int32,
            :size, :uint32
      end
      
      class ImageFormatInfo < Xrd::Message
        layout \
            :id, :uint32,
            :type, :uint8,
            :byte_order, :uint8,
            :pad1, [:uint8, 2],
            :guid, [:uint8, 16],
            :bpp, :uint8,
            :num_planes, :uint8,
            :pad2, [:uint8, 2],
            :depth, :uint8,
            :pad3, [:uint8, 3],
            :red_mask, :uint32,
            :green_mask, :uint32,
            :blue_mask, :uint32,
            :format, :uint8,
            :pad4, [:uint8, 3],
            :y_sample_bits, :uint32,
            :u_sample_bits, :uint32,
            :v_sample_bits, :uint32,
            :vhorz_y_period, :uint32,
            :vhorz_u_period, :uint32,
            :vhorz_v_period, :uint32,
            :vvert_y_period, :uint32,
            :vvert_u_period, :uint32,
            :vvert_v_period, :uint32,
            :vcomp_order, [:uint8, 32],
            :vscanline_order, :uint8,
            :pad5, [:uint8, 11]
      end
      
    end
  end
end
