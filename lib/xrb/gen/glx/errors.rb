#
# This file was auto-generated. Do not edit.
#

module Xrb
  module Glx
    module Error
      class Generic < Xrb::Message
        OPCODE = -1
        
        layout \
            :response_type, {type: :uint8},
            :error_code, {type: :uint8},
            :sequence, {type: :uint16},
            :bad_value, {type: :uint32},
            :minor_opcode, {type: :uint16},
            :major_opcode, {type: :uint8},
            :pad1, {size: 21, type: :uint8}
      end
      
      class BadContext < Xrb::Message
        OPCODE = 0
        
        layout \
            :response_type, {type: :uint8},
            :error_code, {type: :uint8},
            :sequence, {type: :uint16},
            :bad_value, {type: :uint32},
            :minor_opcode, {type: :uint16},
            :major_opcode, {type: :uint8},
            :pad1, {size: 21, type: :uint8}
      end
      
      class BadContextState < Xrb::Message
        OPCODE = 1
        
        layout \
            :response_type, {type: :uint8},
            :error_code, {type: :uint8},
            :sequence, {type: :uint16},
            :bad_value, {type: :uint32},
            :minor_opcode, {type: :uint16},
            :major_opcode, {type: :uint8},
            :pad1, {size: 21, type: :uint8}
      end
      
      class BadDrawable < Xrb::Message
        OPCODE = 2
        
        layout \
            :response_type, {type: :uint8},
            :error_code, {type: :uint8},
            :sequence, {type: :uint16},
            :bad_value, {type: :uint32},
            :minor_opcode, {type: :uint16},
            :major_opcode, {type: :uint8},
            :pad1, {size: 21, type: :uint8}
      end
      
      class BadPixmap < Xrb::Message
        OPCODE = 3
        
        layout \
            :response_type, {type: :uint8},
            :error_code, {type: :uint8},
            :sequence, {type: :uint16},
            :bad_value, {type: :uint32},
            :minor_opcode, {type: :uint16},
            :major_opcode, {type: :uint8},
            :pad1, {size: 21, type: :uint8}
      end
      
      class BadContextTag < Xrb::Message
        OPCODE = 4
        
        layout \
            :response_type, {type: :uint8},
            :error_code, {type: :uint8},
            :sequence, {type: :uint16},
            :bad_value, {type: :uint32},
            :minor_opcode, {type: :uint16},
            :major_opcode, {type: :uint8},
            :pad1, {size: 21, type: :uint8}
      end
      
      class BadCurrentWindow < Xrb::Message
        OPCODE = 5
        
        layout \
            :response_type, {type: :uint8},
            :error_code, {type: :uint8},
            :sequence, {type: :uint16},
            :bad_value, {type: :uint32},
            :minor_opcode, {type: :uint16},
            :major_opcode, {type: :uint8},
            :pad1, {size: 21, type: :uint8}
      end
      
      class BadRenderRequest < Xrb::Message
        OPCODE = 6
        
        layout \
            :response_type, {type: :uint8},
            :error_code, {type: :uint8},
            :sequence, {type: :uint16},
            :bad_value, {type: :uint32},
            :minor_opcode, {type: :uint16},
            :major_opcode, {type: :uint8},
            :pad1, {size: 21, type: :uint8}
      end
      
      class BadLargeRequest < Xrb::Message
        OPCODE = 7
        
        layout \
            :response_type, {type: :uint8},
            :error_code, {type: :uint8},
            :sequence, {type: :uint16},
            :bad_value, {type: :uint32},
            :minor_opcode, {type: :uint16},
            :major_opcode, {type: :uint8},
            :pad1, {size: 21, type: :uint8}
      end
      
      class UnsupportedPrivateRequest < Xrb::Message
        OPCODE = 8
        
        layout \
            :response_type, {type: :uint8},
            :error_code, {type: :uint8},
            :sequence, {type: :uint16},
            :bad_value, {type: :uint32},
            :minor_opcode, {type: :uint16},
            :major_opcode, {type: :uint8},
            :pad1, {size: 21, type: :uint8}
      end
      
      class BadFbConfig < Xrb::Message
        OPCODE = 9
        
        layout \
            :response_type, {type: :uint8},
            :error_code, {type: :uint8},
            :sequence, {type: :uint16},
            :bad_value, {type: :uint32},
            :minor_opcode, {type: :uint16},
            :major_opcode, {type: :uint8},
            :pad1, {size: 21, type: :uint8}
      end
      
      class BadPbuffer < Xrb::Message
        OPCODE = 10
        
        layout \
            :response_type, {type: :uint8},
            :error_code, {type: :uint8},
            :sequence, {type: :uint16},
            :bad_value, {type: :uint32},
            :minor_opcode, {type: :uint16},
            :major_opcode, {type: :uint8},
            :pad1, {size: 21, type: :uint8}
      end
      
      class BadCurrentDrawable < Xrb::Message
        OPCODE = 11
        
        layout \
            :response_type, {type: :uint8},
            :error_code, {type: :uint8},
            :sequence, {type: :uint16},
            :bad_value, {type: :uint32},
            :minor_opcode, {type: :uint16},
            :major_opcode, {type: :uint8},
            :pad1, {size: 21, type: :uint8}
      end
      
      class BadWindow < Xrb::Message
        OPCODE = 12
        
        layout \
            :response_type, {type: :uint8},
            :error_code, {type: :uint8},
            :sequence, {type: :uint16},
            :bad_value, {type: :uint32},
            :minor_opcode, {type: :uint16},
            :major_opcode, {type: :uint8},
            :pad1, {size: 21, type: :uint8}
      end
      
      class GlxBadProfileArb < Xrb::Message
        OPCODE = 13
        
        layout \
            :response_type, {type: :uint8},
            :error_code, {type: :uint8},
            :sequence, {type: :uint16},
            :bad_value, {type: :uint32},
            :minor_opcode, {type: :uint16},
            :major_opcode, {type: :uint8},
            :pad1, {size: 21, type: :uint8}
      end
      
      @op_map = {
        -1 => Generic,
0 => BadContext,
1 => BadContextState,
2 => BadDrawable,
3 => BadPixmap,
4 => BadContextTag,
5 => BadCurrentWindow,
6 => BadRenderRequest,
7 => BadLargeRequest,
8 => UnsupportedPrivateRequest,
9 => BadFbConfig,
10 => BadPbuffer,
11 => BadCurrentDrawable,
12 => BadWindow,
13 => GlxBadProfileArb
      }
      def self.find(opcode)
        @op_map[opcode]
      end
    end
  end
end
