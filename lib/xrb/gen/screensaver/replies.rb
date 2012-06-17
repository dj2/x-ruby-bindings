#
# This file was auto-generated. Do not edit.
#

module Xrb
  module ScreenSaver
    module Reply
      class QueryVersion < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :server_major_version, {type: :uint16},
            :server_minor_version, {type: :uint16},
            :pad2, {size: 20, type: :uint8}
      end

      class QueryInfo < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :state, {type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :saver_window, {type: :uint32},
            :ms_until_server, {type: :uint32},
            :ms_since_user_input, {type: :uint32},
            :event_mask, {type: :uint32},
            :kind, {type: :byte},
            :pad1, {size: 7, type: :uint8}
      end

    end
  end
end
