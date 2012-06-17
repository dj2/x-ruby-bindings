#
# This file was auto-generated. Do not edit.
#

module Xrb
  module Xinerama
    class Message
      class ScreenInfo < Xrb::Message
        layout \
            :x_org, {type: :int16},
            :y_org, {type: :int16},
            :width, {type: :uint16},
            :height, {type: :uint16}
      end

    end
  end
end
