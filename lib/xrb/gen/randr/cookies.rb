#
# This file was auto-generated. Do not edit.
#

module Xrb
  module RandR
    module Cookie
      class QueryVersion < Xrd::Message
        layout :sequence, :int
      end
      
      class SetScreenConfig < Xrd::Message
        layout :sequence, :int
      end
      
      class SelectInput < Xrd::Message
        layout :sequence, :int
      end
      
      class GetScreenInfo < Xrd::Message
        layout :sequence, :int
      end
      
      class GetScreenSizeRange < Xrd::Message
        layout :sequence, :int
      end
      
      class SetScreenSize < Xrd::Message
        layout :sequence, :int
      end
      
      class GetScreenResources < Xrd::Message
        layout :sequence, :int
      end
      
      class GetOutputInfo < Xrd::Message
        layout :sequence, :int
      end
      
      class ListOutputProperties < Xrd::Message
        layout :sequence, :int
      end
      
      class QueryOutputProperty < Xrd::Message
        layout :sequence, :int
      end
      
      class ConfigureOutputProperty < Xrd::Message
        layout :sequence, :int
      end
      
      class ChangeOutputProperty < Xrd::Message
        layout :sequence, :int
      end
      
      class DeleteOutputProperty < Xrd::Message
        layout :sequence, :int
      end
      
      class GetOutputProperty < Xrd::Message
        layout :sequence, :int
      end
      
      class CreateMode < Xrd::Message
        layout :sequence, :int
      end
      
      class DestroyMode < Xrd::Message
        layout :sequence, :int
      end
      
      class AddOutputMode < Xrd::Message
        layout :sequence, :int
      end
      
      class DeleteOutputMode < Xrd::Message
        layout :sequence, :int
      end
      
      class GetCrtcInfo < Xrd::Message
        layout :sequence, :int
      end
      
      class SetCrtcConfig < Xrd::Message
        layout :sequence, :int
      end
      
      class GetCrtcGammaSize < Xrd::Message
        layout :sequence, :int
      end
      
      class GetCrtcGamma < Xrd::Message
        layout :sequence, :int
      end
      
      class SetCrtcGamma < Xrd::Message
        layout :sequence, :int
      end
      
      class GetScreenResourcesCurrent < Xrd::Message
        layout :sequence, :int
      end
      
      class SetCrtcTransform < Xrd::Message
        layout :sequence, :int
      end
      
      class GetCrtcTransform < Xrd::Message
        layout :sequence, :int
      end
      
      class GetPanning < Xrd::Message
        layout :sequence, :int
      end
      
      class SetPanning < Xrd::Message
        layout :sequence, :int
      end
      
      class SetOutputPrimary < Xrd::Message
        layout :sequence, :int
      end
      
      class GetOutputPrimary < Xrd::Message
        layout :sequence, :int
      end
      
    end
  end
end
