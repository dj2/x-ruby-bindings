#
# This file was auto-generated. Do not edit.
#

module Xrb
  module RandR
    module Reply
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
      
      class SetScreenConfig < Xrb::Message
        layout \
            :response_type, :uint8,
            :status, :uint8,
            :sequence, :uint16,
            :length, :uint32,
            :new_timestamp, :uint32,
            :config_timestamp, :uint32,
            :root, :uint32,
            :subpixel_order, :uint16,
            :pad1, [10, :uint8]
      end
      
      class GetScreenInfo < Xrb::Message
        layout \
            :response_type, :uint8,
            :rotations, :uint8,
            :sequence, :uint16,
            :length, :uint32,
            :root, :uint32,
            :timestamp, :uint32,
            :config_timestamp, :uint32,
            :nSizes, :uint16,
            :sizeID, :uint16,
            :rotation, :uint16,
            :rate, :uint16,
            :nInfo, :uint16,
            :pad1, [2, :uint8],
            :sizes, [:nSizes, ScreenSize, :list],
            :rates, [:nInfo, RefreshRates, :list]
      end
      
      class GetScreenSizeRange < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [1, :uint8],
            :sequence, :uint16,
            :length, :uint32,
            :min_width, :uint16,
            :min_height, :uint16,
            :max_width, :uint16,
            :max_height, :uint16,
            :pad2, [16, :uint8]
      end
      
      class GetScreenResources < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [1, :uint8],
            :sequence, :uint16,
            :length, :uint32,
            :timestamp, :uint32,
            :config_timestamp, :uint32,
            :num_crtcs, :uint16,
            :num_outputs, :uint16,
            :num_modes, :uint16,
            :names_len, :uint16,
            :pad2, [8, :uint8],
            :crtcs, [:num_crtcs, :uint32, :list],
            :outputs, [:num_outputs, :uint32, :list],
            :modes, [:num_modes, ModeInfo, :list],
            :names, [:names_len, :uint8, :list]
      end
      
      class GetOutputInfo < Xrb::Message
        layout \
            :response_type, :uint8,
            :status, :uint8,
            :sequence, :uint16,
            :length, :uint32,
            :timestamp, :uint32,
            :crtc, :uint32,
            :mm_width, :uint32,
            :mm_height, :uint32,
            :connection, :uint8,
            :subpixel_order, :uint8,
            :num_crtcs, :uint16,
            :num_modes, :uint16,
            :num_preferred, :uint16,
            :num_clones, :uint16,
            :name_len, :uint16,
            :crtcs, [:num_crtcs, :uint32, :list],
            :modes, [:num_modes, :uint32, :list],
            :clones, [:num_clones, :uint32, :list],
            :name, [:name_len, :uint8, :list]
      end
      
      class ListOutputProperties < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [1, :uint8],
            :sequence, :uint16,
            :length, :uint32,
            :num_atoms, :uint16,
            :pad2, [22, :uint8],
            :atoms, [:num_atoms, :uint32, :list]
      end
      
      class QueryOutputProperty < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [1, :uint8],
            :sequence, :uint16,
            :length, :uint32,
            :pending, :bool,
            :range, :bool,
            :immutable, :bool,
            :pad2, [21, :uint8],
            :validValues, [:length, :int32, :list]
      end
      
      class GetOutputProperty < Xrb::Message
        layout \
            :response_type, :uint8,
            :format, :uint8,
            :sequence, :uint16,
            :length, :uint32,
            :type, :uint32,
            :bytes_after, :uint32,
            :num_items, :uint32,
            :pad1, [12, :uint8],
            :data, [:format, :uint8, :list]
      end
      
      class CreateMode < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [1, :uint8],
            :sequence, :uint16,
            :length, :uint32,
            :mode, :uint32,
            :pad2, [20, :uint8]
      end
      
      class GetCrtcInfo < Xrb::Message
        layout \
            :response_type, :uint8,
            :status, :uint8,
            :sequence, :uint16,
            :length, :uint32,
            :timestamp, :uint32,
            :x, :int16,
            :y, :int16,
            :width, :uint16,
            :height, :uint16,
            :mode, :uint32,
            :rotation, :uint16,
            :rotations, :uint16,
            :num_outputs, :uint16,
            :num_possible_outputs, :uint16,
            :outputs, [:num_outputs, :uint32, :list],
            :possible, [:num_possible_outputs, :uint32, :list]
      end
      
      class SetCrtcConfig < Xrb::Message
        layout \
            :response_type, :uint8,
            :status, :uint8,
            :sequence, :uint16,
            :length, :uint32,
            :timestamp, :uint32,
            :pad1, [20, :uint8]
      end
      
      class GetCrtcGammaSize < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [1, :uint8],
            :sequence, :uint16,
            :length, :uint32,
            :size, :uint16,
            :pad2, [22, :uint8]
      end
      
      class GetCrtcGamma < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [1, :uint8],
            :sequence, :uint16,
            :length, :uint32,
            :size, :uint16,
            :pad2, [22, :uint8],
            :red, [:size, :uint16, :list],
            :green, [:size, :uint16, :list],
            :blue, [:size, :uint16, :list]
      end
      
      class GetScreenResourcesCurrent < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [1, :uint8],
            :sequence, :uint16,
            :length, :uint32,
            :timestamp, :uint32,
            :config_timestamp, :uint32,
            :num_crtcs, :uint16,
            :num_outputs, :uint16,
            :num_modes, :uint16,
            :names_len, :uint16,
            :pad2, [8, :uint8],
            :crtcs, [:num_crtcs, :uint32, :list],
            :outputs, [:num_outputs, :uint32, :list],
            :modes, [:num_modes, ModeInfo, :list],
            :names, [:names_len, :uint8, :list]
      end
      
      class GetCrtcTransform < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [1, :uint8],
            :sequence, :uint16,
            :length, :uint32,
            :pending_transform, :TRANSFORM,
            :has_transforms, :bool,
            :pad2, [3, :uint8],
            :current_transform, :TRANSFORM,
            :pad3, [4, :uint8],
            :pending_len, :uint16,
            :pending_nparams, :uint16,
            :current_len, :uint16,
            :current_nparams, :uint16,
            :pending_filter_name, [:pending_len, :char, :string],
            :pending_params, [:pending_nparams, :int32, :list],
            :current_filter_name, [:current_len, :char, :string],
            :current_params, [:current_nparams, :int32, :list]
      end
      
      class GetPanning < Xrb::Message
        layout \
            :response_type, :uint8,
            :status, :uint8,
            :sequence, :uint16,
            :length, :uint32,
            :timestamp, :uint32,
            :left, :uint16,
            :top, :uint16,
            :width, :uint16,
            :height, :uint16,
            :track_left, :uint16,
            :track_top, :uint16,
            :track_width, :uint16,
            :track_height, :uint16,
            :border_left, :int16,
            :border_top, :int16,
            :border_right, :int16,
            :border_bottom, :int16
      end
      
      class SetPanning < Xrb::Message
        layout \
            :response_type, :uint8,
            :status, :uint8,
            :sequence, :uint16,
            :length, :uint32,
            :timestamp, :uint32
      end
      
      class GetOutputPrimary < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [1, :uint8],
            :sequence, :uint16,
            :length, :uint32,
            :output, :uint32
      end
      
    end
  end
end
