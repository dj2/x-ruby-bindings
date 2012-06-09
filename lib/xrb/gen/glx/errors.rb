#
# This file was auto-generated. Do not edit.
#

module Xrb
  module Glx
    module Error
      class Generic < Xrb::Message
        OPCODE = -1
        
        layout \
            :response_type, :uint8
            :error_code, :uint8
            :sequence, :uint16
            :bad_value, :uint32
            :minor_opcode, :uint16
            :major_opcode, :uint8
            :pad1, [:uint8, 21]
      end
      
      class BadContext < Xrb::Message
        OPCODE = 0
        
        layout \
            :response_type, :uint8
            :error_code, :uint8
            :sequence, :uint16
            :bad_value, :uint32
            :minor_opcode, :uint16
            :major_opcode, :uint8
            :pad1, [:uint8, 21]
      end
      
      class BadContextState < Xrb::Message
        OPCODE = 1
        
        layout \
            :response_type, :uint8
            :error_code, :uint8
            :sequence, :uint16
            :bad_value, :uint32
            :minor_opcode, :uint16
            :major_opcode, :uint8
            :pad1, [:uint8, 21]
      end
      
      class BadDrawable < Xrb::Message
        OPCODE = 2
        
        layout \
            :response_type, :uint8
            :error_code, :uint8
            :sequence, :uint16
            :bad_value, :uint32
            :minor_opcode, :uint16
            :major_opcode, :uint8
            :pad1, [:uint8, 21]
      end
      
      class BadPixmap < Xrb::Message
        OPCODE = 3
        
        layout \
            :response_type, :uint8
            :error_code, :uint8
            :sequence, :uint16
            :bad_value, :uint32
            :minor_opcode, :uint16
            :major_opcode, :uint8
            :pad1, [:uint8, 21]
      end
      
      class BadContextTag < Xrb::Message
        OPCODE = 4
        
        layout \
            :response_type, :uint8
            :error_code, :uint8
            :sequence, :uint16
            :bad_value, :uint32
            :minor_opcode, :uint16
            :major_opcode, :uint8
            :pad1, [:uint8, 21]
      end
      
      class BadCurrentWindow < Xrb::Message
        OPCODE = 5
        
        layout \
            :response_type, :uint8
            :error_code, :uint8
            :sequence, :uint16
            :bad_value, :uint32
            :minor_opcode, :uint16
            :major_opcode, :uint8
            :pad1, [:uint8, 21]
      end
      
      class BadRenderRequest < Xrb::Message
        OPCODE = 6
        
        layout \
            :response_type, :uint8
            :error_code, :uint8
            :sequence, :uint16
            :bad_value, :uint32
            :minor_opcode, :uint16
            :major_opcode, :uint8
            :pad1, [:uint8, 21]
      end
      
      class BadLargeRequest < Xrb::Message
        OPCODE = 7
        
        layout \
            :response_type, :uint8
            :error_code, :uint8
            :sequence, :uint16
            :bad_value, :uint32
            :minor_opcode, :uint16
            :major_opcode, :uint8
            :pad1, [:uint8, 21]
      end
      
      class UnsupportedPrivateRequest < Xrb::Message
        OPCODE = 8
        
        layout \
            :response_type, :uint8
            :error_code, :uint8
            :sequence, :uint16
            :bad_value, :uint32
            :minor_opcode, :uint16
            :major_opcode, :uint8
            :pad1, [:uint8, 21]
      end
      
      class BadFbConfig < Xrb::Message
        OPCODE = 9
        
        layout \
            :response_type, :uint8
            :error_code, :uint8
            :sequence, :uint16
            :bad_value, :uint32
            :minor_opcode, :uint16
            :major_opcode, :uint8
            :pad1, [:uint8, 21]
      end
      
      class BadPbuffer < Xrb::Message
        OPCODE = 10
        
        layout \
            :response_type, :uint8
            :error_code, :uint8
            :sequence, :uint16
            :bad_value, :uint32
            :minor_opcode, :uint16
            :major_opcode, :uint8
            :pad1, [:uint8, 21]
      end
      
      class BadCurrentDrawable < Xrb::Message
        OPCODE = 11
        
        layout \
            :response_type, :uint8
            :error_code, :uint8
            :sequence, :uint16
            :bad_value, :uint32
            :minor_opcode, :uint16
            :major_opcode, :uint8
            :pad1, [:uint8, 21]
      end
      
      class BadWindow < Xrb::Message
        OPCODE = 12
        
        layout \
            :response_type, :uint8
            :error_code, :uint8
            :sequence, :uint16
            :bad_value, :uint32
            :minor_opcode, :uint16
            :major_opcode, :uint8
            :pad1, [:uint8, 21]
      end
      
      class GlxBadProfileArb < Xrb::Message
        OPCODE = 13
        
        layout \
            :response_type, :uint8
            :error_code, :uint8
            :sequence, :uint16
            :bad_value, :uint32
            :minor_opcode, :uint16
            :major_opcode, :uint8
            :pad1, [:uint8, 21]
      end
      
    end
  end
end
