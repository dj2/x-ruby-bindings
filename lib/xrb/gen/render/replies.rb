#
# This file was auto-generated. Do not edit.
#

module Xrb
  module Render
    module Reply
      class QueryVersion < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :major_version, {type: :uint32},
            :minor_version, {type: :uint32},
            :pad2, {size: 16, type: :uint8}
      end
      
      class QueryPictFormats < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :num_formats, {type: :uint32},
            :num_screens, {type: :uint32},
            :num_depths, {type: :uint32},
            :num_visuals, {type: :uint32},
            :num_subpixel, {type: :uint32},
            :pad2, {size: 4, type: :uint8},
            :formats, {length_field: :num_formats, type: Pictforminfo, kind: :list},
            :screens, {length_field: :num_screens, type: Pictscreen, kind: :list},
            :subpixels, {length_field: :num_subpixel, type: :uint32, kind: :list}
      end
      
      class QueryPictIndexValues < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :num_values, {type: :uint32},
            :pad2, {size: 20, type: :uint8},
            :values, {length_field: :num_values, type: Indexvalue, kind: :list}
      end
      
      class QueryFilters < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :num_aliases, {type: :uint32},
            :num_filters, {type: :uint32},
            :pad2, {size: 16, type: :uint8},
            :aliases, {length_field: :num_aliases, type: :uint16, kind: :list},
            :filters, {length_field: :num_filters, type: Str, kind: :list}
      end
      
    end
  end
end
