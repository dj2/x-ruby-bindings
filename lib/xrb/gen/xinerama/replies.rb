#
# This file was auto-generated. Do not edit.
#

module Xrb
  module Xinerama
    module Reply
      class QueryVersion < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :major, {type: :uint16},
            :minor, {type: :uint16}
      end

      class GetState < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :state, {type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :window, {type: :uint32}
      end

      class GetScreenCount < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :screen_count, {type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :window, {type: :uint32}
      end

      class GetScreenSize < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :width, {type: :uint32},
            :height, {type: :uint32},
            :window, {type: :uint32},
            :screen, {type: :uint32}
      end

      class IsActive < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :state, {type: :uint32}
      end

      class QueryScreens < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :number, {type: :uint32},
            :pad2, {size: 20, type: :uint8},
            :screen_info, {length_field: :number, type: ScreenInfo, kind: :list}
      end

    end
  end
end
