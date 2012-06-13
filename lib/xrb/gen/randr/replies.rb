#
# This file was auto-generated. Do not edit.
#

module Xrb
  module RandR
    module Reply
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
      
      class SetScreenConfig < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :status, {type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :new_timestamp, {type: :uint32},
            :config_timestamp, {type: :uint32},
            :root, {type: :uint32},
            :subpixel_order, {type: :uint16},
            :pad1, {size: 10, type: :uint8}
      end
      
      class GetScreenInfo < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :rotations, {type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
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
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :min_width, {type: :uint16},
            :min_height, {type: :uint16},
            :max_width, {type: :uint16},
            :max_height, {type: :uint16},
            :pad2, {size: 16, type: :uint8}
      end
      
      class GetScreenResources < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
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
        layout \
            :response_type, {type: :uint8},
            :status, {type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
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
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :num_atoms, {type: :uint16},
            :pad2, {size: 22, type: :uint8},
            :atoms, {length_field: :num_atoms, type: :uint32, kind: :list}
      end
      
      class QueryOutputProperty < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :pending, {type: :bool},
            :range, {type: :bool},
            :immutable, {type: :bool},
            :pad2, {size: 21, type: :uint8},
            :validValues, {length_field: :length, type: :int32, kind: :list}
      end
      
      class GetOutputProperty < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :format, {type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :type, {type: :uint32},
            :bytes_after, {type: :uint32},
            :num_items, {type: :uint32},
            :pad1, {size: 12, type: :uint8},
            :data, {length_field: :format, type: :uint8, kind: :list}
      end
      
      class CreateMode < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :mode, {type: :uint32},
            :pad2, {size: 20, type: :uint8}
      end
      
      class GetCrtcInfo < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :status, {type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
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
        layout \
            :response_type, {type: :uint8},
            :status, {type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :timestamp, {type: :uint32},
            :pad1, {size: 20, type: :uint8}
      end
      
      class GetCrtcGammaSize < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :size, {type: :uint16},
            :pad2, {size: 22, type: :uint8}
      end
      
      class GetCrtcGamma < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :size, {type: :uint16},
            :pad2, {size: 22, type: :uint8},
            :red, {length_field: :size, type: :uint16, kind: :list},
            :green, {length_field: :size, type: :uint16, kind: :list},
            :blue, {length_field: :size, type: :uint16, kind: :list}
      end
      
      class GetScreenResourcesCurrent < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
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
      
      class GetCrtcTransform < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
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
        layout \
            :response_type, {type: :uint8},
            :status, {type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
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
        layout \
            :response_type, {type: :uint8},
            :status, {type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :timestamp, {type: :uint32}
      end
      
      class GetOutputPrimary < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :output, {type: :uint32}
      end
      
    end
  end
end
