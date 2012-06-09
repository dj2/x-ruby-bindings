#
# This file was auto-generated. Do not edit.
#

module Xrb
  module DRI2
    class Message
      class Dri2buffer < Xrb::Message
        layout \
            :attachment, :uint32,
            :name, :uint32,
            :pitch, :uint32,
            :cpp, :uint32,
            :flags, :uint32
      end
      
      class AttachFormat < Xrb::Message
        layout \
            :attachment, :uint32,
            :format, :uint32
      end
      
    end
  end
end
