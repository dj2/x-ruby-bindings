#
# This file was auto-generated. Do not edit.
#

module Xrb
  module Render
    module Error
      class PictFormat < Xrb::Message
        OPCODE = 0
        
        layout \
            :response_type, :uint8
            :error_code, :uint8
            :sequence, :uint16
      end
      
      class Picture < Xrb::Message
        OPCODE = 1
        
        layout \
            :response_type, :uint8
            :error_code, :uint8
            :sequence, :uint16
      end
      
      class PictOp < Xrb::Message
        OPCODE = 2
        
        layout \
            :response_type, :uint8
            :error_code, :uint8
            :sequence, :uint16
      end
      
      class GlyphSet < Xrb::Message
        OPCODE = 3
        
        layout \
            :response_type, :uint8
            :error_code, :uint8
            :sequence, :uint16
      end
      
      class Glyph < Xrb::Message
        OPCODE = 4
        
        layout \
            :response_type, :uint8
            :error_code, :uint8
            :sequence, :uint16
      end
      
    end
  end
end
