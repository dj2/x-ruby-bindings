#
# This file was auto-generated. Do not edit.
#

module Xrb
  module XF86VidMode
    module Reply
      class QueryVersion < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [:uint8, 1],
            :sequence, :uint16,
            :length, :uint32,
            :major_version, :uint16,
            :minor_version, :uint16
      end
      
      class GetModeLine < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [:uint8, 1],
            :sequence, :uint16,
            :length, :uint32,
            :dotclock, :uint32,
            :hdisplay, :uint16,
            :hsyncstart, :uint16,
            :hsyncend, :uint16,
            :htotal, :uint16,
            :hskew, :uint16,
            :vdisplay, :uint16,
            :vsyncstart, :uint16,
            :vsyncend, :uint16,
            :vtotal, :uint16,
            :pad2, [:uint8, 2],
            :flags, :uint32,
            :pad3, [:uint8, 12],
            :privsize, :uint32,
            :private, [:privsize, :uint8, :list]
      end
      
      class GetMonitor < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [:uint8, 1],
            :sequence, :uint16,
            :length, :uint32,
            :vendor_length, :uint8,
            :model_length, :uint8,
            :num_hsync, :uint8,
            :num_vsync, :uint8,
            :pad2, [:uint8, 20],
            :hsync, [:num_hsync, :uint32, :list],
            :vsync, [:num_vsync, :uint32, :list],
            :vendor, [:vendor_length, :char, :string],
            :alignment_pad, [:uint8, 3],
            :model, [:model_length, :char, :string]
      end
      
      class GetAllModeLines < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [:uint8, 1],
            :sequence, :uint16,
            :length, :uint32,
            :modecount, :uint32,
            :pad2, [:uint8, 20],
            :modeinfo, [:modecount, :ModeInfo, :list]
      end
      
      class ValidateModeLine < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [:uint8, 1],
            :sequence, :uint16,
            :length, :uint32,
            :status, :uint32,
            :pad2, [:uint8, 20]
      end
      
      class GetViewPort < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [:uint8, 1],
            :sequence, :uint16,
            :length, :uint32,
            :x, :uint32,
            :y, :uint32,
            :pad2, [:uint8, 16]
      end
      
      class GetDotClocks < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [:uint8, 1],
            :sequence, :uint16,
            :length, :uint32,
            :flags, :uint32,
            :clocks, :uint32,
            :maxclocks, :uint32,
            :pad2, [:uint8, 12],
            :clock, [:flags, :uint32, :list]
      end
      
      class GetGamma < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [:uint8, 1],
            :sequence, :uint16,
            :length, :uint32,
            :red, :uint32,
            :green, :uint32,
            :blue, :uint32,
            :pad2, [:uint8, 12]
      end
      
      class GetGammaRamp < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [:uint8, 1],
            :sequence, :uint16,
            :length, :uint32,
            :size, :uint16,
            :pad2, [:uint8, 22],
            :red, [:uint16, 1],
            :green, [:uint16, 1],
            :blue, [:uint16, 1]
      end
      
      class GetGammaRampSize < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [:uint8, 1],
            :sequence, :uint16,
            :length, :uint32,
            :size, :uint16,
            :pad2, [:uint8, 22]
      end
      
      class GetPermissions < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [:uint8, 1],
            :sequence, :uint16,
            :length, :uint32,
            :permissions, :uint32,
            :pad2, [:uint8, 20]
      end
      
    end
  end
end
