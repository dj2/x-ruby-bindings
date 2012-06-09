#
# This file was auto-generated. Do not edit.
#

module Xrb
  module XPrint
    class Message
      class String8
        attr_accessor :id
        
        def to_wire
          [id].pack('C')
        end
      end
      
      class Printer < Xrb::Message
        layout \
            :nameLen, :uint32,
            :name, [:nameLen, :char, :string],
            :descLen, :uint32,
            :description, [:descLen, :char, :string]
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
