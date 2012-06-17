#
# This file was auto-generated. Do not edit.
#

module Xrb
  module Res
    class Message
      class Client < Xrb::Message
        layout \
            :resource_base, {type: :uint32},
            :resource_mask, {type: :uint32}
      end

      class Type < Xrb::Message
        layout \
            :resource_type, {type: :uint32},
            :count, {type: :uint32}
      end

    end
  end
end
