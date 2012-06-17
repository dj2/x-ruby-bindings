#
# This file was auto-generated. Do not edit.
#

module Xrb
  module RandR
    module Request
      class QueryVersion < Xrb::Message
        include Xrb::Request

        OPCODE = 0

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

      class SetScreenConfig < Xrb::Message
        include Xrb::Request

        OPCODE = 2

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :window, {type: :uint32},
            :timestamp, {type: :uint32},
            :config_timestamp, {type: :uint32},
            :sizeID, {type: :uint16},
            :rotation, {type: :uint16},
            :rate, {type: :uint16},
            :pad1, {size: 2, type: :uint8}
        def has_reply?
          true
        end
      end

      class SelectInput < Xrb::Message
        include Xrb::Request

        OPCODE = 4

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :window, {type: :uint32},
            :enable, {type: :uint16},
            :pad1, {size: 2, type: :uint8}
        def has_reply?
          false
        end
      end

      class GetScreenInfo < Xrb::Message
        include Xrb::Request

        OPCODE = 5

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :window, {type: :uint32}
        def has_reply?
          true
        end
      end

      class GetScreenSizeRange < Xrb::Message
        include Xrb::Request

        OPCODE = 6

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :window, {type: :uint32}
        def has_reply?
          true
        end
      end

      class SetScreenSize < Xrb::Message
        include Xrb::Request

        OPCODE = 7

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :window, {type: :uint32},
            :width, {type: :uint16},
            :height, {type: :uint16},
            :mm_width, {type: :uint32},
            :mm_height, {type: :uint32}
        def has_reply?
          false
        end
      end

      class GetScreenResources < Xrb::Message
        include Xrb::Request

        OPCODE = 8

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :window, {type: :uint32}
        def has_reply?
          true
        end
      end

      class GetOutputInfo < Xrb::Message
        include Xrb::Request

        OPCODE = 9

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :output, {type: :uint32},
            :config_timestamp, {type: :uint32}
        def has_reply?
          true
        end
      end

      class ListOutputProperties < Xrb::Message
        include Xrb::Request

        OPCODE = 10

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :output, {type: :uint32}
        def has_reply?
          true
        end
      end

      class QueryOutputProperty < Xrb::Message
        include Xrb::Request

        OPCODE = 11

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :output, {type: :uint32},
            :property, {type: :uint32}
        def has_reply?
          true
        end
      end

      class ConfigureOutputProperty < Xrb::Message
        include Xrb::Request

        OPCODE = 12

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :output, {type: :uint32},
            :property, {type: :uint32},
            :pending, {type: :bool},
            :range, {type: :bool},
            :pad1, {size: 2, type: :uint8},
            :values, {type: :int32, kind: :list}
        def has_reply?
          false
        end
      end

      class ChangeOutputProperty < Xrb::Message
        include Xrb::Request

        OPCODE = 13

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :output, {type: :uint32},
            :property, {type: :uint32},
            :type, {type: :uint32},
            :format, {type: :uint8},
            :mode, {type: :uint8},
            :pad1, {size: 2, type: :uint8},
            :num_units, {type: :uint32},
            :data,{type: uint8, length_expr: '((num_units * format) / 8)'}
        def has_reply?
          false
        end
      end

      class DeleteOutputProperty < Xrb::Message
        include Xrb::Request

        OPCODE = 14

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :output, {type: :uint32},
            :property, {type: :uint32}
        def has_reply?
          false
        end
      end

      class GetOutputProperty < Xrb::Message
        include Xrb::Request

        OPCODE = 15

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :output, {type: :uint32},
            :property, {type: :uint32},
            :type, {type: :uint32},
            :long_offset, {type: :uint32},
            :long_length, {type: :uint32},
            :delete, {type: :bool},
            :pending, {type: :bool},
            :pad1, {size: 2, type: :uint8}
        def has_reply?
          true
        end
      end

      class CreateMode < Xrb::Message
        include Xrb::Request

        OPCODE = 16

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :window, {type: :uint32},
            :mode_info, {type: :ModeInfo},
            :name, {type: :char, kind: :list}
        def has_reply?
          true
        end
      end

      class DestroyMode < Xrb::Message
        include Xrb::Request

        OPCODE = 17

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :mode, {type: :uint32}
        def has_reply?
          false
        end
      end

      class AddOutputMode < Xrb::Message
        include Xrb::Request

        OPCODE = 18

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :output, {type: :uint32},
            :mode, {type: :uint32}
        def has_reply?
          false
        end
      end

      class DeleteOutputMode < Xrb::Message
        include Xrb::Request

        OPCODE = 19

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :output, {type: :uint32},
            :mode, {type: :uint32}
        def has_reply?
          false
        end
      end

      class GetCrtcInfo < Xrb::Message
        include Xrb::Request

        OPCODE = 20

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :crtc, {type: :uint32},
            :config_timestamp, {type: :uint32}
        def has_reply?
          true
        end
      end

      class SetCrtcConfig < Xrb::Message
        include Xrb::Request

        OPCODE = 21

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :crtc, {type: :uint32},
            :timestamp, {type: :uint32},
            :config_timestamp, {type: :uint32},
            :x, {type: :int16},
            :y, {type: :int16},
            :mode, {type: :uint32},
            :rotation, {type: :uint16},
            :pad1, {size: 2, type: :uint8},
            :outputs, {type: :uint32, kind: :list}
        def has_reply?
          true
        end
      end

      class GetCrtcGammaSize < Xrb::Message
        include Xrb::Request

        OPCODE = 22

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :crtc, {type: :uint32}
        def has_reply?
          true
        end
      end

      class GetCrtcGamma < Xrb::Message
        include Xrb::Request

        OPCODE = 23

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :crtc, {type: :uint32}
        def has_reply?
          true
        end
      end

      class SetCrtcGamma < Xrb::Message
        include Xrb::Request

        OPCODE = 24

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :crtc, {type: :uint32},
            :size, {type: :uint16},
            :pad1, {size: 2, type: :uint8},
            :red, {length_field: :size, type: :uint16, kind: :list},
            :green, {length_field: :size, type: :uint16, kind: :list},
            :blue, {length_field: :size, type: :uint16, kind: :list}
        def has_reply?
          false
        end
      end

      class GetScreenResourcesCurrent < Xrb::Message
        include Xrb::Request

        OPCODE = 25

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :window, {type: :uint32}
        def has_reply?
          true
        end
      end

      class SetCrtcTransform < Xrb::Message
        include Xrb::Request

        OPCODE = 26

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :crtc, {type: :uint32},
            :transform, {type: :TRANSFORM},
            :filter_len, {type: :uint16},
            :pad1, {size: 2, type: :uint8},
            :filter_name, {length_field: :filter_len, type: :char, kind: :string},
            :filter_params, {type: :int32, kind: :list}
        def has_reply?
          false
        end
      end

      class GetCrtcTransform < Xrb::Message
        include Xrb::Request

        OPCODE = 27

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :crtc, {type: :uint32}
        def has_reply?
          true
        end
      end

      class GetPanning < Xrb::Message
        include Xrb::Request

        OPCODE = 28

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :crtc, {type: :uint32}
        def has_reply?
          true
        end
      end

      class SetPanning < Xrb::Message
        include Xrb::Request

        OPCODE = 29

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :crtc, {type: :uint32},
            :timestamp, {type: :uint32},
            :left, {type: :uint16},
            :top, {type: :uint16},
            :width, {type: :uint16},
            :height, {type: :uint16},
            :track_left, {type: :uint16},
            :track_top, {type: :uint16},
            :track_width, {type: :uint16},
            :track_height, {type: :uint16},
            :border_left, {type: :int16},
            :border_top, {type: :int16},
            :border_right, {type: :int16},
            :border_bottom, {type: :int16}
        def has_reply?
          true
        end
      end

      class SetOutputPrimary < Xrb::Message
        include Xrb::Request

        OPCODE = 30

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :window, {type: :uint32},
            :output, {type: :uint32}
        def has_reply?
          false
        end
      end

      class GetOutputPrimary < Xrb::Message
        include Xrb::Request

        OPCODE = 31

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :window, {type: :uint32}
        def has_reply?
          true
        end
      end

    end
  end
end
