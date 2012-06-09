#
# This file was auto-generated. Do not edit.
#

module Xrb
  module Render
    module Reply
      class QueryVersion < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [:uint8, 1],
            :sequence, :uint16,
            :length, :uint32,
            :major_version, :uint32,
            :minor_version, :uint32,
            :pad2, [:uint8, 16]
      end
      
      class QueryPictFormats < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [:uint8, 1],
            :sequence, :uint16,
            :length, :uint32,
            :num_formats, :uint32,
            :num_screens, :uint32,
            :num_depths, :uint32,
            :num_visuals, :uint32,
            :num_subpixel, :uint32,
            :pad2, [:uint8, 4]
      end
      
      class QueryPictIndexValues < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [:uint8, 1],
            :sequence, :uint16,
            :length, :uint32,
            :num_values, :uint32,
            :pad2, [:uint8, 20]
      end
      
      class QueryFilters < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [:uint8, 1],
            :sequence, :uint16,
            :length, :uint32,
            :num_aliases, :uint32,
            :num_filters, :uint32,
            :pad2, [:uint8, 16]
      end
      
    end
  end
end
