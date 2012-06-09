#
# This file was auto-generated. Do not edit.
#

module Xrb
  module SELinux
    module Message
      class ListItem < Xrd::Message
        layout \
            :name, :uint32
            :object_context_len, :uint32
            :data_context_len, :uint32
      end
      
    end
  end
end
