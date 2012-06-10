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
            :pad2, [:uint8, 4],
            :formats, [:num_formats, :PICTFORMINFO, :list],
            :screens, [:num_screens, :PICTSCREEN, :list],
            :subpixels, [:num_subpixel, :uint32, :list]
      end
      
      class QueryPictIndexValues < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [:uint8, 1],
            :sequence, :uint16,
            :length, :uint32,
            :num_values, :uint32,
            :pad2, [:uint8, 20],
            :values, [:num_values, :INDEXVALUE, :list]
      end
      
      class QueryFilters < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [:uint8, 1],
            :sequence, :uint16,
            :length, :uint32,
            :num_aliases, :uint32,
            :num_filters, :uint32,
            :pad2, [:uint8, 16],
            :aliases, [:num_aliases, :uint16, :list],
            :filters, [:num_filters, :STR, :list]
      end
      
    end
  end
end
