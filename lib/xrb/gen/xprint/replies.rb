#
# This file was auto-generated. Do not edit.
#

module Xrb
  module XPrint
    module Reply
      class PrintQueryVersion < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :major_version, {type: :uint16},
            :minor_version, {type: :uint16}
      end
      
      class PrintGetPrinterList < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :listCount, {type: :uint32},
            :pad2, {size: 20, type: :uint8},
            :printers, {length_field: :listCount, type: Printer, kind: :list}
      end
      
      class PrintGetContext < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :context, {type: :uint32}
      end
      
      class PrintGetScreenOfContext < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :root, {type: :uint32}
      end
      
      class PrintGetDocumentData < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :status_code, {type: :uint32},
            :finished_flag, {type: :uint32},
            :dataLen, {type: :uint32},
            :pad2, {size: 12, type: :uint8},
            :data, {length_field: :dataLen, type: :uint8, kind: :list}
      end
      
      class PrintInputSelected < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :event, {type: :uint32, kind: :map},
            :all_events, {type: :uint32, kind: :map}
      end
      
      class PrintGetAttributes < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :stringLen, {type: :uint32},
            :pad2, {size: 20, type: :uint8},
            :attributes, {type: :char}
      end
      
      class PrintGetOneAttributes < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :valueLen, {type: :uint32},
            :pad2, {size: 20, type: :uint8},
            :value, {length_field: :valueLen, type: :char, kind: :string}
      end
      
      class PrintGetPageDimensions < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :width, {type: :uint16},
            :height, {type: :uint16},
            :offset_x, {type: :uint16},
            :offset_y, {type: :uint16},
            :reproducible_width, {type: :uint16},
            :reproducible_height, {type: :uint16}
      end
      
      class PrintQueryScreens < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :listCount, {type: :uint32},
            :pad2, {size: 20, type: :uint8},
            :roots, {length_field: :listCount, type: :uint32, kind: :list}
      end
      
      class PrintSetImageResolution < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :status, {type: :bool},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :previous_resolutions, {type: :uint16}
      end
      
      class PrintGetImageResolution < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :image_resolution, {type: :uint16}
      end
      
    end
  end
end
