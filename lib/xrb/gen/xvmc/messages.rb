#
# This file was auto-generated. Do not edit.
#

module Xrb
  module XvMC
    class Message
      class Context
        attr_accessor :id
        
        def to_wire
          [id].pack('L')
        end
      end
      
      class Surface
        attr_accessor :id
        
        def to_wire
          [id].pack('L')
        end
      end
      
      class Subpicture
        attr_accessor :id
        
        def to_wire
          [id].pack('L')
        end
      end
      
      class SurfaceInfo < Xrb::Message
        layout \
            :id, {type: :uint32},
            :chroma_format, {type: :uint16},
            :pad0, {type: :uint16},
            :max_width, {type: :uint16},
            :max_height, {type: :uint16},
            :subpicture_max_width, {type: :uint16},
            :subpicture_max_height, {type: :uint16},
            :mc_type, {type: :uint32},
            :flags, {type: :uint32}
      end
      
    end
  end
end
