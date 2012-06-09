#
# This file was auto-generated. Do not edit.
#

module Xrb
  module Glx
    module Cookie
      class Render < Xrd::Message
        layout :sequence, :int
      end
      
      class RenderLarge < Xrd::Message
        layout :sequence, :int
      end
      
      class CreateContext < Xrd::Message
        layout :sequence, :int
      end
      
      class DestroyContext < Xrd::Message
        layout :sequence, :int
      end
      
      class MakeCurrent < Xrd::Message
        layout :sequence, :int
      end
      
      class IsDirect < Xrd::Message
        layout :sequence, :int
      end
      
      class QueryVersion < Xrd::Message
        layout :sequence, :int
      end
      
      class WaitGl < Xrd::Message
        layout :sequence, :int
      end
      
      class WaitX < Xrd::Message
        layout :sequence, :int
      end
      
      class CopyContext < Xrd::Message
        layout :sequence, :int
      end
      
      class SwapBuffers < Xrd::Message
        layout :sequence, :int
      end
      
      class UseXFont < Xrd::Message
        layout :sequence, :int
      end
      
      class CreateGlxPixmap < Xrd::Message
        layout :sequence, :int
      end
      
      class GetVisualConfigs < Xrd::Message
        layout :sequence, :int
      end
      
      class DestroyGlxPixmap < Xrd::Message
        layout :sequence, :int
      end
      
      class VendorPrivate < Xrd::Message
        layout :sequence, :int
      end
      
      class VendorPrivateWithReply < Xrd::Message
        layout :sequence, :int
      end
      
      class QueryExtensionsString < Xrd::Message
        layout :sequence, :int
      end
      
      class QueryServerString < Xrd::Message
        layout :sequence, :int
      end
      
      class ClientInfo < Xrd::Message
        layout :sequence, :int
      end
      
      class GetFbConfigs < Xrd::Message
        layout :sequence, :int
      end
      
      class CreatePixmap < Xrd::Message
        layout :sequence, :int
      end
      
      class DestroyPixmap < Xrd::Message
        layout :sequence, :int
      end
      
      class CreateNewContext < Xrd::Message
        layout :sequence, :int
      end
      
      class QueryContext < Xrd::Message
        layout :sequence, :int
      end
      
      class MakeContextCurrent < Xrd::Message
        layout :sequence, :int
      end
      
      class CreatePbuffer < Xrd::Message
        layout :sequence, :int
      end
      
      class DestroyPbuffer < Xrd::Message
        layout :sequence, :int
      end
      
      class GetDrawableAttributes < Xrd::Message
        layout :sequence, :int
      end
      
      class ChangeDrawableAttributes < Xrd::Message
        layout :sequence, :int
      end
      
      class CreateWindow < Xrd::Message
        layout :sequence, :int
      end
      
      class DeleteWindow < Xrd::Message
        layout :sequence, :int
      end
      
      class SetClientInfoArb < Xrd::Message
        layout :sequence, :int
      end
      
      class CreateContextAttribsArb < Xrd::Message
        layout :sequence, :int
      end
      
      class SetClientInfo_2arb < Xrd::Message
        layout :sequence, :int
      end
      
      class NewList < Xrd::Message
        layout :sequence, :int
      end
      
      class EndList < Xrd::Message
        layout :sequence, :int
      end
      
      class DeleteLists < Xrd::Message
        layout :sequence, :int
      end
      
      class GenLists < Xrd::Message
        layout :sequence, :int
      end
      
      class FeedbackBuffer < Xrd::Message
        layout :sequence, :int
      end
      
      class SelectBuffer < Xrd::Message
        layout :sequence, :int
      end
      
      class RenderMode < Xrd::Message
        layout :sequence, :int
      end
      
      class Finish < Xrd::Message
        layout :sequence, :int
      end
      
      class PixelStoref < Xrd::Message
        layout :sequence, :int
      end
      
      class PixelStorei < Xrd::Message
        layout :sequence, :int
      end
      
      class ReadPixels < Xrd::Message
        layout :sequence, :int
      end
      
      class GetBooleanv < Xrd::Message
        layout :sequence, :int
      end
      
      class GetClipPlane < Xrd::Message
        layout :sequence, :int
      end
      
      class GetDoublev < Xrd::Message
        layout :sequence, :int
      end
      
      class GetError < Xrd::Message
        layout :sequence, :int
      end
      
      class GetFloatv < Xrd::Message
        layout :sequence, :int
      end
      
      class GetIntegerv < Xrd::Message
        layout :sequence, :int
      end
      
      class GetLightfv < Xrd::Message
        layout :sequence, :int
      end
      
      class GetLightiv < Xrd::Message
        layout :sequence, :int
      end
      
      class GetMapdv < Xrd::Message
        layout :sequence, :int
      end
      
      class GetMapfv < Xrd::Message
        layout :sequence, :int
      end
      
      class GetMapiv < Xrd::Message
        layout :sequence, :int
      end
      
      class GetMaterialfv < Xrd::Message
        layout :sequence, :int
      end
      
      class GetMaterialiv < Xrd::Message
        layout :sequence, :int
      end
      
      class GetPixelMapfv < Xrd::Message
        layout :sequence, :int
      end
      
      class GetPixelMapuiv < Xrd::Message
        layout :sequence, :int
      end
      
      class GetPixelMapusv < Xrd::Message
        layout :sequence, :int
      end
      
      class GetPolygonStipple < Xrd::Message
        layout :sequence, :int
      end
      
      class GetString < Xrd::Message
        layout :sequence, :int
      end
      
      class GetTexEnvfv < Xrd::Message
        layout :sequence, :int
      end
      
      class GetTexEnviv < Xrd::Message
        layout :sequence, :int
      end
      
      class GetTexGendv < Xrd::Message
        layout :sequence, :int
      end
      
      class GetTexGenfv < Xrd::Message
        layout :sequence, :int
      end
      
      class GetTexGeniv < Xrd::Message
        layout :sequence, :int
      end
      
      class GetTexImage < Xrd::Message
        layout :sequence, :int
      end
      
      class GetTexParameterfv < Xrd::Message
        layout :sequence, :int
      end
      
      class GetTexParameteriv < Xrd::Message
        layout :sequence, :int
      end
      
      class GetTexLevelParameterfv < Xrd::Message
        layout :sequence, :int
      end
      
      class GetTexLevelParameteriv < Xrd::Message
        layout :sequence, :int
      end
      
      class IsList < Xrd::Message
        layout :sequence, :int
      end
      
      class Flush < Xrd::Message
        layout :sequence, :int
      end
      
      class AreTexturesResident < Xrd::Message
        layout :sequence, :int
      end
      
      class DeleteTextures < Xrd::Message
        layout :sequence, :int
      end
      
      class GenTextures < Xrd::Message
        layout :sequence, :int
      end
      
      class IsTexture < Xrd::Message
        layout :sequence, :int
      end
      
      class GetColorTable < Xrd::Message
        layout :sequence, :int
      end
      
      class GetColorTableParameterfv < Xrd::Message
        layout :sequence, :int
      end
      
      class GetColorTableParameteriv < Xrd::Message
        layout :sequence, :int
      end
      
      class GetConvolutionFilter < Xrd::Message
        layout :sequence, :int
      end
      
      class GetConvolutionParameterfv < Xrd::Message
        layout :sequence, :int
      end
      
      class GetConvolutionParameteriv < Xrd::Message
        layout :sequence, :int
      end
      
      class GetSeparableFilter < Xrd::Message
        layout :sequence, :int
      end
      
      class GetHistogram < Xrd::Message
        layout :sequence, :int
      end
      
      class GetHistogramParameterfv < Xrd::Message
        layout :sequence, :int
      end
      
      class GetHistogramParameteriv < Xrd::Message
        layout :sequence, :int
      end
      
      class GetMinmax < Xrd::Message
        layout :sequence, :int
      end
      
      class GetMinmaxParameterfv < Xrd::Message
        layout :sequence, :int
      end
      
      class GetMinmaxParameteriv < Xrd::Message
        layout :sequence, :int
      end
      
      class GetCompressedTexImageArb < Xrd::Message
        layout :sequence, :int
      end
      
      class DeleteQueriesArb < Xrd::Message
        layout :sequence, :int
      end
      
      class GenQueriesArb < Xrd::Message
        layout :sequence, :int
      end
      
      class IsQueryArb < Xrd::Message
        layout :sequence, :int
      end
      
      class GetQueryivArb < Xrd::Message
        layout :sequence, :int
      end
      
      class GetQueryObjectivArb < Xrd::Message
        layout :sequence, :int
      end
      
      class GetQueryObjectuivArb < Xrd::Message
        layout :sequence, :int
      end
      
    end
  end
end
