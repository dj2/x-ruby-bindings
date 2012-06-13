#
# This file was auto-generated. Do not edit.
#

module Xrb
  module RandR
    module Cookie
      class QueryVersion < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class SetScreenConfig < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class SelectInput < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class GetScreenInfo < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class GetScreenSizeRange < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class SetScreenSize < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class GetScreenResources < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class GetOutputInfo < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class ListOutputProperties < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class QueryOutputProperty < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class ConfigureOutputProperty < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class ChangeOutputProperty < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class DeleteOutputProperty < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class GetOutputProperty < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class CreateMode < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class DestroyMode < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class AddOutputMode < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class DeleteOutputMode < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class GetCrtcInfo < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class SetCrtcConfig < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class GetCrtcGammaSize < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class GetCrtcGamma < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class SetCrtcGamma < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class GetScreenResourcesCurrent < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class SetCrtcTransform < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class GetCrtcTransform < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class GetPanning < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class SetPanning < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class SetOutputPrimary < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class GetOutputPrimary < Xrb::Message
        layout :sequence, {type: :int}
      end
      
    end
  end
end
