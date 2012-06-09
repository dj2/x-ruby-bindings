#
# This file was auto-generated. Do not edit.
#

module Xrb
  module RandR
    module Event
      class ScreenChangeNotify < Xrb::Message
        OPCODE = 0
        
        layout \
            :response_type, :uint8,
            :rotation, :uint8,
            :timestamp, :uint32,
            :config_timestamp, :uint32,
            :root, :uint32,
            :request_window, :uint32,
            :sizeID, :uint16,
            :subpixel_order, :uint16,
            :width, :uint16,
            :height, :uint16,
            :mwidth, :uint16,
            :mheight, :uint16
      end
      
      class Notify < Xrb::Message
        OPCODE = 1
        
        layout \
            :response_type, :uint8,
            :subCode, :uint8,
            :u, :NotifyData
      end
      
    end
  end
end
