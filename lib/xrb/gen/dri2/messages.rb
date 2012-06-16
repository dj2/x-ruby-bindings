#
# This file was auto-generated. Do not edit.
#

module Xrb
  module DRI2
    class Message
      class Dri2buffer < Xrb::Message
        layout \
            :attachment, {type: :uint32},
            :name, {type: :uint32},
            :pitch, {type: :uint32},
            :cpp, {type: :uint32},
            :flags, {type: :uint32}
      end

      class AttachFormat < Xrb::Message
        layout \
            :attachment, {type: :uint32},
            :format, {type: :uint32}
      end

    end
  end
end
