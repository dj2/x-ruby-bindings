#
# This file was auto-generated. Do not edit.
#

module Xrb
  module XFixes
    module Reply
      class QueryVersion < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [1, :uint8],
            :sequence, :uint16,
            :length, :uint32,
            :major_version, :uint32,
            :minor_version, :uint32,
            :pad2, [16, :uint8]
      end
      
      class GetCursorImage < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [1, :uint8],
            :sequence, :uint16,
            :length, :uint32,
            :x, :int16,
            :y, :int16,
            :width, :uint16,
            :height, :uint16,
            :xhot, :uint16,
            :yhot, :uint16,
            :cursor_serial, :uint32,
            :pad2, [8, :uint8],
            :cursor_image, [:width, :uint32, :list]
      end
      
      class FetchRegion < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [1, :uint8],
            :sequence, :uint16,
            :length, :uint32,
            :extents, :RECTANGLE,
            :pad2, [16, :uint8],
            :rectangles, [:length, Rectangle, :list]
      end
      
      class GetCursorName < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [1, :uint8],
            :sequence, :uint16,
            :length, :uint32,
            :atom, :uint32,
            :nbytes, :uint16,
            :pad2, [18, :uint8],
            :name, [:nbytes, :char, :string]
      end
      
      class GetCursorImageAndName < Xrb::Message
        layout \
            :response_type, :uint8,
            :pad1, [1, :uint8],
            :sequence, :uint16,
            :length, :uint32,
            :x, :int16,
            :y, :int16,
            :width, :uint16,
            :height, :uint16,
            :xhot, :uint16,
            :yhot, :uint16,
            :cursor_serial, :uint32,
            :cursor_atom, :uint32,
            :nbytes, :uint16,
            :pad2, [2, :uint8],
            :name, [:nbytes, :char, :string],
            :cursor_image, [:width, :uint32, :list]
      end
      
    end
  end
end
