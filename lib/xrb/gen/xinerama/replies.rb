#
# This file was auto-generated. Do not edit.
#

module Xrb
  module Xinerama
    module Reply
      class QueryVersion < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [:uint8, 1],
            :sequence, :uint16,
            :length, :uint32,
            :major, :uint16,
            :minor, :uint16
      end
      
      class GetState < Xrb::Message
        layout \
            :response_type, :uint8,
            :state, :uint8,
            :sequence, :uint16,
            :length, :uint32,
            :window, :uint32
      end
      
      class GetScreenCount < Xrb::Message
        layout \
            :response_type, :uint8,
            :screen_count, :uint8,
            :sequence, :uint16,
            :length, :uint32,
            :window, :uint32
      end
      
      class GetScreenSize < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [:uint8, 1],
            :sequence, :uint16,
            :length, :uint32,
            :width, :uint32,
            :height, :uint32,
            :window, :uint32,
            :screen, :uint32
      end
      
      class IsActive < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [:uint8, 1],
            :sequence, :uint16,
            :length, :uint32,
            :state, :uint32
      end
      
      class QueryScreens < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [:uint8, 1],
            :sequence, :uint16,
            :length, :uint32,
            :number, :uint32,
            :pad2, [:uint8, 20],
            :screen_info, [:number, :ScreenInfo, :list]
      end
      
    end
  end
end
