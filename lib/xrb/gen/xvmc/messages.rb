#
# This file was auto-generated. Do not edit.
#

module Xrb
  module XvMC
    module Message
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
      
      class SurfaceInfo < Xrd::Message
        layout \
            :id, :uint32,
            :chroma_format, :uint16,
            :pad0, :uint16,
            :max_width, :uint16,
            :max_height, :uint16,
            :subpicture_max_width, :uint16,
            :subpicture_max_height, :uint16,
            :mc_type, :uint32,
            :flags, :uint32
      end
      
    end
  end
end
