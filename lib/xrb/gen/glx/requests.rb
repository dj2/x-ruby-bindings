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
        def has_reply?
          false
        end
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
        def has_reply?
          false
        end
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
        def has_reply?
          false
        end
      end

      class DestroyContext < Xrb::Message
        include Xrb::Request

        OPCODE = 4

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :context, {type: :uint32}
        def has_reply?
          false
        end
      end

      class MakeCurrent < Xrb::Message
        include Xrb::Request

        OPCODE = 5

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :drawable, {type: :uint32},
            :context, {type: :uint32},
            :old_context_tag, {type: :uint32}
        def has_reply?
          true
        end
      end

      class IsDirect < Xrb::Message
        include Xrb::Request

        OPCODE = 6

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :context, {type: :uint32}
        def has_reply?
          true
        end
      end

      class QueryVersion < Xrb::Message
        include Xrb::Request

        OPCODE = 7

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :major_version, {type: :uint32},
            :minor_version, {type: :uint32}
        def has_reply?
          true
        end
      end

      class WaitGl < Xrb::Message
        include Xrb::Request

        OPCODE = 8

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :context_tag, {type: :uint32}
        def has_reply?
          false
        end
      end

      class WaitX < Xrb::Message
        include Xrb::Request

        OPCODE = 9

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :context_tag, {type: :uint32}
        def has_reply?
          false
        end
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
        def has_reply?
          false
        end
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
        def has_reply?
          false
        end
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
        def has_reply?
          false
        end
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
        def has_reply?
          false
        end
      end

      class GetVisualConfigs < Xrb::Message
        include Xrb::Request

        OPCODE = 14

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :screen, {type: :uint32}
        def has_reply?
          true
        end
      end

      class DestroyGlxPixmap < Xrb::Message
        include Xrb::Request

        OPCODE = 15

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :glx_pixmap, {type: :uint32}
        def has_reply?
          false
        end
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
        def has_reply?
          false
        end
      end

      class VendorPrivateWithReply < Xrb::Message
        include Xrb::Request

        OPCODE = 17

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :vendor_code, {type: :uint32},
            :context_tag, {type: :uint32},
            :data, {type: :uint8, kind: :list}
        def has_reply?
          true
        end
      end

      class QueryExtensionsString < Xrb::Message
        include Xrb::Request

        OPCODE = 18

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :screen, {type: :uint32}
        def has_reply?
          true
        end
      end

      class QueryServerString < Xrb::Message
        include Xrb::Request

        OPCODE = 19

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :screen, {type: :uint32},
            :name, {type: :uint32}
        def has_reply?
          true
        end
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
        def has_reply?
          false
        end
      end

      class GetFbConfigs < Xrb::Message
        include Xrb::Request

        OPCODE = 21

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :screen, {type: :uint32}
        def has_reply?
          true
        end
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
            :num_attribs, {type: :uint32}
        def has_reply?
          false
        end
      end

      class DestroyPixmap < Xrb::Message
        include Xrb::Request

        OPCODE = 23

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :glx_pixmap, {type: :uint32}
        def has_reply?
          false
        end
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
        def has_reply?
          false
        end
      end

      class QueryContext < Xrb::Message
        include Xrb::Request

        OPCODE = 25

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :context, {type: :uint32}
        def has_reply?
          true
        end
      end

      class MakeContextCurrent < Xrb::Message
        include Xrb::Request

        OPCODE = 26

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :old_context_tag, {type: :uint32},
            :drawable, {type: :uint32},
            :read_drawable, {type: :uint32},
            :context, {type: :uint32}
        def has_reply?
          true
        end
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
            :num_attribs, {type: :uint32}
        def has_reply?
          false
        end
      end

      class DestroyPbuffer < Xrb::Message
        include Xrb::Request

        OPCODE = 28

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :pbuffer, {type: :uint32}
        def has_reply?
          false
        end
      end

      class GetDrawableAttributes < Xrb::Message
        include Xrb::Request

        OPCODE = 29

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :drawable, {type: :uint32}
        def has_reply?
          true
        end
      end

      class ChangeDrawableAttributes < Xrb::Message
        include Xrb::Request

        OPCODE = 30

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :drawable, {type: :uint32},
            :num_attribs, {type: :uint32}
        def has_reply?
          false
        end
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
            :num_attribs, {type: :uint32}
        def has_reply?
          false
        end
      end

      class DeleteWindow < Xrb::Message
        include Xrb::Request

        OPCODE = 32

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :glxwindow, {type: :uint32}
        def has_reply?
          false
        end
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
            :gl_extension_string, {length_field: :gl_str_len, type: :char, kind: :string},
            :glx_extension_string, {length_field: :glx_str_len, type: :char, kind: :string}
        def has_reply?
          false
        end
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
            :num_attribs, {type: :uint32}
        def has_reply?
          false
        end
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
            :gl_extension_string, {length_field: :gl_str_len, type: :char, kind: :string},
            :glx_extension_string, {length_field: :glx_str_len, type: :char, kind: :string}
        def has_reply?
          false
        end
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
        def has_reply?
          false
        end
      end

      class EndList < Xrb::Message
        include Xrb::Request

        OPCODE = 102

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :context_tag, {type: :uint32}
        def has_reply?
          false
        end
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
        def has_reply?
          false
        end
      end

      class GenLists < Xrb::Message
        include Xrb::Request

        OPCODE = 104

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :context_tag, {type: :uint32},
            :range, {type: :int32}
        def has_reply?
          true
        end
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
        def has_reply?
          false
        end
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
        def has_reply?
          false
        end
      end

      class RenderMode < Xrb::Message
        include Xrb::Request

        OPCODE = 107

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :context_tag, {type: :uint32},
            :mode, {type: :uint32}
        def has_reply?
          true
        end
      end

      class Finish < Xrb::Message
        include Xrb::Request

        OPCODE = 108

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :context_tag, {type: :uint32}
        def has_reply?
          true
        end
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
        def has_reply?
          false
        end
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
        def has_reply?
          false
        end
      end

      class ReadPixels < Xrb::Message
        include Xrb::Request

        OPCODE = 111

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :context_tag, {type: :uint32},
            :x, {type: :int32},
            :y, {type: :int32},
            :width, {type: :int32},
            :height, {type: :int32},
            :format, {type: :uint32},
            :type, {type: :uint32},
            :swap_bytes, {type: :bool},
            :lsb_first, {type: :bool}
        def has_reply?
          true
        end
      end

      class GetBooleanv < Xrb::Message
        include Xrb::Request

        OPCODE = 112

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :context_tag, {type: :uint32},
            :pname, {type: :int32}
        def has_reply?
          true
        end
      end

      class GetClipPlane < Xrb::Message
        include Xrb::Request

        OPCODE = 113

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :context_tag, {type: :uint32},
            :plane, {type: :int32}
        def has_reply?
          true
        end
      end

      class GetDoublev < Xrb::Message
        include Xrb::Request

        OPCODE = 114

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :context_tag, {type: :uint32},
            :pname, {type: :uint32}
        def has_reply?
          true
        end
      end

      class GetError < Xrb::Message
        include Xrb::Request

        OPCODE = 115

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :context_tag, {type: :uint32}
        def has_reply?
          true
        end
      end

      class GetFloatv < Xrb::Message
        include Xrb::Request

        OPCODE = 116

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :context_tag, {type: :uint32},
            :pname, {type: :uint32}
        def has_reply?
          true
        end
      end

      class GetIntegerv < Xrb::Message
        include Xrb::Request

        OPCODE = 117

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :context_tag, {type: :uint32},
            :pname, {type: :uint32}
        def has_reply?
          true
        end
      end

      class GetLightfv < Xrb::Message
        include Xrb::Request

        OPCODE = 118

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :context_tag, {type: :uint32},
            :light, {type: :uint32},
            :pname, {type: :uint32}
        def has_reply?
          true
        end
      end

      class GetLightiv < Xrb::Message
        include Xrb::Request

        OPCODE = 119

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :context_tag, {type: :uint32},
            :light, {type: :uint32},
            :pname, {type: :uint32}
        def has_reply?
          true
        end
      end

      class GetMapdv < Xrb::Message
        include Xrb::Request

        OPCODE = 120

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :context_tag, {type: :uint32},
            :target, {type: :uint32},
            :query, {type: :uint32}
        def has_reply?
          true
        end
      end

      class GetMapfv < Xrb::Message
        include Xrb::Request

        OPCODE = 121

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :context_tag, {type: :uint32},
            :target, {type: :uint32},
            :query, {type: :uint32}
        def has_reply?
          true
        end
      end

      class GetMapiv < Xrb::Message
        include Xrb::Request

        OPCODE = 122

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :context_tag, {type: :uint32},
            :target, {type: :uint32},
            :query, {type: :uint32}
        def has_reply?
          true
        end
      end

      class GetMaterialfv < Xrb::Message
        include Xrb::Request

        OPCODE = 123

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :context_tag, {type: :uint32},
            :face, {type: :uint32},
            :pname, {type: :uint32}
        def has_reply?
          true
        end
      end

      class GetMaterialiv < Xrb::Message
        include Xrb::Request

        OPCODE = 124

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :context_tag, {type: :uint32},
            :face, {type: :uint32},
            :pname, {type: :uint32}
        def has_reply?
          true
        end
      end

      class GetPixelMapfv < Xrb::Message
        include Xrb::Request

        OPCODE = 125

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :context_tag, {type: :uint32},
            :map, {type: :uint32}
        def has_reply?
          true
        end
      end

      class GetPixelMapuiv < Xrb::Message
        include Xrb::Request

        OPCODE = 126

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :context_tag, {type: :uint32},
            :map, {type: :uint32}
        def has_reply?
          true
        end
      end

      class GetPixelMapusv < Xrb::Message
        include Xrb::Request

        OPCODE = 127

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :context_tag, {type: :uint32},
            :map, {type: :uint32}
        def has_reply?
          true
        end
      end

      class GetPolygonStipple < Xrb::Message
        include Xrb::Request

        OPCODE = 128

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :context_tag, {type: :uint32},
            :lsb_first, {type: :bool}
        def has_reply?
          true
        end
      end

      class GetString < Xrb::Message
        include Xrb::Request

        OPCODE = 129

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :context_tag, {type: :uint32},
            :name, {type: :uint32}
        def has_reply?
          true
        end
      end

      class GetTexEnvfv < Xrb::Message
        include Xrb::Request

        OPCODE = 130

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :context_tag, {type: :uint32},
            :target, {type: :uint32},
            :pname, {type: :uint32}
        def has_reply?
          true
        end
      end

      class GetTexEnviv < Xrb::Message
        include Xrb::Request

        OPCODE = 131

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :context_tag, {type: :uint32},
            :target, {type: :uint32},
            :pname, {type: :uint32}
        def has_reply?
          true
        end
      end

      class GetTexGendv < Xrb::Message
        include Xrb::Request

        OPCODE = 132

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :context_tag, {type: :uint32},
            :coord, {type: :uint32},
            :pname, {type: :uint32}
        def has_reply?
          true
        end
      end

      class GetTexGenfv < Xrb::Message
        include Xrb::Request

        OPCODE = 133

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :context_tag, {type: :uint32},
            :coord, {type: :uint32},
            :pname, {type: :uint32}
        def has_reply?
          true
        end
      end

      class GetTexGeniv < Xrb::Message
        include Xrb::Request

        OPCODE = 134

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :context_tag, {type: :uint32},
            :coord, {type: :uint32},
            :pname, {type: :uint32}
        def has_reply?
          true
        end
      end

      class GetTexImage < Xrb::Message
        include Xrb::Request

        OPCODE = 135

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :context_tag, {type: :uint32},
            :target, {type: :uint32},
            :level, {type: :int32},
            :format, {type: :uint32},
            :type, {type: :uint32},
            :swap_bytes, {type: :bool}
        def has_reply?
          true
        end
      end

      class GetTexParameterfv < Xrb::Message
        include Xrb::Request

        OPCODE = 136

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :context_tag, {type: :uint32},
            :target, {type: :uint32},
            :pname, {type: :uint32}
        def has_reply?
          true
        end
      end

      class GetTexParameteriv < Xrb::Message
        include Xrb::Request

        OPCODE = 137

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :context_tag, {type: :uint32},
            :target, {type: :uint32},
            :pname, {type: :uint32}
        def has_reply?
          true
        end
      end

      class GetTexLevelParameterfv < Xrb::Message
        include Xrb::Request

        OPCODE = 138

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :context_tag, {type: :uint32},
            :target, {type: :uint32},
            :level, {type: :int32},
            :pname, {type: :uint32}
        def has_reply?
          true
        end
      end

      class GetTexLevelParameteriv < Xrb::Message
        include Xrb::Request

        OPCODE = 139

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :context_tag, {type: :uint32},
            :target, {type: :uint32},
            :level, {type: :int32},
            :pname, {type: :uint32}
        def has_reply?
          true
        end
      end

      class IsList < Xrb::Message
        include Xrb::Request

        OPCODE = 141

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :context_tag, {type: :uint32},
            :list, {type: :uint32}
        def has_reply?
          true
        end
      end

      class Flush < Xrb::Message
        include Xrb::Request

        OPCODE = 142

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :context_tag, {type: :uint32}
        def has_reply?
          false
        end
      end

      class AreTexturesResident < Xrb::Message
        include Xrb::Request

        OPCODE = 143

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :context_tag, {type: :uint32},
            :n, {type: :int32},
            :textures, {length_field: :n, type: :uint32, kind: :list}
        def has_reply?
          true
        end
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
        def has_reply?
          false
        end
      end

      class GenTextures < Xrb::Message
        include Xrb::Request

        OPCODE = 145

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :context_tag, {type: :uint32},
            :n, {type: :int32}
        def has_reply?
          true
        end
      end

      class IsTexture < Xrb::Message
        include Xrb::Request

        OPCODE = 146

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :context_tag, {type: :uint32},
            :texture, {type: :uint32}
        def has_reply?
          true
        end
      end

      class GetColorTable < Xrb::Message
        include Xrb::Request

        OPCODE = 147

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :context_tag, {type: :uint32},
            :target, {type: :uint32},
            :format, {type: :uint32},
            :type, {type: :uint32},
            :swap_bytes, {type: :bool}
        def has_reply?
          true
        end
      end

      class GetColorTableParameterfv < Xrb::Message
        include Xrb::Request

        OPCODE = 148

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :context_tag, {type: :uint32},
            :target, {type: :uint32},
            :pname, {type: :uint32}
        def has_reply?
          true
        end
      end

      class GetColorTableParameteriv < Xrb::Message
        include Xrb::Request

        OPCODE = 149

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :context_tag, {type: :uint32},
            :target, {type: :uint32},
            :pname, {type: :uint32}
        def has_reply?
          true
        end
      end

      class GetConvolutionFilter < Xrb::Message
        include Xrb::Request

        OPCODE = 150

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :context_tag, {type: :uint32},
            :target, {type: :uint32},
            :format, {type: :uint32},
            :type, {type: :uint32},
            :swap_bytes, {type: :bool}
        def has_reply?
          true
        end
      end

      class GetConvolutionParameterfv < Xrb::Message
        include Xrb::Request

        OPCODE = 151

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :context_tag, {type: :uint32},
            :target, {type: :uint32},
            :pname, {type: :uint32}
        def has_reply?
          true
        end
      end

      class GetConvolutionParameteriv < Xrb::Message
        include Xrb::Request

        OPCODE = 152

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :context_tag, {type: :uint32},
            :target, {type: :uint32},
            :pname, {type: :uint32}
        def has_reply?
          true
        end
      end

      class GetSeparableFilter < Xrb::Message
        include Xrb::Request

        OPCODE = 153

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :context_tag, {type: :uint32},
            :target, {type: :uint32},
            :format, {type: :uint32},
            :type, {type: :uint32},
            :swap_bytes, {type: :bool}
        def has_reply?
          true
        end
      end

      class GetHistogram < Xrb::Message
        include Xrb::Request

        OPCODE = 154

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :context_tag, {type: :uint32},
            :target, {type: :uint32},
            :format, {type: :uint32},
            :type, {type: :uint32},
            :swap_bytes, {type: :bool},
            :reset, {type: :bool}
        def has_reply?
          true
        end
      end

      class GetHistogramParameterfv < Xrb::Message
        include Xrb::Request

        OPCODE = 155

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :context_tag, {type: :uint32},
            :target, {type: :uint32},
            :pname, {type: :uint32}
        def has_reply?
          true
        end
      end

      class GetHistogramParameteriv < Xrb::Message
        include Xrb::Request

        OPCODE = 156

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :context_tag, {type: :uint32},
            :target, {type: :uint32},
            :pname, {type: :uint32}
        def has_reply?
          true
        end
      end

      class GetMinmax < Xrb::Message
        include Xrb::Request

        OPCODE = 157

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :context_tag, {type: :uint32},
            :target, {type: :uint32},
            :format, {type: :uint32},
            :type, {type: :uint32},
            :swap_bytes, {type: :bool},
            :reset, {type: :bool}
        def has_reply?
          true
        end
      end

      class GetMinmaxParameterfv < Xrb::Message
        include Xrb::Request

        OPCODE = 158

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :context_tag, {type: :uint32},
            :target, {type: :uint32},
            :pname, {type: :uint32}
        def has_reply?
          true
        end
      end

      class GetMinmaxParameteriv < Xrb::Message
        include Xrb::Request

        OPCODE = 159

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :context_tag, {type: :uint32},
            :target, {type: :uint32},
            :pname, {type: :uint32}
        def has_reply?
          true
        end
      end

      class GetCompressedTexImageArb < Xrb::Message
        include Xrb::Request

        OPCODE = 160

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :context_tag, {type: :uint32},
            :target, {type: :uint32},
            :level, {type: :int32}
        def has_reply?
          true
        end
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
        def has_reply?
          false
        end
      end

      class GenQueriesArb < Xrb::Message
        include Xrb::Request

        OPCODE = 162

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :context_tag, {type: :uint32},
            :n, {type: :int32}
        def has_reply?
          true
        end
      end

      class IsQueryArb < Xrb::Message
        include Xrb::Request

        OPCODE = 163

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :context_tag, {type: :uint32},
            :id, {type: :uint32}
        def has_reply?
          true
        end
      end

      class GetQueryivArb < Xrb::Message
        include Xrb::Request

        OPCODE = 164

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :context_tag, {type: :uint32},
            :target, {type: :uint32},
            :pname, {type: :uint32}
        def has_reply?
          true
        end
      end

      class GetQueryObjectivArb < Xrb::Message
        include Xrb::Request

        OPCODE = 165

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :context_tag, {type: :uint32},
            :id, {type: :uint32},
            :pname, {type: :uint32}
        def has_reply?
          true
        end
      end

      class GetQueryObjectuivArb < Xrb::Message
        include Xrb::Request

        OPCODE = 166

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :context_tag, {type: :uint32},
            :id, {type: :uint32},
            :pname, {type: :uint32}
        def has_reply?
          true
        end
      end

    end
  end
end
