#
# This file was auto-generated. Do not edit.
#

module Xrb
  module Shm
    module Reply
      class QueryVersion < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :shared_pixmaps, {type: :bool},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :major_version, {type: :uint16},
            :minor_version, {type: :uint16},
            :uid, {type: :uint16},
            :gid, {type: :uint16},
            :pixmap_format, {type: :uint8},
            :pad1, {size: 15, type: :uint8}
      end
      
      class GetImage < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :depth, {type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :visual, {type: :uint32},
            :size, {type: :uint32}
      end
      
    end
  end
end
