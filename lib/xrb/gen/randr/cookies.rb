#
# This file was auto-generated. Do not edit.
#

module Xrb
  module RandR
    module Cookie
      class QueryVersion < Xrb::Message
        layout :sequence, :int
      end
      
      class SetScreenConfig < Xrb::Message
        layout :sequence, :int
      end
      
      class SelectInput < Xrb::Message
        layout :sequence, :int
      end
      
      class GetScreenInfo < Xrb::Message
        layout :sequence, :int
      end
      
      class GetScreenSizeRange < Xrb::Message
        layout :sequence, :int
      end
      
      class SetScreenSize < Xrb::Message
        layout :sequence, :int
      end
      
      class GetScreenResources < Xrb::Message
        layout :sequence, :int
      end
      
      class GetOutputInfo < Xrb::Message
        layout :sequence, :int
      end
      
      class ListOutputProperties < Xrb::Message
        layout :sequence, :int
      end
      
      class QueryOutputProperty < Xrb::Message
        layout :sequence, :int
      end
      
      class ConfigureOutputProperty < Xrb::Message
        layout :sequence, :int
      end
      
      class ChangeOutputProperty < Xrb::Message
        layout :sequence, :int
      end
      
      class DeleteOutputProperty < Xrb::Message
        layout :sequence, :int
      end
      
      class GetOutputProperty < Xrb::Message
        layout :sequence, :int
      end
      
      class CreateMode < Xrb::Message
        layout :sequence, :int
      end
      
      class DestroyMode < Xrb::Message
        layout :sequence, :int
      end
      
      class AddOutputMode < Xrb::Message
        layout :sequence, :int
      end
      
      class DeleteOutputMode < Xrb::Message
        layout :sequence, :int
      end
      
      class GetCrtcInfo < Xrb::Message
        layout :sequence, :int
      end
      
      class SetCrtcConfig < Xrb::Message
        layout :sequence, :int
      end
      
      class GetCrtcGammaSize < Xrb::Message
        layout :sequence, :int
      end
      
      class GetCrtcGamma < Xrb::Message
        layout :sequence, :int
      end
      
      class SetCrtcGamma < Xrb::Message
        layout :sequence, :int
      end
      
      class GetScreenResourcesCurrent < Xrb::Message
        layout :sequence, :int
      end
      
      class SetCrtcTransform < Xrb::Message
        layout :sequence, :int
      end
      
      class GetCrtcTransform < Xrb::Message
        layout :sequence, :int
      end
      
      class GetPanning < Xrb::Message
        layout :sequence, :int
      end
      
      class SetPanning < Xrb::Message
        layout :sequence, :int
      end
      
      class SetOutputPrimary < Xrb::Message
        layout :sequence, :int
      end
      
      class GetOutputPrimary < Xrb::Message
        layout :sequence, :int
      end
      
    end
  end
end
