#
# This file was auto-generated. Do not edit.
#

module Xrb
  module Render
    module Error
      class PictFormat < Xrb::Message
        OPCODE = 0
        
        layout \
            :response_type, {type: :uint8},
            :error_code, {type: :uint8},
            :sequence, {type: :uint16}
      end
      
      class Picture < Xrb::Message
        OPCODE = 1
        
        layout \
            :response_type, {type: :uint8},
            :error_code, {type: :uint8},
            :sequence, {type: :uint16}
      end
      
      class PictOp < Xrb::Message
        OPCODE = 2
        
        layout \
            :response_type, {type: :uint8},
            :error_code, {type: :uint8},
            :sequence, {type: :uint16}
      end
      
      class GlyphSet < Xrb::Message
        OPCODE = 3
        
        layout \
            :response_type, {type: :uint8},
            :error_code, {type: :uint8},
            :sequence, {type: :uint16}
      end
      
      class Glyph < Xrb::Message
        OPCODE = 4
        
        layout \
            :response_type, {type: :uint8},
            :error_code, {type: :uint8},
            :sequence, {type: :uint16}
      end
      
      @op_map = {
        0 => PictFormat,
1 => Picture,
2 => PictOp,
3 => GlyphSet,
4 => Glyph
      }
      def self.find(opcode)
        @op_map[opcode]
      end
    end
  end
end
