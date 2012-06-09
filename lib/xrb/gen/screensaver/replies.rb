#
# This file was auto-generated. Do not edit.
#

module Xrb
  module ScreenSaver
    module Reply
      class QueryVersion < Xrb::Message
        layout \
            :response_type, :uint8
            :pad1, [:uint8, 1]
            :sequence, :uint16
            :length, :uint32
            :server_major_version, :uint16
            :server_minor_version, :uint16
            :pad2, [:uint8, 20]
      end
      
      class QueryInfo < Xrb::Message
        layout \
            :response_type, :uint8
            :state, :uint8
            :sequence, :uint16
            :length, :uint32
            :saver_window, :uint32
            :ms_until_server, :uint32
            :ms_since_user_input, :uint32
            :event_mask, :uint32
            :kind, :uint8
            :pad1, [:uint8, 7]
      end
      
    end
  end
end
