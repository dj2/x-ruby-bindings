#
# This file was auto-generated. Do not edit.
#

module Xrb
  module Sync
    module Request
      class Initialize < Xrb::Message
        include Xrb::Request

        OPCODE = 0

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :desired_major_version, {type: :uint8},
            :desired_minor_version, {type: :uint8}
        def has_reply?
          true
        end
      end

      class ListSystemCounters < Xrb::Message
        include Xrb::Request

        OPCODE = 1

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16}
        def has_reply?
          true
        end
      end

      class CreateCounter < Xrb::Message
        include Xrb::Request

        OPCODE = 2

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :id, {type: :uint32},
            :initial_value, {type: :INT64}
        def has_reply?
          false
        end
      end

      class DestroyCounter < Xrb::Message
        include Xrb::Request

        OPCODE = 6

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :counter, {type: :uint32}
        def has_reply?
          false
        end
      end

      class QueryCounter < Xrb::Message
        include Xrb::Request

        OPCODE = 5

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :counter, {type: :uint32}
        def has_reply?
          true
        end
      end

      class Await < Xrb::Message
        include Xrb::Request

        OPCODE = 7

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :wait_list, {type: Waitcondition, kind: :list}
        def has_reply?
          false
        end
      end

      class ChangeCounter < Xrb::Message
        include Xrb::Request

        OPCODE = 4

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :counter, {type: :uint32},
            :amount, {type: :INT64}
        def has_reply?
          false
        end
      end

      class SetCounter < Xrb::Message
        include Xrb::Request

        OPCODE = 3

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :counter, {type: :uint32},
            :value, {type: :INT64}
        def has_reply?
          false
        end
      end

      class CreateAlarm < Xrb::Message
        include Xrb::Request

        OPCODE = 8

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :id, {type: :uint32},
            :value, {type: :uint32, kind: :map}
        def has_reply?
          false
        end
      end

      class ChangeAlarm < Xrb::Message
        include Xrb::Request

        OPCODE = 9

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :id, {type: :uint32},
            :value, {type: :uint32, kind: :map}
        def has_reply?
          false
        end
      end

      class DestroyAlarm < Xrb::Message
        include Xrb::Request

        OPCODE = 11

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :alarm, {type: :uint32}
        def has_reply?
          false
        end
      end

      class QueryAlarm < Xrb::Message
        include Xrb::Request

        OPCODE = 10

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :alarm, {type: :uint32}
        def has_reply?
          true
        end
      end

      class SetPriority < Xrb::Message
        include Xrb::Request

        OPCODE = 12

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :id, {type: :uint32},
            :priority, {type: :int32}
        def has_reply?
          false
        end
      end

      class GetPriority < Xrb::Message
        include Xrb::Request

        OPCODE = 13

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :id, {type: :uint32}
        def has_reply?
          true
        end
      end

      class CreateFence < Xrb::Message
        include Xrb::Request

        OPCODE = 14

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :drawable, {type: :uint32},
            :fence, {type: :uint32},
            :initially_triggered, {type: :bool}
        def has_reply?
          false
        end
      end

      class TriggerFence < Xrb::Message
        include Xrb::Request

        OPCODE = 15

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :fence, {type: :uint32}
        def has_reply?
          false
        end
      end

      class ResetFence < Xrb::Message
        include Xrb::Request

        OPCODE = 16

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :fence, {type: :uint32}
        def has_reply?
          false
        end
      end

      class DestroyFence < Xrb::Message
        include Xrb::Request

        OPCODE = 17

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :fence, {type: :uint32}
        def has_reply?
          false
        end
      end

      class QueryFence < Xrb::Message
        include Xrb::Request

        OPCODE = 18

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :fence, {type: :uint32}
        def has_reply?
          true
        end
      end

      class AwaitFence < Xrb::Message
        include Xrb::Request

        OPCODE = 19

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :fence_list, {type: :uint32, kind: :list}
        def has_reply?
          false
        end
      end

    end
  end
end
