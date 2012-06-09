#
# This file was auto-generated. Do not edit.
#

module Xrb
  module Res
    module Message
      class Client < Xrd::Message
        layout \
            :resource_base, :uint32
            :resource_mask, :uint32
      end
      
      class Type < Xrd::Message
        layout \
            :resource_type, :uint32
            :count, :uint32
      end
      
    end
  end
end
