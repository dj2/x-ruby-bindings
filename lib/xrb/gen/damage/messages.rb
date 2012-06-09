#
# This file was auto-generated. Do not edit.
#

module Xrb
  module Damage
    class Message
      class Damage
        attr_accessor :id
        
        def to_wire
          [id].pack('L')
        end
      end
      
    end
  end
end
