#
# This file was auto-generated. Do not edit.
#

module Xrb
  module XFixes
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

      class GetCursorImage < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :x, {type: :int16},
            :y, {type: :int16},
            :width, {type: :uint16},
            :height, {type: :uint16},
            :xhot, {type: :uint16},
            :yhot, {type: :uint16},
            :cursor_serial, {type: :uint32},
            :pad2, {size: 8, type: :uint8},
            :cursor_image, {type: :uint32, length_expr: '(width * height)'}
      end

      class FetchRegion < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :extents, {type: :RECTANGLE},
            :pad2, {size: 16, type: :uint8},
            :rectangles, {type: :RECTANGLE, length_expr: '(length / 2)'}
      end

      class GetCursorName < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :atom, {type: :uint32},
            :nbytes, {type: :uint16},
            :pad2, {size: 18, type: :uint8},
            :name, {length_field: :nbytes, type: :char, kind: :string}
      end

      class GetCursorImageAndName < Xrb::Message
        layout \
            :response_type, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :sequence, {type: :uint16},
            :length, {type: :uint32},
            :x, {type: :int16},
            :y, {type: :int16},
            :width, {type: :uint16},
            :height, {type: :uint16},
            :xhot, {type: :uint16},
            :yhot, {type: :uint16},
            :cursor_serial, {type: :uint32},
            :cursor_atom, {type: :uint32},
            :nbytes, {type: :uint16},
            :pad2, {size: 2, type: :uint8},
            :name, {length_field: :nbytes, type: :char, kind: :string},
            :cursor_image, {type: :uint32, length_expr: '(width * height)'}
      end

    end
  end
end
