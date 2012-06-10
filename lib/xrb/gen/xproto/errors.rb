#
# This file was auto-generated. Do not edit.
#

module Xrb
  module Error
    class Request < Xrb::Message
      OPCODE = 1
      
      layout \
          :response_type, :uint8,
          :error_code, :uint8,
          :sequence, :uint16,
          :bad_value, :uint32,
          :minor_opcode, :uint16,
          :major_opcode, :uint8,
          :pad1, [1, :uint8]
    end
    
    class Match < Xrb::Message
      OPCODE = 8
      
      layout \
          :response_type, :uint8,
          :error_code, :uint8,
          :sequence, :uint16,
          :bad_value, :uint32,
          :minor_opcode, :uint16,
          :major_opcode, :uint8,
          :pad1, [1, :uint8]
    end
    
    class Access < Xrb::Message
      OPCODE = 10
      
      layout \
          :response_type, :uint8,
          :error_code, :uint8,
          :sequence, :uint16,
          :bad_value, :uint32,
          :minor_opcode, :uint16,
          :major_opcode, :uint8,
          :pad1, [1, :uint8]
    end
    
    class Alloc < Xrb::Message
      OPCODE = 11
      
      layout \
          :response_type, :uint8,
          :error_code, :uint8,
          :sequence, :uint16,
          :bad_value, :uint32,
          :minor_opcode, :uint16,
          :major_opcode, :uint8,
          :pad1, [1, :uint8]
    end
    
    class Name < Xrb::Message
      OPCODE = 15
      
      layout \
          :response_type, :uint8,
          :error_code, :uint8,
          :sequence, :uint16,
          :bad_value, :uint32,
          :minor_opcode, :uint16,
          :major_opcode, :uint8,
          :pad1, [1, :uint8]
    end
    
    class Length < Xrb::Message
      OPCODE = 16
      
      layout \
          :response_type, :uint8,
          :error_code, :uint8,
          :sequence, :uint16,
          :bad_value, :uint32,
          :minor_opcode, :uint16,
          :major_opcode, :uint8,
          :pad1, [1, :uint8]
    end
    
    class Implementation < Xrb::Message
      OPCODE = 17
      
      layout \
          :response_type, :uint8,
          :error_code, :uint8,
          :sequence, :uint16,
          :bad_value, :uint32,
          :minor_opcode, :uint16,
          :major_opcode, :uint8,
          :pad1, [1, :uint8]
    end
    
    class Value < Xrb::Message
      OPCODE = 2
      
      layout \
          :response_type, :uint8,
          :error_code, :uint8,
          :sequence, :uint16,
          :bad_value, :uint32,
          :minor_opcode, :uint16,
          :major_opcode, :uint8,
          :pad1, [1, :uint8]
    end
    
    class Window < Xrb::Message
      OPCODE = 3
      
      layout \
          :response_type, :uint8,
          :error_code, :uint8,
          :sequence, :uint16,
          :bad_value, :uint32,
          :minor_opcode, :uint16,
          :major_opcode, :uint8,
          :pad1, [1, :uint8]
    end
    
    class Pixmap < Xrb::Message
      OPCODE = 4
      
      layout \
          :response_type, :uint8,
          :error_code, :uint8,
          :sequence, :uint16,
          :bad_value, :uint32,
          :minor_opcode, :uint16,
          :major_opcode, :uint8,
          :pad1, [1, :uint8]
    end
    
    class Atom < Xrb::Message
      OPCODE = 5
      
      layout \
          :response_type, :uint8,
          :error_code, :uint8,
          :sequence, :uint16,
          :bad_value, :uint32,
          :minor_opcode, :uint16,
          :major_opcode, :uint8,
          :pad1, [1, :uint8]
    end
    
    class Cursor < Xrb::Message
      OPCODE = 6
      
      layout \
          :response_type, :uint8,
          :error_code, :uint8,
          :sequence, :uint16,
          :bad_value, :uint32,
          :minor_opcode, :uint16,
          :major_opcode, :uint8,
          :pad1, [1, :uint8]
    end
    
    class Font < Xrb::Message
      OPCODE = 7
      
      layout \
          :response_type, :uint8,
          :error_code, :uint8,
          :sequence, :uint16,
          :bad_value, :uint32,
          :minor_opcode, :uint16,
          :major_opcode, :uint8,
          :pad1, [1, :uint8]
    end
    
    class Drawable < Xrb::Message
      OPCODE = 9
      
      layout \
          :response_type, :uint8,
          :error_code, :uint8,
          :sequence, :uint16,
          :bad_value, :uint32,
          :minor_opcode, :uint16,
          :major_opcode, :uint8,
          :pad1, [1, :uint8]
    end
    
    class Colormap < Xrb::Message
      OPCODE = 12
      
      layout \
          :response_type, :uint8,
          :error_code, :uint8,
          :sequence, :uint16,
          :bad_value, :uint32,
          :minor_opcode, :uint16,
          :major_opcode, :uint8,
          :pad1, [1, :uint8]
    end
    
    class GContext < Xrb::Message
      OPCODE = 13
      
      layout \
          :response_type, :uint8,
          :error_code, :uint8,
          :sequence, :uint16,
          :bad_value, :uint32,
          :minor_opcode, :uint16,
          :major_opcode, :uint8,
          :pad1, [1, :uint8]
    end
    
    class IdChoice < Xrb::Message
      OPCODE = 14
      
      layout \
          :response_type, :uint8,
          :error_code, :uint8,
          :sequence, :uint16,
          :bad_value, :uint32,
          :minor_opcode, :uint16,
          :major_opcode, :uint8,
          :pad1, [1, :uint8]
    end
    
    class BadSeg < Xrb::Message
      OPCODE = 0
      
      layout \
          :response_type, :uint8,
          :error_code, :uint8,
          :sequence, :uint16,
          :bad_value, :uint32,
          :minor_opcode, :uint16,
          :major_opcode, :uint8,
          :pad1, [1, :uint8]
    end
    
  end
end
