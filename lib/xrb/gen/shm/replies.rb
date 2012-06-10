#
# This file was auto-generated. Do not edit.
#

module Xrb
  module Shm
    module Reply
      class QueryVersion < Xrb::Message
        layout \
            :response_type, :uint8,
            :shared_pixmaps, :bool,
            :sequence, :uint16,
            :length, :uint32,
            :major_version, :uint16,
            :minor_version, :uint16,
            :uid, :uint16,
            :gid, :uint16,
            :pixmap_format, :uint8,
            :pad1, [15, :uint8]
      end
      
      class GetImage < Xrb::Message
        layout \
            :response_type, :uint8,
            :depth, :uint8,
            :sequence, :uint16,
            :length, :uint32,
            :visual, :uint32,
            :size, :uint32
      end
      
    end
  end
end
