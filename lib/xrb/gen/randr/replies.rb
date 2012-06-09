#
# This file was auto-generated. Do not edit.
#

module Xrb
  module RandR
    module Reply
      class QueryVersion < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [:uint8, 1],
            :sequence, :uint16,
            :length, :uint32,
            :major_version, :uint32,
            :minor_version, :uint32,
            :pad2, [:uint8, 16]
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
            :pad1, [:uint8, 10]
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
            :pad1, [:uint8, 2],
            :sizes, [:nSizes, :string],
            :rates, [:nInfo, :string]
      end
      
      class GetScreenSizeRange < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [:uint8, 1],
            :sequence, :uint16,
            :length, :uint32,
            :min_width, :uint16,
            :min_height, :uint16,
            :max_width, :uint16,
            :max_height, :uint16,
            :pad2, [:uint8, 16]
      end
      
      class GetScreenResources < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [:uint8, 1],
            :sequence, :uint16,
            :length, :uint32,
            :timestamp, :uint32,
            :config_timestamp, :uint32,
            :num_crtcs, :uint16,
            :num_outputs, :uint16,
            :num_modes, :uint16,
            :names_len, :uint16,
            :pad2, [:uint8, 8],
            :crtcs, [:num_crtcs, :string],
            :outputs, [:num_outputs, :string],
            :modes, [:num_modes, :string],
            :names, [:names_len, :string]
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
            :crtcs, [:num_crtcs, :string],
            :modes, [:num_modes, :string],
            :clones, [:num_clones, :string],
            :name, [:name_len, :string]
      end
      
      class ListOutputProperties < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [:uint8, 1],
            :sequence, :uint16,
            :length, :uint32,
            :num_atoms, :uint16,
            :pad2, [:uint8, 22],
            :atoms, [:num_atoms, :string]
      end
      
      class QueryOutputProperty < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [:uint8, 1],
            :sequence, :uint16,
            :length, :uint32,
            :pending, :bool,
            :range, :bool,
            :immutable, :bool,
            :pad2, [:uint8, 21],
            :validValues, [:length, :string]
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
            :pad1, [:uint8, 12],
            :data, [:format, :string]
      end
      
      class CreateMode < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [:uint8, 1],
            :sequence, :uint16,
            :length, :uint32,
            :mode, :uint32,
            :pad2, [:uint8, 20]
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
            :outputs, [:num_outputs, :string],
            :possible, [:num_possible_outputs, :string]
      end
      
      class SetCrtcConfig < Xrb::Message
        layout \
            :response_type, :uint8,
            :status, :uint8,
            :sequence, :uint16,
            :length, :uint32,
            :timestamp, :uint32,
            :pad1, [:uint8, 20]
      end
      
      class GetCrtcGammaSize < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [:uint8, 1],
            :sequence, :uint16,
            :length, :uint32,
            :size, :uint16,
            :pad2, [:uint8, 22]
      end
      
      class GetCrtcGamma < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [:uint8, 1],
            :sequence, :uint16,
            :length, :uint32,
            :size, :uint16,
            :pad2, [:uint8, 22],
            :red, [:size, :string],
            :green, [:size, :string],
            :blue, [:size, :string]
      end
      
      class GetScreenResourcesCurrent < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [:uint8, 1],
            :sequence, :uint16,
            :length, :uint32,
            :timestamp, :uint32,
            :config_timestamp, :uint32,
            :num_crtcs, :uint16,
            :num_outputs, :uint16,
            :num_modes, :uint16,
            :names_len, :uint16,
            :pad2, [:uint8, 8],
            :crtcs, [:num_crtcs, :string],
            :outputs, [:num_outputs, :string],
            :modes, [:num_modes, :string],
            :names, [:names_len, :string]
      end
      
      class GetCrtcTransform < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [:uint8, 1],
            :sequence, :uint16,
            :length, :uint32,
            :pending_transform, :TRANSFORM,
            :has_transforms, :bool,
            :pad2, [:uint8, 3],
            :current_transform, :TRANSFORM,
            :pad3, [:uint8, 4],
            :pending_len, :uint16,
            :pending_nparams, :uint16,
            :current_len, :uint16,
            :current_nparams, :uint16,
            :pending_filter_name, [:pending_len, :string],
            :pending_params, [:pending_nparams, :string],
            :current_filter_name, [:current_len, :string],
            :current_params, [:current_nparams, :string]
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
            :pad1, [:uint8, 1],
            :sequence, :uint16,
            :length, :uint32,
            :output, :uint32
      end
      
    end
  end
end
