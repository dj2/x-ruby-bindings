#
# This file was auto-generated. Do not edit.
#

module Xrb
  module XPrint
    module Request
      class PrintQueryVersion < Xrb::Message
        OPCODE = 0
        
        layout \
            :major_opcode, :uint8
            :minor_opcode, :uint8
            :length, :uint16
            :major_version, :uint16
            :minor_version, :uint16
      end
      
      class PrintGetPrinterList < Xrb::Message
        OPCODE = 1
        
        layout \
            :major_opcode, :uint8
            :minor_opcode, :uint8
            :length, :uint16
            :listCount, :uint32
            :pad2, [:uint8, 20]
      end
      
      class PrintRehashPrinterList < Xrb::Message
        OPCODE = 20
        
        layout \
            :major_opcode, :uint8
            :minor_opcode, :uint8
            :length, :uint16
      end
      
      class CreateContext < Xrb::Message
        OPCODE = 2
        
        layout \
            :major_opcode, :uint8
            :minor_opcode, :uint8
            :length, :uint16
            :context_id, :uint32
            :printerNameLen, :uint32
            :localeLen, :uint32
      end
      
      class PrintSetContext < Xrb::Message
        OPCODE = 3
        
        layout \
            :major_opcode, :uint8
            :minor_opcode, :uint8
            :length, :uint16
            :context, :uint32
      end
      
      class PrintGetContext < Xrb::Message
        OPCODE = 4
        
        layout \
            :major_opcode, :uint8
            :minor_opcode, :uint8
            :length, :uint16
            :context, :uint32
      end
      
      class PrintDestroyContext < Xrb::Message
        OPCODE = 5
        
        layout \
            :major_opcode, :uint8
            :minor_opcode, :uint8
            :length, :uint16
            :context, :uint32
      end
      
      class PrintGetScreenOfContext < Xrb::Message
        OPCODE = 6
        
        layout \
            :major_opcode, :uint8
            :minor_opcode, :uint8
            :length, :uint16
            :root, :uint32
      end
      
      class PrintStartJob < Xrb::Message
        OPCODE = 7
        
        layout \
            :major_opcode, :uint8
            :minor_opcode, :uint8
            :length, :uint16
            :output_mode, :uint8
      end
      
      class PrintEndJob < Xrb::Message
        OPCODE = 8
        
        layout \
            :major_opcode, :uint8
            :minor_opcode, :uint8
            :length, :uint16
            :cancel, :bool
      end
      
      class PrintStartDoc < Xrb::Message
        OPCODE = 9
        
        layout \
            :major_opcode, :uint8
            :minor_opcode, :uint8
            :length, :uint16
            :driver_mode, :uint8
      end
      
      class PrintEndDoc < Xrb::Message
        OPCODE = 10
        
        layout \
            :major_opcode, :uint8
            :minor_opcode, :uint8
            :length, :uint16
            :cancel, :bool
      end
      
      class PrintPutDocumentData < Xrb::Message
        OPCODE = 11
        
        layout \
            :major_opcode, :uint8
            :minor_opcode, :uint8
            :length, :uint16
            :drawable, :uint32
            :len_data, :uint32
            :len_fmt, :uint16
            :len_options, :uint16
      end
      
      class PrintGetDocumentData < Xrb::Message
        OPCODE = 12
        
        layout \
            :major_opcode, :uint8
            :minor_opcode, :uint8
            :length, :uint16
            :status_code, :uint32
            :finished_flag, :uint32
            :dataLen, :uint32
            :pad2, [:uint8, 12]
      end
      
      class PrintStartPage < Xrb::Message
        OPCODE = 13
        
        layout \
            :major_opcode, :uint8
            :minor_opcode, :uint8
            :length, :uint16
            :window, :uint32
      end
      
      class PrintEndPage < Xrb::Message
        OPCODE = 14
        
        layout \
            :major_opcode, :uint8
            :minor_opcode, :uint8
            :length, :uint16
            :cancel, :bool
            :pad1, [:uint8, 3]
      end
      
      class PrintSelectInput < Xrb::Message
        OPCODE = 15
        
        layout \
            :major_opcode, :uint8
            :minor_opcode, :uint8
            :length, :uint16
            :context, :uint32
            :event_mask, :uint32
      end
      
      class PrintInputSelected < Xrb::Message
        OPCODE = 16
        
        layout \
            :major_opcode, :uint8
            :minor_opcode, :uint8
            :length, :uint16
            :event_mask, :uint32
            :all_events_mask, :uint32
      end
      
      class PrintGetAttributes < Xrb::Message
        OPCODE = 17
        
        layout \
            :major_opcode, :uint8
            :minor_opcode, :uint8
            :length, :uint16
            :stringLen, :uint32
            :pad2, [:uint8, 20]
            :attributes, :char
      end
      
      class PrintGetOneAttributes < Xrb::Message
        OPCODE = 19
        
        layout \
            :major_opcode, :uint8
            :minor_opcode, :uint8
            :length, :uint16
            :valueLen, :uint32
            :pad2, [:uint8, 20]
      end
      
      class PrintSetAttributes < Xrb::Message
        OPCODE = 18
        
        layout \
            :major_opcode, :uint8
            :minor_opcode, :uint8
            :length, :uint16
            :context, :uint32
            :stringLen, :uint32
            :pool, :uint8
            :rule, :uint8
            :pad1, [:uint8, 2]
      end
      
      class PrintGetPageDimensions < Xrb::Message
        OPCODE = 21
        
        layout \
            :major_opcode, :uint8
            :minor_opcode, :uint8
            :length, :uint16
            :width, :uint16
            :height, :uint16
            :offset_x, :uint16
            :offset_y, :uint16
            :reproducible_width, :uint16
            :reproducible_height, :uint16
      end
      
      class PrintQueryScreens < Xrb::Message
        OPCODE = 22
        
        layout \
            :major_opcode, :uint8
            :minor_opcode, :uint8
            :length, :uint16
            :listCount, :uint32
            :pad2, [:uint8, 20]
      end
      
      class PrintSetImageResolution < Xrb::Message
        OPCODE = 23
        
        layout \
            :major_opcode, :uint8
            :minor_opcode, :uint8
            :length, :uint16
            :previous_resolutions, :uint16
      end
      
      class PrintGetImageResolution < Xrb::Message
        OPCODE = 24
        
        layout \
            :major_opcode, :uint8
            :minor_opcode, :uint8
            :length, :uint16
            :image_resolution, :uint16
      end
      
    end
  end
end
