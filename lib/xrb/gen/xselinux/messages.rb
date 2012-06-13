#
# This file was auto-generated. Do not edit.
#

module Xrb
  module SELinux
    class Message
      class ListItem < Xrb::Message
        layout \
            :name, {type: :uint32},
            :object_context_len, {type: :uint32},
            :data_context_len, {type: :uint32},
            :object_context, {length_field: :object_context_len, type: :char, kind: :string},
            :data_context, {length_field: :data_context_len, type: :char, kind: :string}
      end
      
    end
  end
end
