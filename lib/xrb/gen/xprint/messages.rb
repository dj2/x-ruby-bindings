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
            :nameLen, {type: :uint32},
            :name, {length_field: :nameLen, type: :char, kind: :string},
            :descLen, {type: :uint32},
            :description, {length_field: :descLen, type: :char, kind: :string}
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
