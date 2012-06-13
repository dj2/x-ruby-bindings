#
# This file was auto-generated. Do not edit.
#

module Xrb
  module Record
    class Message
      class Context
        attr_accessor :id
        
        def to_wire
          [id].pack('L')
        end
      end
      
      class Range_8 < Xrb::Message
        layout \
            :first, {type: :uint8},
            :last, {type: :uint8}
      end
      
      class Range_16 < Xrb::Message
        layout \
            :first, {type: :uint16},
            :last, {type: :uint16}
      end
      
      class ExtRange < Xrb::Message
        layout \
            :major, {type: :Range8},
            :minor, {type: :Range16}
      end
      
      class Range < Xrb::Message
        layout \
            :core_requests, {type: :Range8},
            :core_replies, {type: :Range8},
            :ext_requests, {type: :ExtRange},
            :ext_replies, {type: :ExtRange},
            :delivered_events, {type: :Range8},
            :device_events, {type: :Range8},
            :errors, {type: :Range8},
            :client_started, {type: :bool},
            :client_died, {type: :bool}
      end
      
      class ElementHeader
        attr_accessor :id
        
        def to_wire
          [id].pack('C')
        end
      end
      
      class ClientSpec
        attr_accessor :id
        
        def to_wire
          [id].pack('L')
        end
      end
      
      class ClientInfo < Xrb::Message
        layout \
            :client_resource, {type: :uint32},
            :num_ranges, {type: :uint32},
            :ranges, {length_field: :num_ranges, type: Range, kind: :list}
      end
      
    end
  end
end
