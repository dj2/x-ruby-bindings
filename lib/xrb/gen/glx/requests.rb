#
# This file was auto-generated. Do not edit.
#

module Xrb
  module Glx
    module Request
      class Render < Xrb::Message
        include Xrb::Request

        OPCODE = 1

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :context_tag, {type: :uint32},
            :data, {type: :uint8, kind: :list}
      end

      class RenderLarge < Xrb::Message
        include Xrb::Request

        OPCODE = 2

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :context_tag, {type: :uint32},
            :request_num, {type: :uint16},
            :request_total, {type: :uint16},
            :data_len, {type: :uint32},
            :data, {length_field: :data_len, type: :uint8, kind: :list}
      end

      class CreateContext < Xrb::Message
        include Xrb::Request

        OPCODE = 3

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :context, {type: :uint32},
            :visual, {type: :uint32},
            :screen, {type: :uint32},
            :share_list, {type: :uint32},
            :is_direct, {type: :bool},
            :pad1, {size: 3, type: :uint8}
      end

      class DestroyContext < Xrb::Message
        include Xrb::Request

        OPCODE = 4

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :context, {type: :uint32}
      end

      class MakeCurrent < Xrb::Message
        include Xrb::Request

        OPCODE = 5

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :context_tag, {type: :uint32},
            :pad2, {size: 20, type: :uint8}
      end

      class IsDirect < Xrb::Message
        include Xrb::Request

        OPCODE = 6

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :is_direct, {type: :bool},
            :pad2, {size: 23, type: :uint8}
      end

      class QueryVersion < Xrb::Message
        include Xrb::Request

        OPCODE = 7

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :major_version, {type: :uint32},
            :minor_version, {type: :uint32},
            :pad2, {size: 16, type: :uint8}
      end

      class WaitGl < Xrb::Message
        include Xrb::Request

        OPCODE = 8

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :context_tag, {type: :uint32}
      end

      class WaitX < Xrb::Message
        include Xrb::Request

        OPCODE = 9

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :context_tag, {type: :uint32}
      end

      class CopyContext < Xrb::Message
        include Xrb::Request

        OPCODE = 10

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :src, {type: :uint32},
            :dest, {type: :uint32},
            :mask, {type: :uint32},
            :src_context_tag, {type: :uint32}
      end

      class SwapBuffers < Xrb::Message
        include Xrb::Request

        OPCODE = 11

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :context_tag, {type: :uint32},
            :drawable, {type: :uint32}
      end

      class UseXFont < Xrb::Message
        include Xrb::Request

        OPCODE = 12

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :context_tag, {type: :uint32},
            :font, {type: :uint32},
            :first, {type: :uint32},
            :count, {type: :uint32},
            :list_base, {type: :uint32}
      end

      class CreateGlxPixmap < Xrb::Message
        include Xrb::Request

        OPCODE = 13

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :screen, {type: :uint32},
            :visual, {type: :uint32},
            :pixmap, {type: :uint32},
            :glx_pixmap, {type: :uint32}
      end

      class GetVisualConfigs < Xrb::Message
        include Xrb::Request

        OPCODE = 14

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :num_visuals, {type: :uint32},
            :num_properties, {type: :uint32},
            :pad2, {size: 16, type: :uint8},
            :property_list, {length_field: :length, type: :uint32, kind: :list}
      end

      class DestroyGlxPixmap < Xrb::Message
        include Xrb::Request

        OPCODE = 15

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :glx_pixmap, {type: :uint32}
      end

      class VendorPrivate < Xrb::Message
        include Xrb::Request

        OPCODE = 16

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :vendor_code, {type: :uint32},
            :context_tag, {type: :uint32},
            :data, {type: :uint8, kind: :list}
      end

      class VendorPrivateWithReply < Xrb::Message
        include Xrb::Request

        OPCODE = 17

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :retval, {type: :uint32},
            :data1, {type: :uint8, size: 24},
            :data2, {length_field: :length, type: :uint8, kind: :list}
      end

      class QueryExtensionsString < Xrb::Message
        include Xrb::Request

        OPCODE = 18

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :pad2, {size: 4, type: :uint8},
            :n, {type: :uint32},
            :pad3, {size: 16, type: :uint8}
      end

      class QueryServerString < Xrb::Message
        include Xrb::Request

        OPCODE = 19

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :pad2, {size: 4, type: :uint8},
            :str_len, {type: :uint32},
            :pad3, {size: 16, type: :uint8},
            :string, {length_field: :str_len, type: :char, kind: :string}
      end

      class ClientInfo < Xrb::Message
        include Xrb::Request

        OPCODE = 20

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :major_version, {type: :uint32},
            :minor_version, {type: :uint32},
            :str_len, {type: :uint32},
            :string, {length_field: :str_len, type: :char, kind: :string}
      end

      class GetFbConfigs < Xrb::Message
        include Xrb::Request

        OPCODE = 21

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :num_FB_configs, {type: :uint32},
            :num_properties, {type: :uint32},
            :pad2, {size: 16, type: :uint8},
            :property_list, {length_field: :length, type: :uint32, kind: :list}
      end

      class CreatePixmap < Xrb::Message
        include Xrb::Request

        OPCODE = 22

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :screen, {type: :uint32},
            :fbconfig, {type: :uint32},
            :pixmap, {type: :uint32},
            :glx_pixmap, {type: :uint32},
            :num_attribs, {type: :uint32},
            :attribs, {length_field: :num_attribs, type: :uint32, kind: :list}
      end

      class DestroyPixmap < Xrb::Message
        include Xrb::Request

        OPCODE = 23

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :glx_pixmap, {type: :uint32}
      end

      class CreateNewContext < Xrb::Message
        include Xrb::Request

        OPCODE = 24

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :context, {type: :uint32},
            :fbconfig, {type: :uint32},
            :screen, {type: :uint32},
            :render_type, {type: :uint32},
            :share_list, {type: :uint32},
            :is_direct, {type: :bool},
            :pad1, {size: 3, type: :uint8}
      end

      class QueryContext < Xrb::Message
        include Xrb::Request

        OPCODE = 25

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :num_attribs, {type: :uint32},
            :pad2, {size: 20, type: :uint8},
            :attribs, {length_field: :num_attribs, type: :uint32, kind: :list}
      end

      class MakeContextCurrent < Xrb::Message
        include Xrb::Request

        OPCODE = 26

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :context_tag, {type: :uint32},
            :pad2, {size: 20, type: :uint8}
      end

      class CreatePbuffer < Xrb::Message
        include Xrb::Request

        OPCODE = 27

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :screen, {type: :uint32},
            :fbconfig, {type: :uint32},
            :pbuffer, {type: :uint32},
            :num_attribs, {type: :uint32},
            :attribs, {length_field: :num_attribs, type: :uint32, kind: :list}
      end

      class DestroyPbuffer < Xrb::Message
        include Xrb::Request

        OPCODE = 28

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :pbuffer, {type: :uint32}
      end

      class GetDrawableAttributes < Xrb::Message
        include Xrb::Request

        OPCODE = 29

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :num_attribs, {type: :uint32},
            :pad2, {size: 20, type: :uint8},
            :attribs, {length_field: :num_attribs, type: :uint32, kind: :list}
      end

      class ChangeDrawableAttributes < Xrb::Message
        include Xrb::Request

        OPCODE = 30

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :drawable, {type: :uint32},
            :num_attribs, {type: :uint32},
            :attribs, {length_field: :num_attribs, type: :uint32, kind: :list}
      end

      class CreateWindow < Xrb::Message
        include Xrb::Request

        OPCODE = 31

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :screen, {type: :uint32},
            :fbconfig, {type: :uint32},
            :window, {type: :uint32},
            :glx_window, {type: :uint32},
            :num_attribs, {type: :uint32},
            :attribs, {length_field: :num_attribs, type: :uint32, kind: :list}
      end

      class DeleteWindow < Xrb::Message
        include Xrb::Request

        OPCODE = 32

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :glxwindow, {type: :uint32}
      end

      class SetClientInfoArb < Xrb::Message
        include Xrb::Request

        OPCODE = 33

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :major_version, {type: :uint32},
            :minor_version, {type: :uint32},
            :num_versions, {type: :uint32},
            :gl_str_len, {type: :uint32},
            :glx_str_len, {type: :uint32},
            :gl_versions, {length_field: :num_versions, type: :uint32, kind: :list},
            :gl_extension_string, {length_field: :gl_str_len, type: :char, kind: :string},
            :glx_extension_string, {length_field: :glx_str_len, type: :char, kind: :string}
      end

      class CreateContextAttribsArb < Xrb::Message
        include Xrb::Request

        OPCODE = 34

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :context, {type: :uint32},
            :fbconfig, {type: :uint32},
            :screen, {type: :uint32},
            :share_list, {type: :uint32},
            :is_direct, {type: :bool},
            :pad1, {size: 3, type: :uint8},
            :num_attribs, {type: :uint32},
            :attribs, {length_field: :num_attribs, type: :uint32, kind: :list}
      end

      class SetClientInfo_2arb < Xrb::Message
        include Xrb::Request

        OPCODE = 35

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :major_version, {type: :uint32},
            :minor_version, {type: :uint32},
            :num_versions, {type: :uint32},
            :gl_str_len, {type: :uint32},
            :glx_str_len, {type: :uint32},
            :gl_versions, {length_field: :num_versions, type: :uint32, kind: :list},
            :gl_extension_string, {length_field: :gl_str_len, type: :char, kind: :string},
            :glx_extension_string, {length_field: :glx_str_len, type: :char, kind: :string}
      end

      class NewList < Xrb::Message
        include Xrb::Request

        OPCODE = 101

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :context_tag, {type: :uint32},
            :list, {type: :uint32},
            :mode, {type: :uint32}
      end

      class EndList < Xrb::Message
        include Xrb::Request

        OPCODE = 102

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :context_tag, {type: :uint32}
      end

      class DeleteLists < Xrb::Message
        include Xrb::Request

        OPCODE = 103

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :context_tag, {type: :uint32},
            :list, {type: :uint32},
            :range, {type: :int32}
      end

      class GenLists < Xrb::Message
        include Xrb::Request

        OPCODE = 104

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :ret_val, {type: :uint32}
      end

      class FeedbackBuffer < Xrb::Message
        include Xrb::Request

        OPCODE = 105

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :context_tag, {type: :uint32},
            :size, {type: :int32},
            :type, {type: :int32}
      end

      class SelectBuffer < Xrb::Message
        include Xrb::Request

        OPCODE = 106

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :context_tag, {type: :uint32},
            :size, {type: :int32}
      end

      class RenderMode < Xrb::Message
        include Xrb::Request

        OPCODE = 107

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :ret_val, {type: :uint32},
            :n, {type: :uint32},
            :new_mode, {type: :uint32},
            :pad2, {size: 12, type: :uint8},
            :data, {length_field: :n, type: :uint32, kind: :list}
      end

      class Finish < Xrb::Message
        include Xrb::Request

        OPCODE = 108

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16}
      end

      class PixelStoref < Xrb::Message
        include Xrb::Request

        OPCODE = 109

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :context_tag, {type: :uint32},
            :pname, {type: :uint32},
            :datum, {type: :float}
      end

      class PixelStorei < Xrb::Message
        include Xrb::Request

        OPCODE = 110

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :context_tag, {type: :uint32},
            :pname, {type: :uint32},
            :datum, {type: :int32}
      end

      class ReadPixels < Xrb::Message
        include Xrb::Request

        OPCODE = 111

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :pad2, {size: 24, type: :uint8},
            :data, {length_field: :length, type: :uint8, kind: :list}
      end

      class GetBooleanv < Xrb::Message
        include Xrb::Request

        OPCODE = 112

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :pad2, {size: 4, type: :uint8},
            :n, {type: :uint32},
            :datum, {type: :bool},
            :pad3, {size: 15, type: :uint8},
            :data, {length_field: :n, type: :bool, kind: :list}
      end

      class GetClipPlane < Xrb::Message
        include Xrb::Request

        OPCODE = 113

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :pad2, {size: 24, type: :uint8},
            :data, {length_field: :length, type: :double, kind: :list}
      end

      class GetDoublev < Xrb::Message
        include Xrb::Request

        OPCODE = 114

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :pad2, {size: 4, type: :uint8},
            :n, {type: :uint32},
            :datum, {type: :double},
            :pad3, {size: 8, type: :uint8},
            :data, {length_field: :n, type: :double, kind: :list}
      end

      class GetError < Xrb::Message
        include Xrb::Request

        OPCODE = 115

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :error, {type: :int32}
      end

      class GetFloatv < Xrb::Message
        include Xrb::Request

        OPCODE = 116

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :pad2, {size: 4, type: :uint8},
            :n, {type: :uint32},
            :datum, {type: :float},
            :pad3, {size: 12, type: :uint8},
            :data, {length_field: :n, type: :float, kind: :list}
      end

      class GetIntegerv < Xrb::Message
        include Xrb::Request

        OPCODE = 117

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :pad2, {size: 4, type: :uint8},
            :n, {type: :uint32},
            :datum, {type: :int32},
            :pad3, {size: 12, type: :uint8},
            :data, {length_field: :n, type: :int32, kind: :list}
      end

      class GetLightfv < Xrb::Message
        include Xrb::Request

        OPCODE = 118

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :pad2, {size: 4, type: :uint8},
            :n, {type: :uint32},
            :datum, {type: :float},
            :pad3, {size: 12, type: :uint8},
            :data, {length_field: :n, type: :float, kind: :list}
      end

      class GetLightiv < Xrb::Message
        include Xrb::Request

        OPCODE = 119

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :pad2, {size: 4, type: :uint8},
            :n, {type: :uint32},
            :datum, {type: :int32},
            :pad3, {size: 12, type: :uint8},
            :data, {length_field: :n, type: :int32, kind: :list}
      end

      class GetMapdv < Xrb::Message
        include Xrb::Request

        OPCODE = 120

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :pad2, {size: 4, type: :uint8},
            :n, {type: :uint32},
            :datum, {type: :double},
            :pad3, {size: 8, type: :uint8},
            :data, {length_field: :n, type: :double, kind: :list}
      end

      class GetMapfv < Xrb::Message
        include Xrb::Request

        OPCODE = 121

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :pad2, {size: 4, type: :uint8},
            :n, {type: :uint32},
            :datum, {type: :float},
            :pad3, {size: 12, type: :uint8},
            :data, {length_field: :n, type: :float, kind: :list}
      end

      class GetMapiv < Xrb::Message
        include Xrb::Request

        OPCODE = 122

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :pad2, {size: 4, type: :uint8},
            :n, {type: :uint32},
            :datum, {type: :int32},
            :pad3, {size: 12, type: :uint8},
            :data, {length_field: :n, type: :int32, kind: :list}
      end

      class GetMaterialfv < Xrb::Message
        include Xrb::Request

        OPCODE = 123

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :pad2, {size: 4, type: :uint8},
            :n, {type: :uint32},
            :datum, {type: :float},
            :pad3, {size: 12, type: :uint8},
            :data, {length_field: :n, type: :float, kind: :list}
      end

      class GetMaterialiv < Xrb::Message
        include Xrb::Request

        OPCODE = 124

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :pad2, {size: 4, type: :uint8},
            :n, {type: :uint32},
            :datum, {type: :int32},
            :pad3, {size: 12, type: :uint8},
            :data, {length_field: :n, type: :int32, kind: :list}
      end

      class GetPixelMapfv < Xrb::Message
        include Xrb::Request

        OPCODE = 125

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :pad2, {size: 4, type: :uint8},
            :n, {type: :uint32},
            :datum, {type: :float},
            :pad3, {size: 12, type: :uint8},
            :data, {length_field: :n, type: :float, kind: :list}
      end

      class GetPixelMapuiv < Xrb::Message
        include Xrb::Request

        OPCODE = 126

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :pad2, {size: 4, type: :uint8},
            :n, {type: :uint32},
            :datum, {type: :uint32},
            :pad3, {size: 12, type: :uint8},
            :data, {length_field: :n, type: :uint32, kind: :list}
      end

      class GetPixelMapusv < Xrb::Message
        include Xrb::Request

        OPCODE = 127

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :pad2, {size: 4, type: :uint8},
            :n, {type: :uint32},
            :datum, {type: :uint16},
            :pad3, {size: 16, type: :uint8},
            :data, {length_field: :n, type: :uint16, kind: :list}
      end

      class GetPolygonStipple < Xrb::Message
        include Xrb::Request

        OPCODE = 128

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :pad2, {size: 24, type: :uint8},
            :data, {length_field: :length, type: :uint8, kind: :list}
      end

      class GetString < Xrb::Message
        include Xrb::Request

        OPCODE = 129

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :pad2, {size: 4, type: :uint8},
            :n, {type: :uint32},
            :pad3, {size: 16, type: :uint8},
            :string, {length_field: :n, type: :char, kind: :string}
      end

      class GetTexEnvfv < Xrb::Message
        include Xrb::Request

        OPCODE = 130

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :pad2, {size: 4, type: :uint8},
            :n, {type: :uint32},
            :datum, {type: :float},
            :pad3, {size: 12, type: :uint8},
            :data, {length_field: :n, type: :float, kind: :list}
      end

      class GetTexEnviv < Xrb::Message
        include Xrb::Request

        OPCODE = 131

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :pad2, {size: 4, type: :uint8},
            :n, {type: :uint32},
            :datum, {type: :int32},
            :pad3, {size: 12, type: :uint8},
            :data, {length_field: :n, type: :int32, kind: :list}
      end

      class GetTexGendv < Xrb::Message
        include Xrb::Request

        OPCODE = 132

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :pad2, {size: 4, type: :uint8},
            :n, {type: :uint32},
            :datum, {type: :double},
            :pad3, {size: 8, type: :uint8},
            :data, {length_field: :n, type: :double, kind: :list}
      end

      class GetTexGenfv < Xrb::Message
        include Xrb::Request

        OPCODE = 133

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :pad2, {size: 4, type: :uint8},
            :n, {type: :uint32},
            :datum, {type: :float},
            :pad3, {size: 12, type: :uint8},
            :data, {length_field: :n, type: :float, kind: :list}
      end

      class GetTexGeniv < Xrb::Message
        include Xrb::Request

        OPCODE = 134

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :pad2, {size: 4, type: :uint8},
            :n, {type: :uint32},
            :datum, {type: :int32},
            :pad3, {size: 12, type: :uint8},
            :data, {length_field: :n, type: :int32, kind: :list}
      end

      class GetTexImage < Xrb::Message
        include Xrb::Request

        OPCODE = 135

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :pad2, {size: 8, type: :uint8},
            :width, {type: :int32},
            :height, {type: :int32},
            :depth, {type: :int32},
            :pad3, {size: 4, type: :uint8},
            :data, {length_field: :length, type: :uint8, kind: :list}
      end

      class GetTexParameterfv < Xrb::Message
        include Xrb::Request

        OPCODE = 136

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :pad2, {size: 4, type: :uint8},
            :n, {type: :uint32},
            :datum, {type: :float},
            :pad3, {size: 12, type: :uint8},
            :data, {length_field: :n, type: :float, kind: :list}
      end

      class GetTexParameteriv < Xrb::Message
        include Xrb::Request

        OPCODE = 137

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :pad2, {size: 4, type: :uint8},
            :n, {type: :uint32},
            :datum, {type: :int32},
            :pad3, {size: 12, type: :uint8},
            :data, {length_field: :n, type: :int32, kind: :list}
      end

      class GetTexLevelParameterfv < Xrb::Message
        include Xrb::Request

        OPCODE = 138

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :pad2, {size: 4, type: :uint8},
            :n, {type: :uint32},
            :datum, {type: :float},
            :pad3, {size: 12, type: :uint8},
            :data, {length_field: :n, type: :float, kind: :list}
      end

      class GetTexLevelParameteriv < Xrb::Message
        include Xrb::Request

        OPCODE = 139

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :pad2, {size: 4, type: :uint8},
            :n, {type: :uint32},
            :datum, {type: :int32},
            :pad3, {size: 12, type: :uint8},
            :data, {length_field: :n, type: :int32, kind: :list}
      end

      class IsList < Xrb::Message
        include Xrb::Request

        OPCODE = 141

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :ret_val, {type: :uint32}
      end

      class Flush < Xrb::Message
        include Xrb::Request

        OPCODE = 142

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :context_tag, {type: :uint32}
      end

      class AreTexturesResident < Xrb::Message
        include Xrb::Request

        OPCODE = 143

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :ret_val, {type: :uint32},
            :pad2, {size: 20, type: :uint8},
            :data, {length_field: :length, type: :bool, kind: :list}
      end

      class DeleteTextures < Xrb::Message
        include Xrb::Request

        OPCODE = 144

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :context_tag, {type: :uint32},
            :n, {type: :int32},
            :textures, {length_field: :n, type: :uint32, kind: :list}
      end

      class GenTextures < Xrb::Message
        include Xrb::Request

        OPCODE = 145

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :pad2, {size: 24, type: :uint8},
            :data, {length_field: :length, type: :uint32, kind: :list}
      end

      class IsTexture < Xrb::Message
        include Xrb::Request

        OPCODE = 146

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :ret_val, {type: :uint32}
      end

      class GetColorTable < Xrb::Message
        include Xrb::Request

        OPCODE = 147

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :pad2, {size: 8, type: :uint8},
            :width, {type: :int32},
            :pad3, {size: 12, type: :uint8},
            :data, {length_field: :length, type: :uint8, kind: :list}
      end

      class GetColorTableParameterfv < Xrb::Message
        include Xrb::Request

        OPCODE = 148

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :pad2, {size: 4, type: :uint8},
            :n, {type: :uint32},
            :datum, {type: :float},
            :pad3, {size: 12, type: :uint8},
            :data, {length_field: :n, type: :float, kind: :list}
      end

      class GetColorTableParameteriv < Xrb::Message
        include Xrb::Request

        OPCODE = 149

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :pad2, {size: 4, type: :uint8},
            :n, {type: :uint32},
            :datum, {type: :int32},
            :pad3, {size: 12, type: :uint8},
            :data, {length_field: :n, type: :int32, kind: :list}
      end

      class GetConvolutionFilter < Xrb::Message
        include Xrb::Request

        OPCODE = 150

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :pad2, {size: 8, type: :uint8},
            :width, {type: :int32},
            :height, {type: :int32},
            :pad3, {size: 8, type: :uint8},
            :data, {length_field: :length, type: :uint8, kind: :list}
      end

      class GetConvolutionParameterfv < Xrb::Message
        include Xrb::Request

        OPCODE = 151

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :pad2, {size: 4, type: :uint8},
            :n, {type: :uint32},
            :datum, {type: :float},
            :pad3, {size: 12, type: :uint8},
            :data, {length_field: :n, type: :float, kind: :list}
      end

      class GetConvolutionParameteriv < Xrb::Message
        include Xrb::Request

        OPCODE = 152

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :pad2, {size: 4, type: :uint8},
            :n, {type: :uint32},
            :datum, {type: :int32},
            :pad3, {size: 12, type: :uint8},
            :data, {length_field: :n, type: :int32, kind: :list}
      end

      class GetSeparableFilter < Xrb::Message
        include Xrb::Request

        OPCODE = 153

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :pad2, {size: 8, type: :uint8},
            :row_w, {type: :int32},
            :col_h, {type: :int32},
            :pad3, {size: 8, type: :uint8},
            :rows_and_cols, {length_field: :length, type: :uint8, kind: :list}
      end

      class GetHistogram < Xrb::Message
        include Xrb::Request

        OPCODE = 154

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :pad2, {size: 8, type: :uint8},
            :width, {type: :int32},
            :pad3, {size: 12, type: :uint8},
            :data, {length_field: :length, type: :uint8, kind: :list}
      end

      class GetHistogramParameterfv < Xrb::Message
        include Xrb::Request

        OPCODE = 155

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :pad2, {size: 4, type: :uint8},
            :n, {type: :uint32},
            :datum, {type: :float},
            :pad3, {size: 12, type: :uint8},
            :data, {length_field: :n, type: :float, kind: :list}
      end

      class GetHistogramParameteriv < Xrb::Message
        include Xrb::Request

        OPCODE = 156

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :pad2, {size: 4, type: :uint8},
            :n, {type: :uint32},
            :datum, {type: :int32},
            :pad3, {size: 12, type: :uint8},
            :data, {length_field: :n, type: :int32, kind: :list}
      end

      class GetMinmax < Xrb::Message
        include Xrb::Request

        OPCODE = 157

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :pad2, {size: 24, type: :uint8},
            :data, {length_field: :length, type: :uint8, kind: :list}
      end

      class GetMinmaxParameterfv < Xrb::Message
        include Xrb::Request

        OPCODE = 158

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :pad2, {size: 4, type: :uint8},
            :n, {type: :uint32},
            :datum, {type: :float},
            :pad3, {size: 12, type: :uint8},
            :data, {length_field: :n, type: :float, kind: :list}
      end

      class GetMinmaxParameteriv < Xrb::Message
        include Xrb::Request

        OPCODE = 159

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :pad2, {size: 4, type: :uint8},
            :n, {type: :uint32},
            :datum, {type: :int32},
            :pad3, {size: 12, type: :uint8},
            :data, {length_field: :n, type: :int32, kind: :list}
      end

      class GetCompressedTexImageArb < Xrb::Message
        include Xrb::Request

        OPCODE = 160

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :pad2, {size: 8, type: :uint8},
            :size, {type: :int32},
            :pad3, {size: 12, type: :uint8},
            :data, {length_field: :length, type: :uint8, kind: :list}
      end

      class DeleteQueriesArb < Xrb::Message
        include Xrb::Request

        OPCODE = 161

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :context_tag, {type: :uint32},
            :n, {type: :int32},
            :ids, {length_field: :n, type: :uint32, kind: :list}
      end

      class GenQueriesArb < Xrb::Message
        include Xrb::Request

        OPCODE = 162

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :pad2, {size: 24, type: :uint8},
            :data, {length_field: :length, type: :uint32, kind: :list}
      end

      class IsQueryArb < Xrb::Message
        include Xrb::Request

        OPCODE = 163

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :ret_val, {type: :uint32}
      end

      class GetQueryivArb < Xrb::Message
        include Xrb::Request

        OPCODE = 164

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :pad2, {size: 4, type: :uint8},
            :n, {type: :uint32},
            :datum, {type: :int32},
            :pad3, {size: 12, type: :uint8},
            :data, {length_field: :n, type: :int32, kind: :list}
      end

      class GetQueryObjectivArb < Xrb::Message
        include Xrb::Request

        OPCODE = 165

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :pad2, {size: 4, type: :uint8},
            :n, {type: :uint32},
            :datum, {type: :int32},
            :pad3, {size: 12, type: :uint8},
            :data, {length_field: :n, type: :int32, kind: :list}
      end

      class GetQueryObjectuivArb < Xrb::Message
        include Xrb::Request

        OPCODE = 166

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :pad2, {size: 4, type: :uint8},
            :n, {type: :uint32},
            :datum, {type: :uint32},
            :pad3, {size: 12, type: :uint8},
            :data, {length_field: :n, type: :uint32, kind: :list}
      end

    end
  end
end
