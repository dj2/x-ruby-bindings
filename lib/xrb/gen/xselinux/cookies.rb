#
# This file was auto-generated. Do not edit.
#

module Xrb
  module SELinux
    module Cookie
      class QueryVersion < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class SetDeviceCreateContext < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class GetDeviceCreateContext < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class SetDeviceContext < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class GetDeviceContext < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class SetWindowCreateContext < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class GetWindowCreateContext < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class GetWindowContext < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class SetPropertyCreateContext < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class GetPropertyCreateContext < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class SetPropertyUseContext < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class GetPropertyUseContext < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class GetPropertyContext < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class GetPropertyDataContext < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class ListProperties < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class SetSelectionCreateContext < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class GetSelectionCreateContext < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class SetSelectionUseContext < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class GetSelectionUseContext < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class GetSelectionContext < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class GetSelectionDataContext < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class ListSelections < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class GetClientContext < Xrb::Message
        layout :sequence, {type: :int}
      end
      
    end
  end
end
