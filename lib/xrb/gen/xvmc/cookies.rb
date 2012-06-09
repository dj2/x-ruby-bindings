#
# This file was auto-generated. Do not edit.
#

module Xrb
  module XvMC
    module Cookie
      class QueryVersion < Xrd::Message
        layout :sequence, :int
      end
      
      class ListSurfaceTypes < Xrd::Message
        layout :sequence, :int
      end
      
      class CreateContext < Xrd::Message
        layout :sequence, :int
      end
      
      class DestroyContext < Xrd::Message
        layout :sequence, :int
      end
      
      class CreateSurface < Xrd::Message
        layout :sequence, :int
      end
      
      class DestroySurface < Xrd::Message
        layout :sequence, :int
      end
      
      class CreateSubpicture < Xrd::Message
        layout :sequence, :int
      end
      
      class DestroySubpicture < Xrd::Message
        layout :sequence, :int
      end
      
      class ListSubpictureTypes < Xrd::Message
        layout :sequence, :int
      end
      
    end
  end
end
