#
# This file was auto-generated. Do not edit.
#

module Xrb
  module Shape
    module Message
      class Op
        attr_accessor :id
        
        def to_wire
          [id].pack('C')
        end
      end
      
      class Kind
        attr_accessor :id
        
        def to_wire
          [id].pack('C')
        end
      end
      
    end
  end
end
