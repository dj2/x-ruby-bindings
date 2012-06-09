#
# This file was auto-generated. Do not edit.
#

module Xrb
  module XPrint
    module Message
      class String8
        attr_accessor :id
        
        def to_wire
          [id].pack('C')
        end
      end
      
      class Printer < Xrd::Message
        layout \
            :nameLen, :uint32,
            :descLen, :uint32
      end
      
      class Pcontext
        attr_accessor :id
        
        def to_wire
          [id].pack('L')
        end
      end
      
    end
  end
end
