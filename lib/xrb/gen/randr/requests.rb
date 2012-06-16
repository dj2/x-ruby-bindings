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
            :minor_version, {type: :uint32},
            :pad2, {size: 16, type: :uint8}
      end

      class SetScreenConfig < Xrb::Message
        include Xrb::Request

        OPCODE = 2

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :new_timestamp, {type: :uint32},
            :config_timestamp, {type: :uint32},
            :root, {type: :uint32},
            :subpixel_order, {type: :uint16},
            :pad1, {size: 10, type: :uint8}
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
      end

      class GetScreenInfo < Xrb::Message
        include Xrb::Request

        OPCODE = 5

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :root, {type: :uint32},
            :timestamp, {type: :uint32},
            :config_timestamp, {type: :uint32},
            :nSizes, {type: :uint16},
            :sizeID, {type: :uint16},
            :rotation, {type: :uint16},
            :rate, {type: :uint16},
            :nInfo, {type: :uint16},
            :pad1, {size: 2, type: :uint8},
            :sizes, {length_field: :nSizes, type: ScreenSize, kind: :list},
            :rates, {length_field: :nInfo, type: RefreshRates, kind: :list}
      end

      class GetScreenSizeRange < Xrb::Message
        include Xrb::Request

        OPCODE = 6

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :min_width, {type: :uint16},
            :min_height, {type: :uint16},
            :max_width, {type: :uint16},
            :max_height, {type: :uint16},
            :pad2, {size: 16, type: :uint8}
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
      end

      class GetScreenResources < Xrb::Message
        include Xrb::Request

        OPCODE = 8

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :timestamp, {type: :uint32},
            :config_timestamp, {type: :uint32},
            :num_crtcs, {type: :uint16},
            :num_outputs, {type: :uint16},
            :num_modes, {type: :uint16},
            :names_len, {type: :uint16},
            :pad2, {size: 8, type: :uint8},
            :crtcs, {length_field: :num_crtcs, type: :uint32, kind: :list},
            :outputs, {length_field: :num_outputs, type: :uint32, kind: :list},
            :modes, {length_field: :num_modes, type: ModeInfo, kind: :list},
            :names, {length_field: :names_len, type: :uint8, kind: :list}
      end

      class GetOutputInfo < Xrb::Message
        include Xrb::Request

        OPCODE = 9

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :timestamp, {type: :uint32},
            :crtc, {type: :uint32},
            :mm_width, {type: :uint32},
            :mm_height, {type: :uint32},
            :connection, {type: :uint8},
            :subpixel_order, {type: :uint8},
            :num_crtcs, {type: :uint16},
            :num_modes, {type: :uint16},
            :num_preferred, {type: :uint16},
            :num_clones, {type: :uint16},
            :name_len, {type: :uint16},
            :crtcs, {length_field: :num_crtcs, type: :uint32, kind: :list},
            :modes, {length_field: :num_modes, type: :uint32, kind: :list},
            :clones, {length_field: :num_clones, type: :uint32, kind: :list},
            :name, {length_field: :name_len, type: :uint8, kind: :list}
      end

      class ListOutputProperties < Xrb::Message
        include Xrb::Request

        OPCODE = 10

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :num_atoms, {type: :uint16},
            :pad2, {size: 22, type: :uint8},
            :atoms, {length_field: :num_atoms, type: :uint32, kind: :list}
      end

      class QueryOutputProperty < Xrb::Message
        include Xrb::Request

        OPCODE = 11

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :pending, {type: :bool},
            :range, {type: :bool},
            :immutable, {type: :bool},
            :pad2, {size: 21, type: :uint8},
            :validValues, {length_field: :length, type: :int32, kind: :list}
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
            :pad1, {size: 2, type: :uint8}
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
            :data, {length_field: :num_units, type: :uint8, kind: :list}
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
      end

      class GetOutputProperty < Xrb::Message
        include Xrb::Request

        OPCODE = 15

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :type, {type: :uint32},
            :bytes_after, {type: :uint32},
            :num_items, {type: :uint32},
            :pad1, {size: 12, type: :uint8},
            :data, {length_field: :format, type: :uint8, kind: :list}
      end

      class CreateMode < Xrb::Message
        include Xrb::Request

        OPCODE = 16

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :mode, {type: :uint32},
            :pad2, {size: 20, type: :uint8}
      end

      class DestroyMode < Xrb::Message
        include Xrb::Request

        OPCODE = 17

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :mode, {type: :uint32}
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
      end

      class GetCrtcInfo < Xrb::Message
        include Xrb::Request

        OPCODE = 20

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :timestamp, {type: :uint32},
            :x, {type: :int16},
            :y, {type: :int16},
            :width, {type: :uint16},
            :height, {type: :uint16},
            :mode, {type: :uint32},
            :rotation, {type: :uint16},
            :rotations, {type: :uint16},
            :num_outputs, {type: :uint16},
            :num_possible_outputs, {type: :uint16},
            :outputs, {length_field: :num_outputs, type: :uint32, kind: :list},
            :possible, {length_field: :num_possible_outputs, type: :uint32, kind: :list}
      end

      class SetCrtcConfig < Xrb::Message
        include Xrb::Request

        OPCODE = 21

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :timestamp, {type: :uint32},
            :pad1, {size: 20, type: :uint8}
      end

      class GetCrtcGammaSize < Xrb::Message
        include Xrb::Request

        OPCODE = 22

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :size, {type: :uint16},
            :pad2, {size: 22, type: :uint8}
      end

      class GetCrtcGamma < Xrb::Message
        include Xrb::Request

        OPCODE = 23

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :size, {type: :uint16},
            :pad2, {size: 22, type: :uint8},
            :red, {length_field: :size, type: :uint16, kind: :list},
            :green, {length_field: :size, type: :uint16, kind: :list},
            :blue, {length_field: :size, type: :uint16, kind: :list}
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
      end

      class GetScreenResourcesCurrent < Xrb::Message
        include Xrb::Request

        OPCODE = 25

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :timestamp, {type: :uint32},
            :config_timestamp, {type: :uint32},
            :num_crtcs, {type: :uint16},
            :num_outputs, {type: :uint16},
            :num_modes, {type: :uint16},
            :names_len, {type: :uint16},
            :pad2, {size: 8, type: :uint8},
            :crtcs, {length_field: :num_crtcs, type: :uint32, kind: :list},
            :outputs, {length_field: :num_outputs, type: :uint32, kind: :list},
            :modes, {length_field: :num_modes, type: ModeInfo, kind: :list},
            :names, {length_field: :names_len, type: :uint8, kind: :list}
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
            :filter_name, {length_field: :filter_len, type: :char, kind: :string}
      end

      class GetCrtcTransform < Xrb::Message
        include Xrb::Request

        OPCODE = 27

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :pending_transform, {type: :TRANSFORM},
            :has_transforms, {type: :bool},
            :pad2, {size: 3, type: :uint8},
            :current_transform, {type: :TRANSFORM},
            :pad3, {size: 4, type: :uint8},
            :pending_len, {type: :uint16},
            :pending_nparams, {type: :uint16},
            :current_len, {type: :uint16},
            :current_nparams, {type: :uint16},
            :pending_filter_name, {length_field: :pending_len, type: :char, kind: :string},
            :pending_params, {length_field: :pending_nparams, type: :int32, kind: :list},
            :current_filter_name, {length_field: :current_len, type: :char, kind: :string},
            :current_params, {length_field: :current_nparams, type: :int32, kind: :list}
      end

      class GetPanning < Xrb::Message
        include Xrb::Request

        OPCODE = 28

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
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
      end

      class SetPanning < Xrb::Message
        include Xrb::Request

        OPCODE = 29

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :timestamp, {type: :uint32}
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
      end

      class GetOutputPrimary < Xrb::Message
        include Xrb::Request

        OPCODE = 31

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :output, {type: :uint32}
      end

    end
  end
end
