#
# This file was auto-generated. Do not edit.
#

module Xrb
  module XFixes
    class Message
      class Region
        attr_accessor :id

        def to_wire
          [id].pack('L')
        end
      end

    end
  end
end
