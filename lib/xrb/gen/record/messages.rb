#
# This file was auto-generated. Do not edit.
#

module Xrb
  module Record
    module Message
      class Context
        attr_accessor :id
        
        def to_wire
          [id].pack('L')
        end
      end
      
      class Range_8 < Xrd::Message
        layout \
            :first, :uint8,
            :last, :uint8
      end
      
      class Range_16 < Xrd::Message
        layout \
            :first, :uint16,
            :last, :uint16
      end
      
      class ExtRange < Xrd::Message
        layout \
            :major, :Range8,
            :minor, :Range16
      end
      
      class Range < Xrd::Message
        layout \
            :core_requests, :Range8,
            :core_replies, :Range8,
            :ext_requests, :ExtRange,
            :ext_replies, :ExtRange,
            :delivered_events, :Range8,
            :device_events, :Range8,
            :errors, :Range8,
            :client_started, :bool,
            :client_died, :bool
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
      
      class ClientInfo < Xrd::Message
        layout \
            :client_resource, :uint32,
            :num_ranges, :uint32
      end
      
    end
  end
end
