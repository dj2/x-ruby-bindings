#
# This file was auto-generated. Do not edit.
#

module Xrb
  module Glx
    class Message
      class Pixmap
        attr_accessor :id

        def to_wire
          [id].pack('L')
        end
      end

      class Context
        attr_accessor :id

        def to_wire
          [id].pack('L')
        end
      end

      class Pbuffer
        attr_accessor :id

        def to_wire
          [id].pack('L')
        end
      end

      class Window
        attr_accessor :id

        def to_wire
          [id].pack('L')
        end
      end

      class Fbconfig
        attr_accessor :id

        def to_wire
          [id].pack('L')
        end
      end

      class Drawable
        attr_accessor :id

        def to_wire
          [id].pack('L')
        end
      end

      class Float32
        attr_accessor :id

        def to_wire
          [id].pack('f')
        end
      end

      class Float64
        attr_accessor :id

        def to_wire
          [id].pack('d')
        end
      end

      class Bool32
        attr_accessor :id

        def to_wire
          [id].pack('L')
        end
      end

      class ContextTag
        attr_accessor :id

        def to_wire
          [id].pack('L')
        end
      end

    end
  end
end
