#
# This file was auto-generated. Do not edit.
#

module Xrb
  module Glx
    module Reply
      class MakeCurrent < Xrb::Message
        layout \
            :response_type, :uint8
            :pad1, [:uint8, 1]
            :sequence, :uint16
            :length, :uint32
            :context_tag, :uint32
            :pad2, [:uint8, 20]
      end
      
      class IsDirect < Xrb::Message
        layout \
            :response_type, :uint8
            :pad1, [:uint8, 1]
            :sequence, :uint16
            :length, :uint32
            :is_direct, :bool
            :pad2, [:uint8, 23]
      end
      
      class QueryVersion < Xrb::Message
        layout \
            :response_type, :uint8
            :pad1, [:uint8, 1]
            :sequence, :uint16
            :length, :uint32
            :major_version, :uint32
            :minor_version, :uint32
            :pad2, [:uint8, 16]
      end
      
      class GetVisualConfigs < Xrb::Message
        layout \
            :response_type, :uint8
            :pad1, [:uint8, 1]
            :sequence, :uint16
            :length, :uint32
            :num_visuals, :uint32
            :num_properties, :uint32
            :pad2, [:uint8, 16]
      end
      
      class VendorPrivateWithReply < Xrb::Message
        layout \
            :response_type, :uint8
            :pad1, [:uint8, 1]
            :sequence, :uint16
            :length, :uint32
            :retval, :uint32
            :data1, [:uint8, 24]
      end
      
      class QueryExtensionsString < Xrb::Message
        layout \
            :response_type, :uint8
            :pad1, [:uint8, 1]
            :sequence, :uint16
            :length, :uint32
            :pad2, [:uint8, 4]
            :n, :uint32
            :pad3, [:uint8, 16]
      end
      
      class QueryServerString < Xrb::Message
        layout \
            :response_type, :uint8
            :pad1, [:uint8, 1]
            :sequence, :uint16
            :length, :uint32
            :pad2, [:uint8, 4]
            :str_len, :uint32
            :pad3, [:uint8, 16]
      end
      
      class GetFbConfigs < Xrb::Message
        layout \
            :response_type, :uint8
            :pad1, [:uint8, 1]
            :sequence, :uint16
            :length, :uint32
            :num_FB_configs, :uint32
            :num_properties, :uint32
            :pad2, [:uint8, 16]
      end
      
      class QueryContext < Xrb::Message
        layout \
            :response_type, :uint8
            :pad1, [:uint8, 1]
            :sequence, :uint16
            :length, :uint32
            :num_attribs, :uint32
            :pad2, [:uint8, 20]
      end
      
      class MakeContextCurrent < Xrb::Message
        layout \
            :response_type, :uint8
            :pad1, [:uint8, 1]
            :sequence, :uint16
            :length, :uint32
            :context_tag, :uint32
            :pad2, [:uint8, 20]
      end
      
      class GetDrawableAttributes < Xrb::Message
        layout \
            :response_type, :uint8
            :pad1, [:uint8, 1]
            :sequence, :uint16
            :length, :uint32
            :num_attribs, :uint32
            :pad2, [:uint8, 20]
      end
      
      class GenLists < Xrb::Message
        layout \
            :response_type, :uint8
            :pad1, [:uint8, 1]
            :sequence, :uint16
            :length, :uint32
            :ret_val, :uint32
      end
      
      class RenderMode < Xrb::Message
        layout \
            :response_type, :uint8
            :pad1, [:uint8, 1]
            :sequence, :uint16
            :length, :uint32
            :ret_val, :uint32
            :n, :uint32
            :new_mode, :uint32
            :pad2, [:uint8, 12]
      end
      
      class Finish < Xrb::Message
        layout \
            :response_type, :uint8
            :pad1, [:uint8, 1]
            :sequence, :uint16
            :length, :uint32
      end
      
      class ReadPixels < Xrb::Message
        layout \
            :response_type, :uint8
            :pad1, [:uint8, 1]
            :sequence, :uint16
            :length, :uint32
            :pad2, [:uint8, 24]
      end
      
      class GetBooleanv < Xrb::Message
        layout \
            :response_type, :uint8
            :pad1, [:uint8, 1]
            :sequence, :uint16
            :length, :uint32
            :pad2, [:uint8, 4]
            :n, :uint32
            :datum, :bool
            :pad3, [:uint8, 15]
      end
      
      class GetClipPlane < Xrb::Message
        layout \
            :response_type, :uint8
            :pad1, [:uint8, 1]
            :sequence, :uint16
            :length, :uint32
            :pad2, [:uint8, 24]
      end
      
      class GetDoublev < Xrb::Message
        layout \
            :response_type, :uint8
            :pad1, [:uint8, 1]
            :sequence, :uint16
            :length, :uint32
            :pad2, [:uint8, 4]
            :n, :uint32
            :datum, :double
            :pad3, [:uint8, 8]
      end
      
      class GetError < Xrb::Message
        layout \
            :response_type, :uint8
            :pad1, [:uint8, 1]
            :sequence, :uint16
            :length, :uint32
            :error, :int32
      end
      
      class GetFloatv < Xrb::Message
        layout \
            :response_type, :uint8
            :pad1, [:uint8, 1]
            :sequence, :uint16
            :length, :uint32
            :pad2, [:uint8, 4]
            :n, :uint32
            :datum, :float
            :pad3, [:uint8, 12]
      end
      
      class GetIntegerv < Xrb::Message
        layout \
            :response_type, :uint8
            :pad1, [:uint8, 1]
            :sequence, :uint16
            :length, :uint32
            :pad2, [:uint8, 4]
            :n, :uint32
            :datum, :int32
            :pad3, [:uint8, 12]
      end
      
      class GetLightfv < Xrb::Message
        layout \
            :response_type, :uint8
            :pad1, [:uint8, 1]
            :sequence, :uint16
            :length, :uint32
            :pad2, [:uint8, 4]
            :n, :uint32
            :datum, :float
            :pad3, [:uint8, 12]
      end
      
      class GetLightiv < Xrb::Message
        layout \
            :response_type, :uint8
            :pad1, [:uint8, 1]
            :sequence, :uint16
            :length, :uint32
            :pad2, [:uint8, 4]
            :n, :uint32
            :datum, :int32
            :pad3, [:uint8, 12]
      end
      
      class GetMapdv < Xrb::Message
        layout \
            :response_type, :uint8
            :pad1, [:uint8, 1]
            :sequence, :uint16
            :length, :uint32
            :pad2, [:uint8, 4]
            :n, :uint32
            :datum, :double
            :pad3, [:uint8, 8]
      end
      
      class GetMapfv < Xrb::Message
        layout \
            :response_type, :uint8
            :pad1, [:uint8, 1]
            :sequence, :uint16
            :length, :uint32
            :pad2, [:uint8, 4]
            :n, :uint32
            :datum, :float
            :pad3, [:uint8, 12]
      end
      
      class GetMapiv < Xrb::Message
        layout \
            :response_type, :uint8
            :pad1, [:uint8, 1]
            :sequence, :uint16
            :length, :uint32
            :pad2, [:uint8, 4]
            :n, :uint32
            :datum, :int32
            :pad3, [:uint8, 12]
      end
      
      class GetMaterialfv < Xrb::Message
        layout \
            :response_type, :uint8
            :pad1, [:uint8, 1]
            :sequence, :uint16
            :length, :uint32
            :pad2, [:uint8, 4]
            :n, :uint32
            :datum, :float
            :pad3, [:uint8, 12]
      end
      
      class GetMaterialiv < Xrb::Message
        layout \
            :response_type, :uint8
            :pad1, [:uint8, 1]
            :sequence, :uint16
            :length, :uint32
            :pad2, [:uint8, 4]
            :n, :uint32
            :datum, :int32
            :pad3, [:uint8, 12]
      end
      
      class GetPixelMapfv < Xrb::Message
        layout \
            :response_type, :uint8
            :pad1, [:uint8, 1]
            :sequence, :uint16
            :length, :uint32
            :pad2, [:uint8, 4]
            :n, :uint32
            :datum, :float
            :pad3, [:uint8, 12]
      end
      
      class GetPixelMapuiv < Xrb::Message
        layout \
            :response_type, :uint8
            :pad1, [:uint8, 1]
            :sequence, :uint16
            :length, :uint32
            :pad2, [:uint8, 4]
            :n, :uint32
            :datum, :uint32
            :pad3, [:uint8, 12]
      end
      
      class GetPixelMapusv < Xrb::Message
        layout \
            :response_type, :uint8
            :pad1, [:uint8, 1]
            :sequence, :uint16
            :length, :uint32
            :pad2, [:uint8, 4]
            :n, :uint32
            :datum, :uint16
            :pad3, [:uint8, 16]
      end
      
      class GetPolygonStipple < Xrb::Message
        layout \
            :response_type, :uint8
            :pad1, [:uint8, 1]
            :sequence, :uint16
            :length, :uint32
            :pad2, [:uint8, 24]
      end
      
      class GetString < Xrb::Message
        layout \
            :response_type, :uint8
            :pad1, [:uint8, 1]
            :sequence, :uint16
            :length, :uint32
            :pad2, [:uint8, 4]
            :n, :uint32
            :pad3, [:uint8, 16]
      end
      
      class GetTexEnvfv < Xrb::Message
        layout \
            :response_type, :uint8
            :pad1, [:uint8, 1]
            :sequence, :uint16
            :length, :uint32
            :pad2, [:uint8, 4]
            :n, :uint32
            :datum, :float
            :pad3, [:uint8, 12]
      end
      
      class GetTexEnviv < Xrb::Message
        layout \
            :response_type, :uint8
            :pad1, [:uint8, 1]
            :sequence, :uint16
            :length, :uint32
            :pad2, [:uint8, 4]
            :n, :uint32
            :datum, :int32
            :pad3, [:uint8, 12]
      end
      
      class GetTexGendv < Xrb::Message
        layout \
            :response_type, :uint8
            :pad1, [:uint8, 1]
            :sequence, :uint16
            :length, :uint32
            :pad2, [:uint8, 4]
            :n, :uint32
            :datum, :double
            :pad3, [:uint8, 8]
      end
      
      class GetTexGenfv < Xrb::Message
        layout \
            :response_type, :uint8
            :pad1, [:uint8, 1]
            :sequence, :uint16
            :length, :uint32
            :pad2, [:uint8, 4]
            :n, :uint32
            :datum, :float
            :pad3, [:uint8, 12]
      end
      
      class GetTexGeniv < Xrb::Message
        layout \
            :response_type, :uint8
            :pad1, [:uint8, 1]
            :sequence, :uint16
            :length, :uint32
            :pad2, [:uint8, 4]
            :n, :uint32
            :datum, :int32
            :pad3, [:uint8, 12]
      end
      
      class GetTexImage < Xrb::Message
        layout \
            :response_type, :uint8
            :pad1, [:uint8, 1]
            :sequence, :uint16
            :length, :uint32
            :pad2, [:uint8, 8]
            :width, :int32
            :height, :int32
            :depth, :int32
            :pad3, [:uint8, 4]
      end
      
      class GetTexParameterfv < Xrb::Message
        layout \
            :response_type, :uint8
            :pad1, [:uint8, 1]
            :sequence, :uint16
            :length, :uint32
            :pad2, [:uint8, 4]
            :n, :uint32
            :datum, :float
            :pad3, [:uint8, 12]
      end
      
      class GetTexParameteriv < Xrb::Message
        layout \
            :response_type, :uint8
            :pad1, [:uint8, 1]
            :sequence, :uint16
            :length, :uint32
            :pad2, [:uint8, 4]
            :n, :uint32
            :datum, :int32
            :pad3, [:uint8, 12]
      end
      
      class GetTexLevelParameterfv < Xrb::Message
        layout \
            :response_type, :uint8
            :pad1, [:uint8, 1]
            :sequence, :uint16
            :length, :uint32
            :pad2, [:uint8, 4]
            :n, :uint32
            :datum, :float
            :pad3, [:uint8, 12]
      end
      
      class GetTexLevelParameteriv < Xrb::Message
        layout \
            :response_type, :uint8
            :pad1, [:uint8, 1]
            :sequence, :uint16
            :length, :uint32
            :pad2, [:uint8, 4]
            :n, :uint32
            :datum, :int32
            :pad3, [:uint8, 12]
      end
      
      class IsList < Xrb::Message
        layout \
            :response_type, :uint8
            :pad1, [:uint8, 1]
            :sequence, :uint16
            :length, :uint32
            :ret_val, :uint32
      end
      
      class AreTexturesResident < Xrb::Message
        layout \
            :response_type, :uint8
            :pad1, [:uint8, 1]
            :sequence, :uint16
            :length, :uint32
            :ret_val, :uint32
            :pad2, [:uint8, 20]
      end
      
      class GenTextures < Xrb::Message
        layout \
            :response_type, :uint8
            :pad1, [:uint8, 1]
            :sequence, :uint16
            :length, :uint32
            :pad2, [:uint8, 24]
      end
      
      class IsTexture < Xrb::Message
        layout \
            :response_type, :uint8
            :pad1, [:uint8, 1]
            :sequence, :uint16
            :length, :uint32
            :ret_val, :uint32
      end
      
      class GetColorTable < Xrb::Message
        layout \
            :response_type, :uint8
            :pad1, [:uint8, 1]
            :sequence, :uint16
            :length, :uint32
            :pad2, [:uint8, 8]
            :width, :int32
            :pad3, [:uint8, 12]
      end
      
      class GetColorTableParameterfv < Xrb::Message
        layout \
            :response_type, :uint8
            :pad1, [:uint8, 1]
            :sequence, :uint16
            :length, :uint32
            :pad2, [:uint8, 4]
            :n, :uint32
            :datum, :float
            :pad3, [:uint8, 12]
      end
      
      class GetColorTableParameteriv < Xrb::Message
        layout \
            :response_type, :uint8
            :pad1, [:uint8, 1]
            :sequence, :uint16
            :length, :uint32
            :pad2, [:uint8, 4]
            :n, :uint32
            :datum, :int32
            :pad3, [:uint8, 12]
      end
      
      class GetConvolutionFilter < Xrb::Message
        layout \
            :response_type, :uint8
            :pad1, [:uint8, 1]
            :sequence, :uint16
            :length, :uint32
            :pad2, [:uint8, 8]
            :width, :int32
            :height, :int32
            :pad3, [:uint8, 8]
      end
      
      class GetConvolutionParameterfv < Xrb::Message
        layout \
            :response_type, :uint8
            :pad1, [:uint8, 1]
            :sequence, :uint16
            :length, :uint32
            :pad2, [:uint8, 4]
            :n, :uint32
            :datum, :float
            :pad3, [:uint8, 12]
      end
      
      class GetConvolutionParameteriv < Xrb::Message
        layout \
            :response_type, :uint8
            :pad1, [:uint8, 1]
            :sequence, :uint16
            :length, :uint32
            :pad2, [:uint8, 4]
            :n, :uint32
            :datum, :int32
            :pad3, [:uint8, 12]
      end
      
      class GetSeparableFilter < Xrb::Message
        layout \
            :response_type, :uint8
            :pad1, [:uint8, 1]
            :sequence, :uint16
            :length, :uint32
            :pad2, [:uint8, 8]
            :row_w, :int32
            :col_h, :int32
            :pad3, [:uint8, 8]
      end
      
      class GetHistogram < Xrb::Message
        layout \
            :response_type, :uint8
            :pad1, [:uint8, 1]
            :sequence, :uint16
            :length, :uint32
            :pad2, [:uint8, 8]
            :width, :int32
            :pad3, [:uint8, 12]
      end
      
      class GetHistogramParameterfv < Xrb::Message
        layout \
            :response_type, :uint8
            :pad1, [:uint8, 1]
            :sequence, :uint16
            :length, :uint32
            :pad2, [:uint8, 4]
            :n, :uint32
            :datum, :float
            :pad3, [:uint8, 12]
      end
      
      class GetHistogramParameteriv < Xrb::Message
        layout \
            :response_type, :uint8
            :pad1, [:uint8, 1]
            :sequence, :uint16
            :length, :uint32
            :pad2, [:uint8, 4]
            :n, :uint32
            :datum, :int32
            :pad3, [:uint8, 12]
      end
      
      class GetMinmax < Xrb::Message
        layout \
            :response_type, :uint8
            :pad1, [:uint8, 1]
            :sequence, :uint16
            :length, :uint32
            :pad2, [:uint8, 24]
      end
      
      class GetMinmaxParameterfv < Xrb::Message
        layout \
            :response_type, :uint8
            :pad1, [:uint8, 1]
            :sequence, :uint16
            :length, :uint32
            :pad2, [:uint8, 4]
            :n, :uint32
            :datum, :float
            :pad3, [:uint8, 12]
      end
      
      class GetMinmaxParameteriv < Xrb::Message
        layout \
            :response_type, :uint8
            :pad1, [:uint8, 1]
            :sequence, :uint16
            :length, :uint32
            :pad2, [:uint8, 4]
            :n, :uint32
            :datum, :int32
            :pad3, [:uint8, 12]
      end
      
      class GetCompressedTexImageArb < Xrb::Message
        layout \
            :response_type, :uint8
            :pad1, [:uint8, 1]
            :sequence, :uint16
            :length, :uint32
            :pad2, [:uint8, 8]
            :size, :int32
            :pad3, [:uint8, 12]
      end
      
      class GenQueriesArb < Xrb::Message
        layout \
            :response_type, :uint8
            :pad1, [:uint8, 1]
            :sequence, :uint16
            :length, :uint32
            :pad2, [:uint8, 24]
      end
      
      class IsQueryArb < Xrb::Message
        layout \
            :response_type, :uint8
            :pad1, [:uint8, 1]
            :sequence, :uint16
            :length, :uint32
            :ret_val, :uint32
      end
      
      class GetQueryivArb < Xrb::Message
        layout \
            :response_type, :uint8
            :pad1, [:uint8, 1]
            :sequence, :uint16
            :length, :uint32
            :pad2, [:uint8, 4]
            :n, :uint32
            :datum, :int32
            :pad3, [:uint8, 12]
      end
      
      class GetQueryObjectivArb < Xrb::Message
        layout \
            :response_type, :uint8
            :pad1, [:uint8, 1]
            :sequence, :uint16
            :length, :uint32
            :pad2, [:uint8, 4]
            :n, :uint32
            :datum, :int32
            :pad3, [:uint8, 12]
      end
      
      class GetQueryObjectuivArb < Xrb::Message
        layout \
            :response_type, :uint8
            :pad1, [:uint8, 1]
            :sequence, :uint16
            :length, :uint32
            :pad2, [:uint8, 4]
            :n, :uint32
            :datum, :uint32
            :pad3, [:uint8, 12]
      end
      
    end
  end
end
