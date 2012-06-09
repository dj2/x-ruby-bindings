#
# This file was auto-generated. Do not edit.
#

module Xrb
  module SELinux
    class Message
      class ListItem < Xrb::Message
        layout \
            :name, :uint32,
            :object_context_len, :uint32,
            :data_context_len, :uint32,
            :object_context, [:object_context_len, :string],
            :data_context, [:data_context_len, :string]
      end
      
    end
  end
end
