#
# This file was auto-generated. Do not edit.
#

module Xrb
  module Sync
    class Message
      class Alarm
        attr_accessor :id

        def to_wire
          [id].pack('L')
        end
      end

      class Counter
        attr_accessor :id

        def to_wire
          [id].pack('L')
        end
      end

      class Fence
        attr_accessor :id

        def to_wire
          [id].pack('L')
        end
      end

      class Int64 < Xrb::Message
        layout \
            :hi, {type: :int32},
            :lo, {type: :uint32}
      end

      class Systemcounter < Xrb::Message
        layout \
            :counter, {type: :uint32},
            :resolution, {type: :INT64},
            :name_len, {type: :uint16},
            :name, {length_field: :name_len, type: :char, kind: :string}
      end

      class Trigger < Xrb::Message
        layout \
            :counter, {type: :uint32},
            :wait_type, {type: :uint32},
            :wait_value, {type: :INT64},
            :test_type, {type: :uint32}
      end

      class Waitcondition < Xrb::Message
        layout \
            :trigger, {type: :TRIGGER},
            :event_threshold, {type: :INT64}
      end

    end
  end
end
