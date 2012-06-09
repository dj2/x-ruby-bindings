#
# This file was auto-generated. Do not edit.
#

module Xrb
  module XPrint
    module Reply
      class PrintQueryVersion < Xrb::Message
        layout \
            :response_type, :uint8
            :pad1, [:uint8, 1]
            :sequence, :uint16
            :length, :uint32
            :major_version, :uint16
            :minor_version, :uint16
      end
      
      class PrintGetPrinterList < Xrb::Message
        layout \
            :response_type, :uint8
            :pad1, [:uint8, 1]
            :sequence, :uint16
            :length, :uint32
            :listCount, :uint32
            :pad2, [:uint8, 20]
      end
      
      class PrintGetContext < Xrb::Message
        layout \
            :response_type, :uint8
            :pad1, [:uint8, 1]
            :sequence, :uint16
            :length, :uint32
            :context, :uint32
      end
      
      class PrintGetScreenOfContext < Xrb::Message
        layout \
            :response_type, :uint8
            :pad1, [:uint8, 1]
            :sequence, :uint16
            :length, :uint32
            :root, :uint32
      end
      
      class PrintGetDocumentData < Xrb::Message
        layout \
            :response_type, :uint8
            :pad1, [:uint8, 1]
            :sequence, :uint16
            :length, :uint32
            :status_code, :uint32
            :finished_flag, :uint32
            :dataLen, :uint32
            :pad2, [:uint8, 12]
      end
      
      class PrintInputSelected < Xrb::Message
        layout \
            :response_type, :uint8
            :pad1, [:uint8, 1]
            :sequence, :uint16
            :length, :uint32
            :event_mask, :uint32
            :all_events_mask, :uint32
      end
      
      class PrintGetAttributes < Xrb::Message
        layout \
            :response_type, :uint8
            :pad1, [:uint8, 1]
            :sequence, :uint16
            :length, :uint32
            :stringLen, :uint32
            :pad2, [:uint8, 20]
            :attributes, :char
      end
      
      class PrintGetOneAttributes < Xrb::Message
        layout \
            :response_type, :uint8
            :pad1, [:uint8, 1]
            :sequence, :uint16
            :length, :uint32
            :valueLen, :uint32
            :pad2, [:uint8, 20]
      end
      
      class PrintGetPageDimensions < Xrb::Message
        layout \
            :response_type, :uint8
            :pad1, [:uint8, 1]
            :sequence, :uint16
            :length, :uint32
            :width, :uint16
            :height, :uint16
            :offset_x, :uint16
            :offset_y, :uint16
            :reproducible_width, :uint16
            :reproducible_height, :uint16
      end
      
      class PrintQueryScreens < Xrb::Message
        layout \
            :response_type, :uint8
            :pad1, [:uint8, 1]
            :sequence, :uint16
            :length, :uint32
            :listCount, :uint32
            :pad2, [:uint8, 20]
      end
      
      class PrintSetImageResolution < Xrb::Message
        layout \
            :response_type, :uint8
            :status, :bool
            :sequence, :uint16
            :length, :uint32
            :previous_resolutions, :uint16
      end
      
      class PrintGetImageResolution < Xrb::Message
        layout \
            :response_type, :uint8
            :pad1, [:uint8, 1]
            :sequence, :uint16
            :length, :uint32
            :image_resolution, :uint16
      end
      
    end
  end
end
