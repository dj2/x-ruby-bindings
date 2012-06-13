#
# This file was auto-generated. Do not edit.
#

module Xrb
  module XPrint
    module Cookie
      class PrintQueryVersion < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class PrintGetPrinterList < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class PrintRehashPrinterList < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class CreateContext < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class PrintSetContext < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class PrintGetContext < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class PrintDestroyContext < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class PrintGetScreenOfContext < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class PrintStartJob < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class PrintEndJob < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class PrintStartDoc < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class PrintEndDoc < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class PrintPutDocumentData < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class PrintGetDocumentData < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class PrintStartPage < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class PrintEndPage < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class PrintSelectInput < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class PrintInputSelected < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class PrintGetAttributes < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class PrintGetOneAttributes < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class PrintSetAttributes < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class PrintGetPageDimensions < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class PrintQueryScreens < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class PrintSetImageResolution < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class PrintGetImageResolution < Xrb::Message
        layout :sequence, {type: :int}
      end
      
    end
  end
end
