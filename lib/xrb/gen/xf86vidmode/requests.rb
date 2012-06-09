#
# This file was auto-generated. Do not edit.
#

module Xrb
  module XF86VidMode
    module Request
      class QueryVersion < Xrb::Message
        OPCODE = 0
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :major_version, :uint16,
            :minor_version, :uint16
      end
      
      class GetModeLine < Xrb::Message
        OPCODE = 1
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
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
      
      class ModModeLine < Xrb::Message
        OPCODE = 2
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :screen, :uint32,
            :hdisplay, :uint16,
            :hsyncstart, :uint16,
            :hsyncend, :uint16,
            :htotal, :uint16,
            :hskew, :uint16,
            :vdisplay, :uint16,
            :vsyncstart, :uint16,
            :vsyncend, :uint16,
            :vtotal, :uint16,
            :pad1, [:uint8, 2],
            :flags, :uint32,
            :pad2, [:uint8, 12],
            :privsize, :uint32,
            :private, [:privsize, :uint8, :list]
      end
      
      class SwitchMode < Xrb::Message
        OPCODE = 3
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :screen, :uint16,
            :zoom, :uint16
      end
      
      class GetMonitor < Xrb::Message
        OPCODE = 4
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
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
      
      class LockModeSwitch < Xrb::Message
        OPCODE = 5
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :screen, :uint16,
            :lock, :uint16
      end
      
      class GetAllModeLines < Xrb::Message
        OPCODE = 6
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :modecount, :uint32,
            :pad2, [:uint8, 20],
            :modeinfo, [:modecount, :ModeInfo, :list]
      end
      
      class AddModeLine < Xrb::Message
        OPCODE = 7
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :screen, :uint32,
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
            :pad1, [:uint8, 2],
            :flags, :uint32,
            :pad2, [:uint8, 12],
            :privsize, :uint32,
            :after_dotclock, :uint32,
            :after_hdisplay, :uint16,
            :after_hsyncstart, :uint16,
            :after_hsyncend, :uint16,
            :after_htotal, :uint16,
            :after_hskew, :uint16,
            :after_vdisplay, :uint16,
            :after_vsyncstart, :uint16,
            :after_vsyncend, :uint16,
            :after_vtotal, :uint16,
            :pad3, [:uint8, 2],
            :after_flags, :uint32,
            :pad4, [:uint8, 12],
            :private, [:privsize, :uint8, :list]
      end
      
      class DeleteModeLine < Xrb::Message
        OPCODE = 8
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :screen, :uint32,
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
            :pad1, [:uint8, 2],
            :flags, :uint32,
            :pad2, [:uint8, 12],
            :privsize, :uint32,
            :private, [:privsize, :uint8, :list]
      end
      
      class ValidateModeLine < Xrb::Message
        OPCODE = 9
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :status, :uint32,
            :pad2, [:uint8, 20]
      end
      
      class SwitchToMode < Xrb::Message
        OPCODE = 10
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :screen, :uint32,
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
            :pad1, [:uint8, 2],
            :flags, :uint32,
            :pad2, [:uint8, 12],
            :privsize, :uint32,
            :private, [:privsize, :uint8, :list]
      end
      
      class GetViewPort < Xrb::Message
        OPCODE = 11
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :x, :uint32,
            :y, :uint32,
            :pad2, [:uint8, 16]
      end
      
      class SetViewPort < Xrb::Message
        OPCODE = 12
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :screen, :uint16,
            :pad1, [:uint8, 2],
            :x, :uint32,
            :y, :uint32
      end
      
      class GetDotClocks < Xrb::Message
        OPCODE = 13
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :flags, :uint32,
            :clocks, :uint32,
            :maxclocks, :uint32,
            :pad2, [:uint8, 12],
            :clock, [:flags, :uint32, :list]
      end
      
      class SetClientVersion < Xrb::Message
        OPCODE = 14
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :major, :uint16,
            :minor, :uint16
      end
      
      class SetGamma < Xrb::Message
        OPCODE = 15
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :screen, :uint16,
            :pad1, [:uint8, 2],
            :red, :uint32,
            :green, :uint32,
            :blue, :uint32,
            :pad2, [:uint8, 12]
      end
      
      class GetGamma < Xrb::Message
        OPCODE = 16
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :red, :uint32,
            :green, :uint32,
            :blue, :uint32,
            :pad2, [:uint8, 12]
      end
      
      class GetGammaRamp < Xrb::Message
        OPCODE = 17
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :size, :uint16,
            :pad2, [:uint8, 22],
            :red, [:uint16, 1],
            :green, [:uint16, 1],
            :blue, [:uint16, 1]
      end
      
      class SetGammaRamp < Xrb::Message
        OPCODE = 18
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :screen, :uint16,
            :size, :uint16,
            :red, [:uint16, 1],
            :green, [:uint16, 1],
            :blue, [:uint16, 1]
      end
      
      class GetGammaRampSize < Xrb::Message
        OPCODE = 19
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :size, :uint16,
            :pad2, [:uint8, 22]
      end
      
      class GetPermissions < Xrb::Message
        OPCODE = 20
        
        layout \
            :major_opcode, :uint8,
            :minor_opcode, :uint8,
            :length, :uint16,
            :permissions, :uint32,
            :pad2, [:uint8, 20]
      end
      
    end
  end
end
