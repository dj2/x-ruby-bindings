#
# This file was auto-generated. Do not edit.
#

module Xrb
  module Glx
    module Request
      class Render < Xrb::Message
        OPCODE = 1
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :context_tag, :uint32
      end
      
      class RenderLarge < Xrb::Message
        OPCODE = 2
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :context_tag, :uint32,
            :request_num, :uint16,
            :request_total, :uint16,
            :data_len, :uint32,
            :data, [:data_len, :uint8, :list]
      end
      
      class CreateContext < Xrb::Message
        OPCODE = 3
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :context, :uint32,
            :visual, :uint32,
            :screen, :uint32,
            :share_list, :uint32,
            :is_direct, :bool,
            :pad1, [3, :uint8]
      end
      
      class DestroyContext < Xrb::Message
        OPCODE = 4
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :context, :uint32
      end
      
      class MakeCurrent < Xrb::Message
        OPCODE = 5
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :context_tag, :uint32,
            :pad2, [20, :uint8]
      end
      
      class IsDirect < Xrb::Message
        OPCODE = 6
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :is_direct, :bool,
            :pad2, [23, :uint8]
      end
      
      class QueryVersion < Xrb::Message
        OPCODE = 7
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :major_version, :uint32,
            :minor_version, :uint32,
            :pad2, [16, :uint8]
      end
      
      class WaitGl < Xrb::Message
        OPCODE = 8
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :context_tag, :uint32
      end
      
      class WaitX < Xrb::Message
        OPCODE = 9
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :context_tag, :uint32
      end
      
      class CopyContext < Xrb::Message
        OPCODE = 10
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :src, :uint32,
            :dest, :uint32,
            :mask, :uint32,
            :src_context_tag, :uint32
      end
      
      class SwapBuffers < Xrb::Message
        OPCODE = 11
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :context_tag, :uint32,
            :drawable, :uint32
      end
      
      class UseXFont < Xrb::Message
        OPCODE = 12
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :context_tag, :uint32,
            :font, :uint32,
            :first, :uint32,
            :count, :uint32,
            :list_base, :uint32
      end
      
      class CreateGlxPixmap < Xrb::Message
        OPCODE = 13
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :screen, :uint32,
            :visual, :uint32,
            :pixmap, :uint32,
            :glx_pixmap, :uint32
      end
      
      class GetVisualConfigs < Xrb::Message
        OPCODE = 14
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :num_visuals, :uint32,
            :num_properties, :uint32,
            :pad2, [16, :uint8],
            :property_list, [:length, :uint32, :list]
      end
      
      class DestroyGlxPixmap < Xrb::Message
        OPCODE = 15
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :glx_pixmap, :uint32
      end
      
      class VendorPrivate < Xrb::Message
        OPCODE = 16
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :vendor_code, :uint32,
            :context_tag, :uint32
      end
      
      class VendorPrivateWithReply < Xrb::Message
        OPCODE = 17
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :retval, :uint32,
            :data1, [:uint8, 24],
            :data2, [:length, :uint8, :list]
      end
      
      class QueryExtensionsString < Xrb::Message
        OPCODE = 18
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :pad2, [4, :uint8],
            :n, :uint32,
            :pad3, [16, :uint8]
      end
      
      class QueryServerString < Xrb::Message
        OPCODE = 19
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :pad2, [4, :uint8],
            :str_len, :uint32,
            :pad3, [16, :uint8],
            :string, [:str_len, :char, :string]
      end
      
      class ClientInfo < Xrb::Message
        OPCODE = 20
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :major_version, :uint32,
            :minor_version, :uint32,
            :str_len, :uint32,
            :string, [:str_len, :char, :string]
      end
      
      class GetFbConfigs < Xrb::Message
        OPCODE = 21
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :num_FB_configs, :uint32,
            :num_properties, :uint32,
            :pad2, [16, :uint8],
            :property_list, [:length, :uint32, :list]
      end
      
      class CreatePixmap < Xrb::Message
        OPCODE = 22
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :screen, :uint32,
            :fbconfig, :uint32,
            :pixmap, :uint32,
            :glx_pixmap, :uint32,
            :num_attribs, :uint32,
            :attribs, [:num_attribs, :uint32, :list]
      end
      
      class DestroyPixmap < Xrb::Message
        OPCODE = 23
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :glx_pixmap, :uint32
      end
      
      class CreateNewContext < Xrb::Message
        OPCODE = 24
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :context, :uint32,
            :fbconfig, :uint32,
            :screen, :uint32,
            :render_type, :uint32,
            :share_list, :uint32,
            :is_direct, :bool,
            :pad1, [3, :uint8]
      end
      
      class QueryContext < Xrb::Message
        OPCODE = 25
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :num_attribs, :uint32,
            :pad2, [20, :uint8],
            :attribs, [:num_attribs, :uint32, :list]
      end
      
      class MakeContextCurrent < Xrb::Message
        OPCODE = 26
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :context_tag, :uint32,
            :pad2, [20, :uint8]
      end
      
      class CreatePbuffer < Xrb::Message
        OPCODE = 27
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :screen, :uint32,
            :fbconfig, :uint32,
            :pbuffer, :uint32,
            :num_attribs, :uint32,
            :attribs, [:num_attribs, :uint32, :list]
      end
      
      class DestroyPbuffer < Xrb::Message
        OPCODE = 28
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :pbuffer, :uint32
      end
      
      class GetDrawableAttributes < Xrb::Message
        OPCODE = 29
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :num_attribs, :uint32,
            :pad2, [20, :uint8],
            :attribs, [:num_attribs, :uint32, :list]
      end
      
      class ChangeDrawableAttributes < Xrb::Message
        OPCODE = 30
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :drawable, :uint32,
            :num_attribs, :uint32,
            :attribs, [:num_attribs, :uint32, :list]
      end
      
      class CreateWindow < Xrb::Message
        OPCODE = 31
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :screen, :uint32,
            :fbconfig, :uint32,
            :window, :uint32,
            :glx_window, :uint32,
            :num_attribs, :uint32,
            :attribs, [:num_attribs, :uint32, :list]
      end
      
      class DeleteWindow < Xrb::Message
        OPCODE = 32
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :glxwindow, :uint32
      end
      
      class SetClientInfoArb < Xrb::Message
        OPCODE = 33
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :major_version, :uint32,
            :minor_version, :uint32,
            :num_versions, :uint32,
            :gl_str_len, :uint32,
            :glx_str_len, :uint32,
            :gl_versions, [:num_versions, :uint32, :list],
            :gl_extension_string, [:gl_str_len, :char, :string],
            :glx_extension_string, [:glx_str_len, :char, :string]
      end
      
      class CreateContextAttribsArb < Xrb::Message
        OPCODE = 34
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :context, :uint32,
            :fbconfig, :uint32,
            :screen, :uint32,
            :share_list, :uint32,
            :is_direct, :bool,
            :pad1, [3, :uint8],
            :num_attribs, :uint32,
            :attribs, [:num_attribs, :uint32, :list]
      end
      
      class SetClientInfo_2arb < Xrb::Message
        OPCODE = 35
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :major_version, :uint32,
            :minor_version, :uint32,
            :num_versions, :uint32,
            :gl_str_len, :uint32,
            :glx_str_len, :uint32,
            :gl_versions, [:num_versions, :uint32, :list],
            :gl_extension_string, [:gl_str_len, :char, :string],
            :glx_extension_string, [:glx_str_len, :char, :string]
      end
      
      class NewList < Xrb::Message
        OPCODE = 101
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :context_tag, :uint32,
            :list, :uint32,
            :mode, :uint32
      end
      
      class EndList < Xrb::Message
        OPCODE = 102
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :context_tag, :uint32
      end
      
      class DeleteLists < Xrb::Message
        OPCODE = 103
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :context_tag, :uint32,
            :list, :uint32,
            :range, :int32
      end
      
      class GenLists < Xrb::Message
        OPCODE = 104
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :ret_val, :uint32
      end
      
      class FeedbackBuffer < Xrb::Message
        OPCODE = 105
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :context_tag, :uint32,
            :size, :int32,
            :type, :int32
      end
      
      class SelectBuffer < Xrb::Message
        OPCODE = 106
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :context_tag, :uint32,
            :size, :int32
      end
      
      class RenderMode < Xrb::Message
        OPCODE = 107
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :ret_val, :uint32,
            :n, :uint32,
            :new_mode, :uint32,
            :pad2, [12, :uint8],
            :data, [:n, :uint32, :list]
      end
      
      class Finish < Xrb::Message
        OPCODE = 108
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16
      end
      
      class PixelStoref < Xrb::Message
        OPCODE = 109
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :context_tag, :uint32,
            :pname, :uint32,
            :datum, :float
      end
      
      class PixelStorei < Xrb::Message
        OPCODE = 110
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :context_tag, :uint32,
            :pname, :uint32,
            :datum, :int32
      end
      
      class ReadPixels < Xrb::Message
        OPCODE = 111
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :pad2, [24, :uint8],
            :data, [:length, :uint8, :list]
      end
      
      class GetBooleanv < Xrb::Message
        OPCODE = 112
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :pad2, [4, :uint8],
            :n, :uint32,
            :datum, :bool,
            :pad3, [15, :uint8],
            :data, [:n, :bool, :list]
      end
      
      class GetClipPlane < Xrb::Message
        OPCODE = 113
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :pad2, [24, :uint8],
            :data, [:length, :double, :list]
      end
      
      class GetDoublev < Xrb::Message
        OPCODE = 114
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :pad2, [4, :uint8],
            :n, :uint32,
            :datum, :double,
            :pad3, [8, :uint8],
            :data, [:n, :double, :list]
      end
      
      class GetError < Xrb::Message
        OPCODE = 115
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :error, :int32
      end
      
      class GetFloatv < Xrb::Message
        OPCODE = 116
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :pad2, [4, :uint8],
            :n, :uint32,
            :datum, :float,
            :pad3, [12, :uint8],
            :data, [:n, :float, :list]
      end
      
      class GetIntegerv < Xrb::Message
        OPCODE = 117
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :pad2, [4, :uint8],
            :n, :uint32,
            :datum, :int32,
            :pad3, [12, :uint8],
            :data, [:n, :int32, :list]
      end
      
      class GetLightfv < Xrb::Message
        OPCODE = 118
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :pad2, [4, :uint8],
            :n, :uint32,
            :datum, :float,
            :pad3, [12, :uint8],
            :data, [:n, :float, :list]
      end
      
      class GetLightiv < Xrb::Message
        OPCODE = 119
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :pad2, [4, :uint8],
            :n, :uint32,
            :datum, :int32,
            :pad3, [12, :uint8],
            :data, [:n, :int32, :list]
      end
      
      class GetMapdv < Xrb::Message
        OPCODE = 120
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :pad2, [4, :uint8],
            :n, :uint32,
            :datum, :double,
            :pad3, [8, :uint8],
            :data, [:n, :double, :list]
      end
      
      class GetMapfv < Xrb::Message
        OPCODE = 121
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :pad2, [4, :uint8],
            :n, :uint32,
            :datum, :float,
            :pad3, [12, :uint8],
            :data, [:n, :float, :list]
      end
      
      class GetMapiv < Xrb::Message
        OPCODE = 122
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :pad2, [4, :uint8],
            :n, :uint32,
            :datum, :int32,
            :pad3, [12, :uint8],
            :data, [:n, :int32, :list]
      end
      
      class GetMaterialfv < Xrb::Message
        OPCODE = 123
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :pad2, [4, :uint8],
            :n, :uint32,
            :datum, :float,
            :pad3, [12, :uint8],
            :data, [:n, :float, :list]
      end
      
      class GetMaterialiv < Xrb::Message
        OPCODE = 124
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :pad2, [4, :uint8],
            :n, :uint32,
            :datum, :int32,
            :pad3, [12, :uint8],
            :data, [:n, :int32, :list]
      end
      
      class GetPixelMapfv < Xrb::Message
        OPCODE = 125
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :pad2, [4, :uint8],
            :n, :uint32,
            :datum, :float,
            :pad3, [12, :uint8],
            :data, [:n, :float, :list]
      end
      
      class GetPixelMapuiv < Xrb::Message
        OPCODE = 126
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :pad2, [4, :uint8],
            :n, :uint32,
            :datum, :uint32,
            :pad3, [12, :uint8],
            :data, [:n, :uint32, :list]
      end
      
      class GetPixelMapusv < Xrb::Message
        OPCODE = 127
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :pad2, [4, :uint8],
            :n, :uint32,
            :datum, :uint16,
            :pad3, [16, :uint8],
            :data, [:n, :uint16, :list]
      end
      
      class GetPolygonStipple < Xrb::Message
        OPCODE = 128
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :pad2, [24, :uint8],
            :data, [:length, :uint8, :list]
      end
      
      class GetString < Xrb::Message
        OPCODE = 129
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :pad2, [4, :uint8],
            :n, :uint32,
            :pad3, [16, :uint8],
            :string, [:n, :char, :string]
      end
      
      class GetTexEnvfv < Xrb::Message
        OPCODE = 130
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :pad2, [4, :uint8],
            :n, :uint32,
            :datum, :float,
            :pad3, [12, :uint8],
            :data, [:n, :float, :list]
      end
      
      class GetTexEnviv < Xrb::Message
        OPCODE = 131
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :pad2, [4, :uint8],
            :n, :uint32,
            :datum, :int32,
            :pad3, [12, :uint8],
            :data, [:n, :int32, :list]
      end
      
      class GetTexGendv < Xrb::Message
        OPCODE = 132
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :pad2, [4, :uint8],
            :n, :uint32,
            :datum, :double,
            :pad3, [8, :uint8],
            :data, [:n, :double, :list]
      end
      
      class GetTexGenfv < Xrb::Message
        OPCODE = 133
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :pad2, [4, :uint8],
            :n, :uint32,
            :datum, :float,
            :pad3, [12, :uint8],
            :data, [:n, :float, :list]
      end
      
      class GetTexGeniv < Xrb::Message
        OPCODE = 134
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :pad2, [4, :uint8],
            :n, :uint32,
            :datum, :int32,
            :pad3, [12, :uint8],
            :data, [:n, :int32, :list]
      end
      
      class GetTexImage < Xrb::Message
        OPCODE = 135
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :pad2, [8, :uint8],
            :width, :int32,
            :height, :int32,
            :depth, :int32,
            :pad3, [4, :uint8],
            :data, [:length, :uint8, :list]
      end
      
      class GetTexParameterfv < Xrb::Message
        OPCODE = 136
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :pad2, [4, :uint8],
            :n, :uint32,
            :datum, :float,
            :pad3, [12, :uint8],
            :data, [:n, :float, :list]
      end
      
      class GetTexParameteriv < Xrb::Message
        OPCODE = 137
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :pad2, [4, :uint8],
            :n, :uint32,
            :datum, :int32,
            :pad3, [12, :uint8],
            :data, [:n, :int32, :list]
      end
      
      class GetTexLevelParameterfv < Xrb::Message
        OPCODE = 138
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :pad2, [4, :uint8],
            :n, :uint32,
            :datum, :float,
            :pad3, [12, :uint8],
            :data, [:n, :float, :list]
      end
      
      class GetTexLevelParameteriv < Xrb::Message
        OPCODE = 139
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :pad2, [4, :uint8],
            :n, :uint32,
            :datum, :int32,
            :pad3, [12, :uint8],
            :data, [:n, :int32, :list]
      end
      
      class IsList < Xrb::Message
        OPCODE = 141
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :ret_val, :uint32
      end
      
      class Flush < Xrb::Message
        OPCODE = 142
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :context_tag, :uint32
      end
      
      class AreTexturesResident < Xrb::Message
        OPCODE = 143
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :ret_val, :uint32,
            :pad2, [20, :uint8],
            :data, [:length, :bool, :list]
      end
      
      class DeleteTextures < Xrb::Message
        OPCODE = 144
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :context_tag, :uint32,
            :n, :int32,
            :textures, [:n, :uint32, :list]
      end
      
      class GenTextures < Xrb::Message
        OPCODE = 145
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :pad2, [24, :uint8],
            :data, [:length, :uint32, :list]
      end
      
      class IsTexture < Xrb::Message
        OPCODE = 146
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :ret_val, :uint32
      end
      
      class GetColorTable < Xrb::Message
        OPCODE = 147
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :pad2, [8, :uint8],
            :width, :int32,
            :pad3, [12, :uint8],
            :data, [:length, :uint8, :list]
      end
      
      class GetColorTableParameterfv < Xrb::Message
        OPCODE = 148
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :pad2, [4, :uint8],
            :n, :uint32,
            :datum, :float,
            :pad3, [12, :uint8],
            :data, [:n, :float, :list]
      end
      
      class GetColorTableParameteriv < Xrb::Message
        OPCODE = 149
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :pad2, [4, :uint8],
            :n, :uint32,
            :datum, :int32,
            :pad3, [12, :uint8],
            :data, [:n, :int32, :list]
      end
      
      class GetConvolutionFilter < Xrb::Message
        OPCODE = 150
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :pad2, [8, :uint8],
            :width, :int32,
            :height, :int32,
            :pad3, [8, :uint8],
            :data, [:length, :uint8, :list]
      end
      
      class GetConvolutionParameterfv < Xrb::Message
        OPCODE = 151
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :pad2, [4, :uint8],
            :n, :uint32,
            :datum, :float,
            :pad3, [12, :uint8],
            :data, [:n, :float, :list]
      end
      
      class GetConvolutionParameteriv < Xrb::Message
        OPCODE = 152
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :pad2, [4, :uint8],
            :n, :uint32,
            :datum, :int32,
            :pad3, [12, :uint8],
            :data, [:n, :int32, :list]
      end
      
      class GetSeparableFilter < Xrb::Message
        OPCODE = 153
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :pad2, [8, :uint8],
            :row_w, :int32,
            :col_h, :int32,
            :pad3, [8, :uint8],
            :rows_and_cols, [:length, :uint8, :list]
      end
      
      class GetHistogram < Xrb::Message
        OPCODE = 154
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :pad2, [8, :uint8],
            :width, :int32,
            :pad3, [12, :uint8],
            :data, [:length, :uint8, :list]
      end
      
      class GetHistogramParameterfv < Xrb::Message
        OPCODE = 155
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :pad2, [4, :uint8],
            :n, :uint32,
            :datum, :float,
            :pad3, [12, :uint8],
            :data, [:n, :float, :list]
      end
      
      class GetHistogramParameteriv < Xrb::Message
        OPCODE = 156
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :pad2, [4, :uint8],
            :n, :uint32,
            :datum, :int32,
            :pad3, [12, :uint8],
            :data, [:n, :int32, :list]
      end
      
      class GetMinmax < Xrb::Message
        OPCODE = 157
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :pad2, [24, :uint8],
            :data, [:length, :uint8, :list]
      end
      
      class GetMinmaxParameterfv < Xrb::Message
        OPCODE = 158
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :pad2, [4, :uint8],
            :n, :uint32,
            :datum, :float,
            :pad3, [12, :uint8],
            :data, [:n, :float, :list]
      end
      
      class GetMinmaxParameteriv < Xrb::Message
        OPCODE = 159
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :pad2, [4, :uint8],
            :n, :uint32,
            :datum, :int32,
            :pad3, [12, :uint8],
            :data, [:n, :int32, :list]
      end
      
      class GetCompressedTexImageArb < Xrb::Message
        OPCODE = 160
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :pad2, [8, :uint8],
            :size, :int32,
            :pad3, [12, :uint8],
            :data, [:length, :uint8, :list]
      end
      
      class DeleteQueriesArb < Xrb::Message
        OPCODE = 161
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :context_tag, :uint32,
            :n, :int32,
            :ids, [:n, :uint32, :list]
      end
      
      class GenQueriesArb < Xrb::Message
        OPCODE = 162
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :pad2, [24, :uint8],
            :data, [:length, :uint32, :list]
      end
      
      class IsQueryArb < Xrb::Message
        OPCODE = 163
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :ret_val, :uint32
      end
      
      class GetQueryivArb < Xrb::Message
        OPCODE = 164
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :pad2, [4, :uint8],
            :n, :uint32,
            :datum, :int32,
            :pad3, [12, :uint8],
            :data, [:n, :int32, :list]
      end
      
      class GetQueryObjectivArb < Xrb::Message
        OPCODE = 165
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :pad2, [4, :uint8],
            :n, :uint32,
            :datum, :int32,
            :pad3, [12, :uint8],
            :data, [:n, :int32, :list]
      end
      
      class GetQueryObjectuivArb < Xrb::Message
        OPCODE = 166
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :pad2, [4, :uint8],
            :n, :uint32,
            :datum, :uint32,
            :pad3, [12, :uint8],
            :data, [:n, :uint32, :list]
      end
      
    end
  end
end
