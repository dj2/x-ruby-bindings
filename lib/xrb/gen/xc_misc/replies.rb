#
# This file was auto-generated. Do not edit.
#

module Xrb
  module XCMisc
    module Reply
      class GetVersion < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [:uint8, 1],
            :sequence, :uint16,
            :length, :uint32,
            :server_major_version, :uint16,
            :server_minor_version, :uint16
      end
      
      class GetXidRange < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [:uint8, 1],
            :sequence, :uint16,
            :length, :uint32,
            :start_id, :uint32,
            :count, :uint32
      end
      
      class GetXidList < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [:uint8, 1],
            :sequence, :uint16,
            :length, :uint32,
            :ids_len, :uint32,
            :pad2, [:uint8, 20],
            :ids, [:ids_len, :string]
      end
      
    end
  end
end
