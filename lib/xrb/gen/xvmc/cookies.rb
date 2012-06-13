#
# This file was auto-generated. Do not edit.
#

module Xrb
  module XvMC
    module Cookie
      class QueryVersion < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class ListSurfaceTypes < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class CreateContext < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class DestroyContext < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class CreateSurface < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class DestroySurface < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class CreateSubpicture < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class DestroySubpicture < Xrb::Message
        layout :sequence, {type: :int}
      end
      
      class ListSubpictureTypes < Xrb::Message
        layout :sequence, {type: :int}
      end
      
    end
  end
end
