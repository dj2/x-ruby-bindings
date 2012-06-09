#
# This file was auto-generated. Do not edit.
#

module Xrb
  module Glx
    module Cookie
      class Render < Xrb::Message
        layout :sequence, :int
      end
      
      class RenderLarge < Xrb::Message
        layout :sequence, :int
      end
      
      class CreateContext < Xrb::Message
        layout :sequence, :int
      end
      
      class DestroyContext < Xrb::Message
        layout :sequence, :int
      end
      
      class MakeCurrent < Xrb::Message
        layout :sequence, :int
      end
      
      class IsDirect < Xrb::Message
        layout :sequence, :int
      end
      
      class QueryVersion < Xrb::Message
        layout :sequence, :int
      end
      
      class WaitGl < Xrb::Message
        layout :sequence, :int
      end
      
      class WaitX < Xrb::Message
        layout :sequence, :int
      end
      
      class CopyContext < Xrb::Message
        layout :sequence, :int
      end
      
      class SwapBuffers < Xrb::Message
        layout :sequence, :int
      end
      
      class UseXFont < Xrb::Message
        layout :sequence, :int
      end
      
      class CreateGlxPixmap < Xrb::Message
        layout :sequence, :int
      end
      
      class GetVisualConfigs < Xrb::Message
        layout :sequence, :int
      end
      
      class DestroyGlxPixmap < Xrb::Message
        layout :sequence, :int
      end
      
      class VendorPrivate < Xrb::Message
        layout :sequence, :int
      end
      
      class VendorPrivateWithReply < Xrb::Message
        layout :sequence, :int
      end
      
      class QueryExtensionsString < Xrb::Message
        layout :sequence, :int
      end
      
      class QueryServerString < Xrb::Message
        layout :sequence, :int
      end
      
      class ClientInfo < Xrb::Message
        layout :sequence, :int
      end
      
      class GetFbConfigs < Xrb::Message
        layout :sequence, :int
      end
      
      class CreatePixmap < Xrb::Message
        layout :sequence, :int
      end
      
      class DestroyPixmap < Xrb::Message
        layout :sequence, :int
      end
      
      class CreateNewContext < Xrb::Message
        layout :sequence, :int
      end
      
      class QueryContext < Xrb::Message
        layout :sequence, :int
      end
      
      class MakeContextCurrent < Xrb::Message
        layout :sequence, :int
      end
      
      class CreatePbuffer < Xrb::Message
        layout :sequence, :int
      end
      
      class DestroyPbuffer < Xrb::Message
        layout :sequence, :int
      end
      
      class GetDrawableAttributes < Xrb::Message
        layout :sequence, :int
      end
      
      class ChangeDrawableAttributes < Xrb::Message
        layout :sequence, :int
      end
      
      class CreateWindow < Xrb::Message
        layout :sequence, :int
      end
      
      class DeleteWindow < Xrb::Message
        layout :sequence, :int
      end
      
      class SetClientInfoArb < Xrb::Message
        layout :sequence, :int
      end
      
      class CreateContextAttribsArb < Xrb::Message
        layout :sequence, :int
      end
      
      class SetClientInfo_2arb < Xrb::Message
        layout :sequence, :int
      end
      
      class NewList < Xrb::Message
        layout :sequence, :int
      end
      
      class EndList < Xrb::Message
        layout :sequence, :int
      end
      
      class DeleteLists < Xrb::Message
        layout :sequence, :int
      end
      
      class GenLists < Xrb::Message
        layout :sequence, :int
      end
      
      class FeedbackBuffer < Xrb::Message
        layout :sequence, :int
      end
      
      class SelectBuffer < Xrb::Message
        layout :sequence, :int
      end
      
      class RenderMode < Xrb::Message
        layout :sequence, :int
      end
      
      class Finish < Xrb::Message
        layout :sequence, :int
      end
      
      class PixelStoref < Xrb::Message
        layout :sequence, :int
      end
      
      class PixelStorei < Xrb::Message
        layout :sequence, :int
      end
      
      class ReadPixels < Xrb::Message
        layout :sequence, :int
      end
      
      class GetBooleanv < Xrb::Message
        layout :sequence, :int
      end
      
      class GetClipPlane < Xrb::Message
        layout :sequence, :int
      end
      
      class GetDoublev < Xrb::Message
        layout :sequence, :int
      end
      
      class GetError < Xrb::Message
        layout :sequence, :int
      end
      
      class GetFloatv < Xrb::Message
        layout :sequence, :int
      end
      
      class GetIntegerv < Xrb::Message
        layout :sequence, :int
      end
      
      class GetLightfv < Xrb::Message
        layout :sequence, :int
      end
      
      class GetLightiv < Xrb::Message
        layout :sequence, :int
      end
      
      class GetMapdv < Xrb::Message
        layout :sequence, :int
      end
      
      class GetMapfv < Xrb::Message
        layout :sequence, :int
      end
      
      class GetMapiv < Xrb::Message
        layout :sequence, :int
      end
      
      class GetMaterialfv < Xrb::Message
        layout :sequence, :int
      end
      
      class GetMaterialiv < Xrb::Message
        layout :sequence, :int
      end
      
      class GetPixelMapfv < Xrb::Message
        layout :sequence, :int
      end
      
      class GetPixelMapuiv < Xrb::Message
        layout :sequence, :int
      end
      
      class GetPixelMapusv < Xrb::Message
        layout :sequence, :int
      end
      
      class GetPolygonStipple < Xrb::Message
        layout :sequence, :int
      end
      
      class GetString < Xrb::Message
        layout :sequence, :int
      end
      
      class GetTexEnvfv < Xrb::Message
        layout :sequence, :int
      end
      
      class GetTexEnviv < Xrb::Message
        layout :sequence, :int
      end
      
      class GetTexGendv < Xrb::Message
        layout :sequence, :int
      end
      
      class GetTexGenfv < Xrb::Message
        layout :sequence, :int
      end
      
      class GetTexGeniv < Xrb::Message
        layout :sequence, :int
      end
      
      class GetTexImage < Xrb::Message
        layout :sequence, :int
      end
      
      class GetTexParameterfv < Xrb::Message
        layout :sequence, :int
      end
      
      class GetTexParameteriv < Xrb::Message
        layout :sequence, :int
      end
      
      class GetTexLevelParameterfv < Xrb::Message
        layout :sequence, :int
      end
      
      class GetTexLevelParameteriv < Xrb::Message
        layout :sequence, :int
      end
      
      class IsList < Xrb::Message
        layout :sequence, :int
      end
      
      class Flush < Xrb::Message
        layout :sequence, :int
      end
      
      class AreTexturesResident < Xrb::Message
        layout :sequence, :int
      end
      
      class DeleteTextures < Xrb::Message
        layout :sequence, :int
      end
      
      class GenTextures < Xrb::Message
        layout :sequence, :int
      end
      
      class IsTexture < Xrb::Message
        layout :sequence, :int
      end
      
      class GetColorTable < Xrb::Message
        layout :sequence, :int
      end
      
      class GetColorTableParameterfv < Xrb::Message
        layout :sequence, :int
      end
      
      class GetColorTableParameteriv < Xrb::Message
        layout :sequence, :int
      end
      
      class GetConvolutionFilter < Xrb::Message
        layout :sequence, :int
      end
      
      class GetConvolutionParameterfv < Xrb::Message
        layout :sequence, :int
      end
      
      class GetConvolutionParameteriv < Xrb::Message
        layout :sequence, :int
      end
      
      class GetSeparableFilter < Xrb::Message
        layout :sequence, :int
      end
      
      class GetHistogram < Xrb::Message
        layout :sequence, :int
      end
      
      class GetHistogramParameterfv < Xrb::Message
        layout :sequence, :int
      end
      
      class GetHistogramParameteriv < Xrb::Message
        layout :sequence, :int
      end
      
      class GetMinmax < Xrb::Message
        layout :sequence, :int
      end
      
      class GetMinmaxParameterfv < Xrb::Message
        layout :sequence, :int
      end
      
      class GetMinmaxParameteriv < Xrb::Message
        layout :sequence, :int
      end
      
      class GetCompressedTexImageArb < Xrb::Message
        layout :sequence, :int
      end
      
      class DeleteQueriesArb < Xrb::Message
        layout :sequence, :int
      end
      
      class GenQueriesArb < Xrb::Message
        layout :sequence, :int
      end
      
      class IsQueryArb < Xrb::Message
        layout :sequence, :int
      end
      
      class GetQueryivArb < Xrb::Message
        layout :sequence, :int
      end
      
      class GetQueryObjectivArb < Xrb::Message
        layout :sequence, :int
      end
      
      class GetQueryObjectuivArb < Xrb::Message
        layout :sequence, :int
      end
      
    end
  end
end
