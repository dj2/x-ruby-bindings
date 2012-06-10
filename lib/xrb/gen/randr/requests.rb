#
# This file was auto-generated. Do not edit.
#

module Xrb
  module RandR
    module Request
      class QueryVersion < Xrb::Message
        OPCODE = 0
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :major_version, :uint32,
            :minor_version, :uint32,
            :pad2, [16, :uint8]
      end
      
      class SetScreenConfig < Xrb::Message
        OPCODE = 2
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :new_timestamp, :uint32,
            :config_timestamp, :uint32,
            :root, :uint32,
            :subpixel_order, :uint16,
            :pad1, [10, :uint8]
      end
      
      class SelectInput < Xrb::Message
        OPCODE = 4
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :window, :uint32,
            :enable, :uint16,
            :pad1, [2, :uint8]
      end
      
      class GetScreenInfo < Xrb::Message
        OPCODE = 5
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
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
        OPCODE = 6
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :min_width, :uint16,
            :min_height, :uint16,
            :max_width, :uint16,
            :max_height, :uint16,
            :pad2, [16, :uint8]
      end
      
      class SetScreenSize < Xrb::Message
        OPCODE = 7
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :window, :uint32,
            :width, :uint16,
            :height, :uint16,
            :mm_width, :uint32,
            :mm_height, :uint32
      end
      
      class GetScreenResources < Xrb::Message
        OPCODE = 8
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
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
        OPCODE = 9
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
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
        OPCODE = 10
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :num_atoms, :uint16,
            :pad2, [22, :uint8],
            :atoms, [:num_atoms, :uint32, :list]
      end
      
      class QueryOutputProperty < Xrb::Message
        OPCODE = 11
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :pending, :bool,
            :range, :bool,
            :immutable, :bool,
            :pad2, [21, :uint8],
            :validValues, [:length, :int32, :list]
      end
      
      class ConfigureOutputProperty < Xrb::Message
        OPCODE = 12
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :output, :uint32,
            :property, :uint32,
            :pending, :bool,
            :range, :bool,
            :pad1, [2, :uint8]
      end
      
      class ChangeOutputProperty < Xrb::Message
        OPCODE = 13
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :output, :uint32,
            :property, :uint32,
            :type, :uint32,
            :format, :uint8,
            :mode, :uint8,
            :pad1, [2, :uint8],
            :num_units, :uint32,
            :data, [:num_units, :uint8, :list]
      end
      
      class DeleteOutputProperty < Xrb::Message
        OPCODE = 14
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :output, :uint32,
            :property, :uint32
      end
      
      class GetOutputProperty < Xrb::Message
        OPCODE = 15
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :type, :uint32,
            :bytes_after, :uint32,
            :num_items, :uint32,
            :pad1, [12, :uint8],
            :data, [:format, :uint8, :list]
      end
      
      class CreateMode < Xrb::Message
        OPCODE = 16
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :mode, :uint32,
            :pad2, [20, :uint8]
      end
      
      class DestroyMode < Xrb::Message
        OPCODE = 17
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :mode, :uint32
      end
      
      class AddOutputMode < Xrb::Message
        OPCODE = 18
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :output, :uint32,
            :mode, :uint32
      end
      
      class DeleteOutputMode < Xrb::Message
        OPCODE = 19
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :output, :uint32,
            :mode, :uint32
      end
      
      class GetCrtcInfo < Xrb::Message
        OPCODE = 20
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
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
        OPCODE = 21
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :timestamp, :uint32,
            :pad1, [20, :uint8]
      end
      
      class GetCrtcGammaSize < Xrb::Message
        OPCODE = 22
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :size, :uint16,
            :pad2, [22, :uint8]
      end
      
      class GetCrtcGamma < Xrb::Message
        OPCODE = 23
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :size, :uint16,
            :pad2, [22, :uint8],
            :red, [:size, :uint16, :list],
            :green, [:size, :uint16, :list],
            :blue, [:size, :uint16, :list]
      end
      
      class SetCrtcGamma < Xrb::Message
        OPCODE = 24
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :crtc, :uint32,
            :size, :uint16,
            :pad1, [2, :uint8],
            :red, [:size, :uint16, :list],
            :green, [:size, :uint16, :list],
            :blue, [:size, :uint16, :list]
      end
      
      class GetScreenResourcesCurrent < Xrb::Message
        OPCODE = 25
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
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
      
      class SetCrtcTransform < Xrb::Message
        OPCODE = 26
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :crtc, :uint32,
            :transform, :TRANSFORM,
            :filter_len, :uint16,
            :pad1, [2, :uint8],
            :filter_name, [:filter_len, :char, :string]
      end
      
      class GetCrtcTransform < Xrb::Message
        OPCODE = 27
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
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
        OPCODE = 28
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
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
        OPCODE = 29
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :timestamp, :uint32
      end
      
      class SetOutputPrimary < Xrb::Message
        OPCODE = 30
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :window, :uint32,
            :output, :uint32
      end
      
      class GetOutputPrimary < Xrb::Message
        OPCODE = 31
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :output, :uint32
      end
      
    end
  end
end
