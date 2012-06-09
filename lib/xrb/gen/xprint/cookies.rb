#
# This file was auto-generated. Do not edit.
#

module Xrb
  module XPrint
    module Cookie
      class PrintQueryVersion < Xrd::Message
        layout :sequence, :int
      end
      
      class PrintGetPrinterList < Xrd::Message
        layout :sequence, :int
      end
      
      class PrintRehashPrinterList < Xrd::Message
        layout :sequence, :int
      end
      
      class CreateContext < Xrd::Message
        layout :sequence, :int
      end
      
      class PrintSetContext < Xrd::Message
        layout :sequence, :int
      end
      
      class PrintGetContext < Xrd::Message
        layout :sequence, :int
      end
      
      class PrintDestroyContext < Xrd::Message
        layout :sequence, :int
      end
      
      class PrintGetScreenOfContext < Xrd::Message
        layout :sequence, :int
      end
      
      class PrintStartJob < Xrd::Message
        layout :sequence, :int
      end
      
      class PrintEndJob < Xrd::Message
        layout :sequence, :int
      end
      
      class PrintStartDoc < Xrd::Message
        layout :sequence, :int
      end
      
      class PrintEndDoc < Xrd::Message
        layout :sequence, :int
      end
      
      class PrintPutDocumentData < Xrd::Message
        layout :sequence, :int
      end
      
      class PrintGetDocumentData < Xrd::Message
        layout :sequence, :int
      end
      
      class PrintStartPage < Xrd::Message
        layout :sequence, :int
      end
      
      class PrintEndPage < Xrd::Message
        layout :sequence, :int
      end
      
      class PrintSelectInput < Xrd::Message
        layout :sequence, :int
      end
      
      class PrintInputSelected < Xrd::Message
        layout :sequence, :int
      end
      
      class PrintGetAttributes < Xrd::Message
        layout :sequence, :int
      end
      
      class PrintGetOneAttributes < Xrd::Message
        layout :sequence, :int
      end
      
      class PrintSetAttributes < Xrd::Message
        layout :sequence, :int
      end
      
      class PrintGetPageDimensions < Xrd::Message
        layout :sequence, :int
      end
      
      class PrintQueryScreens < Xrd::Message
        layout :sequence, :int
      end
      
      class PrintSetImageResolution < Xrd::Message
        layout :sequence, :int
      end
      
      class PrintGetImageResolution < Xrd::Message
        layout :sequence, :int
      end
      
    end
  end
end
