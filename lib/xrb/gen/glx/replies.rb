#
# This file was auto-generated. Do not edit.
#

module Xrb
  module Glx
    module Reply
      class MakeCurrent < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :context_tag, {type: :uint32},
            :pad2, {size: 20, type: :uint8}
      end

      class IsDirect < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :is_direct, {type: :bool},
            :pad2, {size: 23, type: :uint8}
      end

      class QueryVersion < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :major_version, {type: :uint32},
            :minor_version, {type: :uint32},
            :pad2, {size: 16, type: :uint8}
      end

      class GetVisualConfigs < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :num_visuals, {type: :uint32},
            :num_properties, {type: :uint32},
            :pad2, {size: 16, type: :uint8},
            :property_list, {length_field: :length, type: :uint32, kind: :list}
      end

      class VendorPrivateWithReply < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :retval, {type: :uint32},
            :data1, {type: :uint8, size: 24},
            :data2, {type: :uint8, length_expr: '(length * 4)'}
      end

      class QueryExtensionsString < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :pad2, {size: 4, type: :uint8},
            :n, {type: :uint32},
            :pad3, {size: 16, type: :uint8}
      end

      class QueryServerString < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :pad2, {size: 4, type: :uint8},
            :str_len, {type: :uint32},
            :pad3, {size: 16, type: :uint8},
            :string, {length_field: :str_len, type: :char, kind: :string}
      end

      class GetFbConfigs < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :num_FB_configs, {type: :uint32},
            :num_properties, {type: :uint32},
            :pad2, {size: 16, type: :uint8},
            :property_list, {length_field: :length, type: :uint32, kind: :list}
      end

      class QueryContext < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :num_attribs, {type: :uint32},
            :pad2, {size: 20, type: :uint8},
            :attribs, {type: :uint32, length_expr: '(num_attribs * 2)'}
      end

      class MakeContextCurrent < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :context_tag, {type: :uint32},
            :pad2, {size: 20, type: :uint8}
      end

      class GetDrawableAttributes < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :num_attribs, {type: :uint32},
            :pad2, {size: 20, type: :uint8},
            :attribs, {type: :uint32, length_expr: '(num_attribs * 2)'}
      end

      class GenLists < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :ret_val, {type: :uint32}
      end

      class RenderMode < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :ret_val, {type: :uint32},
            :n, {type: :uint32},
            :new_mode, {type: :uint32},
            :pad2, {size: 12, type: :uint8},
            :data, {length_field: :n, type: :uint32, kind: :list}
      end

      class Finish < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32}
      end

      class ReadPixels < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :pad2, {size: 24, type: :uint8},
            :data, {type: :uint8, length_expr: '(length * 4)'}
      end

      class GetBooleanv < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :pad2, {size: 4, type: :uint8},
            :n, {type: :uint32},
            :datum, {type: :bool},
            :pad3, {size: 15, type: :uint8},
            :data, {length_field: :n, type: :bool, kind: :list}
      end

      class GetClipPlane < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :pad2, {size: 24, type: :uint8},
            :data, {type: :double, length_expr: '(length / 2)'}
      end

      class GetDoublev < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :pad2, {size: 4, type: :uint8},
            :n, {type: :uint32},
            :datum, {type: :double},
            :pad3, {size: 8, type: :uint8},
            :data, {length_field: :n, type: :double, kind: :list}
      end

      class GetError < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :error, {type: :int32}
      end

      class GetFloatv < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :pad2, {size: 4, type: :uint8},
            :n, {type: :uint32},
            :datum, {type: :float},
            :pad3, {size: 12, type: :uint8},
            :data, {length_field: :n, type: :float, kind: :list}
      end

      class GetIntegerv < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :pad2, {size: 4, type: :uint8},
            :n, {type: :uint32},
            :datum, {type: :int32},
            :pad3, {size: 12, type: :uint8},
            :data, {length_field: :n, type: :int32, kind: :list}
      end

      class GetLightfv < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :pad2, {size: 4, type: :uint8},
            :n, {type: :uint32},
            :datum, {type: :float},
            :pad3, {size: 12, type: :uint8},
            :data, {length_field: :n, type: :float, kind: :list}
      end

      class GetLightiv < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :pad2, {size: 4, type: :uint8},
            :n, {type: :uint32},
            :datum, {type: :int32},
            :pad3, {size: 12, type: :uint8},
            :data, {length_field: :n, type: :int32, kind: :list}
      end

      class GetMapdv < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :pad2, {size: 4, type: :uint8},
            :n, {type: :uint32},
            :datum, {type: :double},
            :pad3, {size: 8, type: :uint8},
            :data, {length_field: :n, type: :double, kind: :list}
      end

      class GetMapfv < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :pad2, {size: 4, type: :uint8},
            :n, {type: :uint32},
            :datum, {type: :float},
            :pad3, {size: 12, type: :uint8},
            :data, {length_field: :n, type: :float, kind: :list}
      end

      class GetMapiv < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :pad2, {size: 4, type: :uint8},
            :n, {type: :uint32},
            :datum, {type: :int32},
            :pad3, {size: 12, type: :uint8},
            :data, {length_field: :n, type: :int32, kind: :list}
      end

      class GetMaterialfv < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :pad2, {size: 4, type: :uint8},
            :n, {type: :uint32},
            :datum, {type: :float},
            :pad3, {size: 12, type: :uint8},
            :data, {length_field: :n, type: :float, kind: :list}
      end

      class GetMaterialiv < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :pad2, {size: 4, type: :uint8},
            :n, {type: :uint32},
            :datum, {type: :int32},
            :pad3, {size: 12, type: :uint8},
            :data, {length_field: :n, type: :int32, kind: :list}
      end

      class GetPixelMapfv < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :pad2, {size: 4, type: :uint8},
            :n, {type: :uint32},
            :datum, {type: :float},
            :pad3, {size: 12, type: :uint8},
            :data, {length_field: :n, type: :float, kind: :list}
      end

      class GetPixelMapuiv < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :pad2, {size: 4, type: :uint8},
            :n, {type: :uint32},
            :datum, {type: :uint32},
            :pad3, {size: 12, type: :uint8},
            :data, {length_field: :n, type: :uint32, kind: :list}
      end

      class GetPixelMapusv < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :pad2, {size: 4, type: :uint8},
            :n, {type: :uint32},
            :datum, {type: :uint16},
            :pad3, {size: 16, type: :uint8},
            :data, {length_field: :n, type: :uint16, kind: :list}
      end

      class GetPolygonStipple < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :pad2, {size: 24, type: :uint8},
            :data, {type: :uint8, length_expr: '(length * 4)'}
      end

      class GetString < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :pad2, {size: 4, type: :uint8},
            :n, {type: :uint32},
            :pad3, {size: 16, type: :uint8},
            :string, {length_field: :n, type: :char, kind: :string}
      end

      class GetTexEnvfv < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :pad2, {size: 4, type: :uint8},
            :n, {type: :uint32},
            :datum, {type: :float},
            :pad3, {size: 12, type: :uint8},
            :data, {length_field: :n, type: :float, kind: :list}
      end

      class GetTexEnviv < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :pad2, {size: 4, type: :uint8},
            :n, {type: :uint32},
            :datum, {type: :int32},
            :pad3, {size: 12, type: :uint8},
            :data, {length_field: :n, type: :int32, kind: :list}
      end

      class GetTexGendv < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :pad2, {size: 4, type: :uint8},
            :n, {type: :uint32},
            :datum, {type: :double},
            :pad3, {size: 8, type: :uint8},
            :data, {length_field: :n, type: :double, kind: :list}
      end

      class GetTexGenfv < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :pad2, {size: 4, type: :uint8},
            :n, {type: :uint32},
            :datum, {type: :float},
            :pad3, {size: 12, type: :uint8},
            :data, {length_field: :n, type: :float, kind: :list}
      end

      class GetTexGeniv < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :pad2, {size: 4, type: :uint8},
            :n, {type: :uint32},
            :datum, {type: :int32},
            :pad3, {size: 12, type: :uint8},
            :data, {length_field: :n, type: :int32, kind: :list}
      end

      class GetTexImage < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :pad2, {size: 8, type: :uint8},
            :width, {type: :int32},
            :height, {type: :int32},
            :depth, {type: :int32},
            :pad3, {size: 4, type: :uint8},
            :data, {type: :uint8, length_expr: '(length * 4)'}
      end

      class GetTexParameterfv < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :pad2, {size: 4, type: :uint8},
            :n, {type: :uint32},
            :datum, {type: :float},
            :pad3, {size: 12, type: :uint8},
            :data, {length_field: :n, type: :float, kind: :list}
      end

      class GetTexParameteriv < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :pad2, {size: 4, type: :uint8},
            :n, {type: :uint32},
            :datum, {type: :int32},
            :pad3, {size: 12, type: :uint8},
            :data, {length_field: :n, type: :int32, kind: :list}
      end

      class GetTexLevelParameterfv < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :pad2, {size: 4, type: :uint8},
            :n, {type: :uint32},
            :datum, {type: :float},
            :pad3, {size: 12, type: :uint8},
            :data, {length_field: :n, type: :float, kind: :list}
      end

      class GetTexLevelParameteriv < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :pad2, {size: 4, type: :uint8},
            :n, {type: :uint32},
            :datum, {type: :int32},
            :pad3, {size: 12, type: :uint8},
            :data, {length_field: :n, type: :int32, kind: :list}
      end

      class IsList < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :ret_val, {type: :uint32}
      end

      class AreTexturesResident < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :ret_val, {type: :uint32},
            :pad2, {size: 20, type: :uint8},
            :data, {type: :bool, length_expr: '(length * 4)'}
      end

      class GenTextures < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :pad2, {size: 24, type: :uint8},
            :data, {length_field: :length, type: :uint32, kind: :list}
      end

      class IsTexture < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :ret_val, {type: :uint32}
      end

      class GetColorTable < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :pad2, {size: 8, type: :uint8},
            :width, {type: :int32},
            :pad3, {size: 12, type: :uint8},
            :data, {type: :uint8, length_expr: '(length * 4)'}
      end

      class GetColorTableParameterfv < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :pad2, {size: 4, type: :uint8},
            :n, {type: :uint32},
            :datum, {type: :float},
            :pad3, {size: 12, type: :uint8},
            :data, {length_field: :n, type: :float, kind: :list}
      end

      class GetColorTableParameteriv < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :pad2, {size: 4, type: :uint8},
            :n, {type: :uint32},
            :datum, {type: :int32},
            :pad3, {size: 12, type: :uint8},
            :data, {length_field: :n, type: :int32, kind: :list}
      end

      class GetConvolutionFilter < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :pad2, {size: 8, type: :uint8},
            :width, {type: :int32},
            :height, {type: :int32},
            :pad3, {size: 8, type: :uint8},
            :data, {type: :uint8, length_expr: '(length * 4)'}
      end

      class GetConvolutionParameterfv < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :pad2, {size: 4, type: :uint8},
            :n, {type: :uint32},
            :datum, {type: :float},
            :pad3, {size: 12, type: :uint8},
            :data, {length_field: :n, type: :float, kind: :list}
      end

      class GetConvolutionParameteriv < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :pad2, {size: 4, type: :uint8},
            :n, {type: :uint32},
            :datum, {type: :int32},
            :pad3, {size: 12, type: :uint8},
            :data, {length_field: :n, type: :int32, kind: :list}
      end

      class GetSeparableFilter < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :pad2, {size: 8, type: :uint8},
            :row_w, {type: :int32},
            :col_h, {type: :int32},
            :pad3, {size: 8, type: :uint8},
            :rows_and_cols, {type: :uint8, length_expr: '(length * 4)'}
      end

      class GetHistogram < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :pad2, {size: 8, type: :uint8},
            :width, {type: :int32},
            :pad3, {size: 12, type: :uint8},
            :data, {type: :uint8, length_expr: '(length * 4)'}
      end

      class GetHistogramParameterfv < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :pad2, {size: 4, type: :uint8},
            :n, {type: :uint32},
            :datum, {type: :float},
            :pad3, {size: 12, type: :uint8},
            :data, {length_field: :n, type: :float, kind: :list}
      end

      class GetHistogramParameteriv < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :pad2, {size: 4, type: :uint8},
            :n, {type: :uint32},
            :datum, {type: :int32},
            :pad3, {size: 12, type: :uint8},
            :data, {length_field: :n, type: :int32, kind: :list}
      end

      class GetMinmax < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :pad2, {size: 24, type: :uint8},
            :data, {type: :uint8, length_expr: '(length * 4)'}
      end

      class GetMinmaxParameterfv < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :pad2, {size: 4, type: :uint8},
            :n, {type: :uint32},
            :datum, {type: :float},
            :pad3, {size: 12, type: :uint8},
            :data, {length_field: :n, type: :float, kind: :list}
      end

      class GetMinmaxParameteriv < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :pad2, {size: 4, type: :uint8},
            :n, {type: :uint32},
            :datum, {type: :int32},
            :pad3, {size: 12, type: :uint8},
            :data, {length_field: :n, type: :int32, kind: :list}
      end

      class GetCompressedTexImageArb < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :pad2, {size: 8, type: :uint8},
            :size, {type: :int32},
            :pad3, {size: 12, type: :uint8},
            :data, {type: :uint8, length_expr: '(length * 4)'}
      end

      class GenQueriesArb < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :pad2, {size: 24, type: :uint8},
            :data, {length_field: :length, type: :uint32, kind: :list}
      end

      class IsQueryArb < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :ret_val, {type: :uint32}
      end

      class GetQueryivArb < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :pad2, {size: 4, type: :uint8},
            :n, {type: :uint32},
            :datum, {type: :int32},
            :pad3, {size: 12, type: :uint8},
            :data, {length_field: :n, type: :int32, kind: :list}
      end

      class GetQueryObjectivArb < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :pad2, {size: 4, type: :uint8},
            :n, {type: :uint32},
            :datum, {type: :int32},
            :pad3, {size: 12, type: :uint8},
            :data, {length_field: :n, type: :int32, kind: :list}
      end

      class GetQueryObjectuivArb < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :pad2, {size: 4, type: :uint8},
            :n, {type: :uint32},
            :datum, {type: :uint32},
            :pad3, {size: 12, type: :uint8},
            :data, {length_field: :n, type: :uint32, kind: :list}
      end

    end
  end
end
