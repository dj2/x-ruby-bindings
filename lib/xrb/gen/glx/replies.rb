#
# This file was auto-generated. Do not edit.
#

module Xrb
  module Glx
    module Reply
      class MakeCurrent < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [1, :uint8],
            :sequence, :uint16,
            :length, :uint32,
            :context_tag, :uint32,
            :pad2, [20, :uint8]
      end
      
      class IsDirect < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [1, :uint8],
            :sequence, :uint16,
            :length, :uint32,
            :is_direct, :bool,
            :pad2, [23, :uint8]
      end
      
      class QueryVersion < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [1, :uint8],
            :sequence, :uint16,
            :length, :uint32,
            :major_version, :uint32,
            :minor_version, :uint32,
            :pad2, [16, :uint8]
      end
      
      class GetVisualConfigs < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [1, :uint8],
            :sequence, :uint16,
            :length, :uint32,
            :num_visuals, :uint32,
            :num_properties, :uint32,
            :pad2, [16, :uint8],
            :property_list, [:length, :uint32, :list]
      end
      
      class VendorPrivateWithReply < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [1, :uint8],
            :sequence, :uint16,
            :length, :uint32,
            :retval, :uint32,
            :data1, [:uint8, 24],
            :data2, [:length, :uint8, :list]
      end
      
      class QueryExtensionsString < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [1, :uint8],
            :sequence, :uint16,
            :length, :uint32,
            :pad2, [4, :uint8],
            :n, :uint32,
            :pad3, [16, :uint8]
      end
      
      class QueryServerString < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [1, :uint8],
            :sequence, :uint16,
            :length, :uint32,
            :pad2, [4, :uint8],
            :str_len, :uint32,
            :pad3, [16, :uint8],
            :string, [:str_len, :char, :string]
      end
      
      class GetFbConfigs < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [1, :uint8],
            :sequence, :uint16,
            :length, :uint32,
            :num_FB_configs, :uint32,
            :num_properties, :uint32,
            :pad2, [16, :uint8],
            :property_list, [:length, :uint32, :list]
      end
      
      class QueryContext < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [1, :uint8],
            :sequence, :uint16,
            :length, :uint32,
            :num_attribs, :uint32,
            :pad2, [20, :uint8],
            :attribs, [:num_attribs, :uint32, :list]
      end
      
      class MakeContextCurrent < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [1, :uint8],
            :sequence, :uint16,
            :length, :uint32,
            :context_tag, :uint32,
            :pad2, [20, :uint8]
      end
      
      class GetDrawableAttributes < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [1, :uint8],
            :sequence, :uint16,
            :length, :uint32,
            :num_attribs, :uint32,
            :pad2, [20, :uint8],
            :attribs, [:num_attribs, :uint32, :list]
      end
      
      class GenLists < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [1, :uint8],
            :sequence, :uint16,
            :length, :uint32,
            :ret_val, :uint32
      end
      
      class RenderMode < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [1, :uint8],
            :sequence, :uint16,
            :length, :uint32,
            :ret_val, :uint32,
            :n, :uint32,
            :new_mode, :uint32,
            :pad2, [12, :uint8],
            :data, [:n, :uint32, :list]
      end
      
      class Finish < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [1, :uint8],
            :sequence, :uint16,
            :length, :uint32
      end
      
      class ReadPixels < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [1, :uint8],
            :sequence, :uint16,
            :length, :uint32,
            :pad2, [24, :uint8],
            :data, [:length, :uint8, :list]
      end
      
      class GetBooleanv < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [1, :uint8],
            :sequence, :uint16,
            :length, :uint32,
            :pad2, [4, :uint8],
            :n, :uint32,
            :datum, :bool,
            :pad3, [15, :uint8],
            :data, [:n, :bool, :list]
      end
      
      class GetClipPlane < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [1, :uint8],
            :sequence, :uint16,
            :length, :uint32,
            :pad2, [24, :uint8],
            :data, [:length, :double, :list]
      end
      
      class GetDoublev < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [1, :uint8],
            :sequence, :uint16,
            :length, :uint32,
            :pad2, [4, :uint8],
            :n, :uint32,
            :datum, :double,
            :pad3, [8, :uint8],
            :data, [:n, :double, :list]
      end
      
      class GetError < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [1, :uint8],
            :sequence, :uint16,
            :length, :uint32,
            :error, :int32
      end
      
      class GetFloatv < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [1, :uint8],
            :sequence, :uint16,
            :length, :uint32,
            :pad2, [4, :uint8],
            :n, :uint32,
            :datum, :float,
            :pad3, [12, :uint8],
            :data, [:n, :float, :list]
      end
      
      class GetIntegerv < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [1, :uint8],
            :sequence, :uint16,
            :length, :uint32,
            :pad2, [4, :uint8],
            :n, :uint32,
            :datum, :int32,
            :pad3, [12, :uint8],
            :data, [:n, :int32, :list]
      end
      
      class GetLightfv < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [1, :uint8],
            :sequence, :uint16,
            :length, :uint32,
            :pad2, [4, :uint8],
            :n, :uint32,
            :datum, :float,
            :pad3, [12, :uint8],
            :data, [:n, :float, :list]
      end
      
      class GetLightiv < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [1, :uint8],
            :sequence, :uint16,
            :length, :uint32,
            :pad2, [4, :uint8],
            :n, :uint32,
            :datum, :int32,
            :pad3, [12, :uint8],
            :data, [:n, :int32, :list]
      end
      
      class GetMapdv < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [1, :uint8],
            :sequence, :uint16,
            :length, :uint32,
            :pad2, [4, :uint8],
            :n, :uint32,
            :datum, :double,
            :pad3, [8, :uint8],
            :data, [:n, :double, :list]
      end
      
      class GetMapfv < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [1, :uint8],
            :sequence, :uint16,
            :length, :uint32,
            :pad2, [4, :uint8],
            :n, :uint32,
            :datum, :float,
            :pad3, [12, :uint8],
            :data, [:n, :float, :list]
      end
      
      class GetMapiv < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [1, :uint8],
            :sequence, :uint16,
            :length, :uint32,
            :pad2, [4, :uint8],
            :n, :uint32,
            :datum, :int32,
            :pad3, [12, :uint8],
            :data, [:n, :int32, :list]
      end
      
      class GetMaterialfv < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [1, :uint8],
            :sequence, :uint16,
            :length, :uint32,
            :pad2, [4, :uint8],
            :n, :uint32,
            :datum, :float,
            :pad3, [12, :uint8],
            :data, [:n, :float, :list]
      end
      
      class GetMaterialiv < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [1, :uint8],
            :sequence, :uint16,
            :length, :uint32,
            :pad2, [4, :uint8],
            :n, :uint32,
            :datum, :int32,
            :pad3, [12, :uint8],
            :data, [:n, :int32, :list]
      end
      
      class GetPixelMapfv < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [1, :uint8],
            :sequence, :uint16,
            :length, :uint32,
            :pad2, [4, :uint8],
            :n, :uint32,
            :datum, :float,
            :pad3, [12, :uint8],
            :data, [:n, :float, :list]
      end
      
      class GetPixelMapuiv < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [1, :uint8],
            :sequence, :uint16,
            :length, :uint32,
            :pad2, [4, :uint8],
            :n, :uint32,
            :datum, :uint32,
            :pad3, [12, :uint8],
            :data, [:n, :uint32, :list]
      end
      
      class GetPixelMapusv < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [1, :uint8],
            :sequence, :uint16,
            :length, :uint32,
            :pad2, [4, :uint8],
            :n, :uint32,
            :datum, :uint16,
            :pad3, [16, :uint8],
            :data, [:n, :uint16, :list]
      end
      
      class GetPolygonStipple < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [1, :uint8],
            :sequence, :uint16,
            :length, :uint32,
            :pad2, [24, :uint8],
            :data, [:length, :uint8, :list]
      end
      
      class GetString < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [1, :uint8],
            :sequence, :uint16,
            :length, :uint32,
            :pad2, [4, :uint8],
            :n, :uint32,
            :pad3, [16, :uint8],
            :string, [:n, :char, :string]
      end
      
      class GetTexEnvfv < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [1, :uint8],
            :sequence, :uint16,
            :length, :uint32,
            :pad2, [4, :uint8],
            :n, :uint32,
            :datum, :float,
            :pad3, [12, :uint8],
            :data, [:n, :float, :list]
      end
      
      class GetTexEnviv < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [1, :uint8],
            :sequence, :uint16,
            :length, :uint32,
            :pad2, [4, :uint8],
            :n, :uint32,
            :datum, :int32,
            :pad3, [12, :uint8],
            :data, [:n, :int32, :list]
      end
      
      class GetTexGendv < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [1, :uint8],
            :sequence, :uint16,
            :length, :uint32,
            :pad2, [4, :uint8],
            :n, :uint32,
            :datum, :double,
            :pad3, [8, :uint8],
            :data, [:n, :double, :list]
      end
      
      class GetTexGenfv < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [1, :uint8],
            :sequence, :uint16,
            :length, :uint32,
            :pad2, [4, :uint8],
            :n, :uint32,
            :datum, :float,
            :pad3, [12, :uint8],
            :data, [:n, :float, :list]
      end
      
      class GetTexGeniv < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [1, :uint8],
            :sequence, :uint16,
            :length, :uint32,
            :pad2, [4, :uint8],
            :n, :uint32,
            :datum, :int32,
            :pad3, [12, :uint8],
            :data, [:n, :int32, :list]
      end
      
      class GetTexImage < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [1, :uint8],
            :sequence, :uint16,
            :length, :uint32,
            :pad2, [8, :uint8],
            :width, :int32,
            :height, :int32,
            :depth, :int32,
            :pad3, [4, :uint8],
            :data, [:length, :uint8, :list]
      end
      
      class GetTexParameterfv < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [1, :uint8],
            :sequence, :uint16,
            :length, :uint32,
            :pad2, [4, :uint8],
            :n, :uint32,
            :datum, :float,
            :pad3, [12, :uint8],
            :data, [:n, :float, :list]
      end
      
      class GetTexParameteriv < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [1, :uint8],
            :sequence, :uint16,
            :length, :uint32,
            :pad2, [4, :uint8],
            :n, :uint32,
            :datum, :int32,
            :pad3, [12, :uint8],
            :data, [:n, :int32, :list]
      end
      
      class GetTexLevelParameterfv < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [1, :uint8],
            :sequence, :uint16,
            :length, :uint32,
            :pad2, [4, :uint8],
            :n, :uint32,
            :datum, :float,
            :pad3, [12, :uint8],
            :data, [:n, :float, :list]
      end
      
      class GetTexLevelParameteriv < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [1, :uint8],
            :sequence, :uint16,
            :length, :uint32,
            :pad2, [4, :uint8],
            :n, :uint32,
            :datum, :int32,
            :pad3, [12, :uint8],
            :data, [:n, :int32, :list]
      end
      
      class IsList < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [1, :uint8],
            :sequence, :uint16,
            :length, :uint32,
            :ret_val, :uint32
      end
      
      class AreTexturesResident < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [1, :uint8],
            :sequence, :uint16,
            :length, :uint32,
            :ret_val, :uint32,
            :pad2, [20, :uint8],
            :data, [:length, :bool, :list]
      end
      
      class GenTextures < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [1, :uint8],
            :sequence, :uint16,
            :length, :uint32,
            :pad2, [24, :uint8],
            :data, [:length, :uint32, :list]
      end
      
      class IsTexture < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [1, :uint8],
            :sequence, :uint16,
            :length, :uint32,
            :ret_val, :uint32
      end
      
      class GetColorTable < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [1, :uint8],
            :sequence, :uint16,
            :length, :uint32,
            :pad2, [8, :uint8],
            :width, :int32,
            :pad3, [12, :uint8],
            :data, [:length, :uint8, :list]
      end
      
      class GetColorTableParameterfv < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [1, :uint8],
            :sequence, :uint16,
            :length, :uint32,
            :pad2, [4, :uint8],
            :n, :uint32,
            :datum, :float,
            :pad3, [12, :uint8],
            :data, [:n, :float, :list]
      end
      
      class GetColorTableParameteriv < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [1, :uint8],
            :sequence, :uint16,
            :length, :uint32,
            :pad2, [4, :uint8],
            :n, :uint32,
            :datum, :int32,
            :pad3, [12, :uint8],
            :data, [:n, :int32, :list]
      end
      
      class GetConvolutionFilter < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [1, :uint8],
            :sequence, :uint16,
            :length, :uint32,
            :pad2, [8, :uint8],
            :width, :int32,
            :height, :int32,
            :pad3, [8, :uint8],
            :data, [:length, :uint8, :list]
      end
      
      class GetConvolutionParameterfv < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [1, :uint8],
            :sequence, :uint16,
            :length, :uint32,
            :pad2, [4, :uint8],
            :n, :uint32,
            :datum, :float,
            :pad3, [12, :uint8],
            :data, [:n, :float, :list]
      end
      
      class GetConvolutionParameteriv < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [1, :uint8],
            :sequence, :uint16,
            :length, :uint32,
            :pad2, [4, :uint8],
            :n, :uint32,
            :datum, :int32,
            :pad3, [12, :uint8],
            :data, [:n, :int32, :list]
      end
      
      class GetSeparableFilter < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [1, :uint8],
            :sequence, :uint16,
            :length, :uint32,
            :pad2, [8, :uint8],
            :row_w, :int32,
            :col_h, :int32,
            :pad3, [8, :uint8],
            :rows_and_cols, [:length, :uint8, :list]
      end
      
      class GetHistogram < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [1, :uint8],
            :sequence, :uint16,
            :length, :uint32,
            :pad2, [8, :uint8],
            :width, :int32,
            :pad3, [12, :uint8],
            :data, [:length, :uint8, :list]
      end
      
      class GetHistogramParameterfv < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [1, :uint8],
            :sequence, :uint16,
            :length, :uint32,
            :pad2, [4, :uint8],
            :n, :uint32,
            :datum, :float,
            :pad3, [12, :uint8],
            :data, [:n, :float, :list]
      end
      
      class GetHistogramParameteriv < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [1, :uint8],
            :sequence, :uint16,
            :length, :uint32,
            :pad2, [4, :uint8],
            :n, :uint32,
            :datum, :int32,
            :pad3, [12, :uint8],
            :data, [:n, :int32, :list]
      end
      
      class GetMinmax < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [1, :uint8],
            :sequence, :uint16,
            :length, :uint32,
            :pad2, [24, :uint8],
            :data, [:length, :uint8, :list]
      end
      
      class GetMinmaxParameterfv < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [1, :uint8],
            :sequence, :uint16,
            :length, :uint32,
            :pad2, [4, :uint8],
            :n, :uint32,
            :datum, :float,
            :pad3, [12, :uint8],
            :data, [:n, :float, :list]
      end
      
      class GetMinmaxParameteriv < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [1, :uint8],
            :sequence, :uint16,
            :length, :uint32,
            :pad2, [4, :uint8],
            :n, :uint32,
            :datum, :int32,
            :pad3, [12, :uint8],
            :data, [:n, :int32, :list]
      end
      
      class GetCompressedTexImageArb < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [1, :uint8],
            :sequence, :uint16,
            :length, :uint32,
            :pad2, [8, :uint8],
            :size, :int32,
            :pad3, [12, :uint8],
            :data, [:length, :uint8, :list]
      end
      
      class GenQueriesArb < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [1, :uint8],
            :sequence, :uint16,
            :length, :uint32,
            :pad2, [24, :uint8],
            :data, [:length, :uint32, :list]
      end
      
      class IsQueryArb < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [1, :uint8],
            :sequence, :uint16,
            :length, :uint32,
            :ret_val, :uint32
      end
      
      class GetQueryivArb < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [1, :uint8],
            :sequence, :uint16,
            :length, :uint32,
            :pad2, [4, :uint8],
            :n, :uint32,
            :datum, :int32,
            :pad3, [12, :uint8],
            :data, [:n, :int32, :list]
      end
      
      class GetQueryObjectivArb < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [1, :uint8],
            :sequence, :uint16,
            :length, :uint32,
            :pad2, [4, :uint8],
            :n, :uint32,
            :datum, :int32,
            :pad3, [12, :uint8],
            :data, [:n, :int32, :list]
      end
      
      class GetQueryObjectuivArb < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [1, :uint8],
            :sequence, :uint16,
            :length, :uint32,
            :pad2, [4, :uint8],
            :n, :uint32,
            :datum, :uint32,
            :pad3, [12, :uint8],
            :data, [:n, :uint32, :list]
      end
      
    end
  end
end
