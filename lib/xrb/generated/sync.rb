#
# This file auto-generated. Do not edit.
#

require 'ffi'
require 'xrb/xproto'
class Xrb
  class Sync
    extend FFI::Library
    ffi_lib 'sync'
    MAJOR_VERSION = 3
    MINOR_VERSION = 1
    typedef :uint32, :alarm_t
    class AlarmIterator < FFI::Struct
      layout \
          :data, :window_t,
          :rem, :int,
          :indent, :int
    end
    attach_function :alarm_next, :xcb_alarm_next, [:pointer], :void
    attach_function :alarm_end, :xcb_alarm_end, [:pointer], GenericIterator
    ALARMSTATE_ACTIVE = 1
    ALARMSTATE_INACTIVE = 2
    ALARMSTATE_DESTROYED = 3
    typedef :uint32, :counter_t
    class CounterIterator < FFI::Struct
      layout \
          :data, :window_t,
          :rem, :int,
          :indent, :int
    end
    attach_function :counter_next, :xcb_counter_next, [:pointer], :void
    attach_function :counter_end, :xcb_counter_end, [:pointer], GenericIterator
    typedef :uint32, :fence_t
    class FenceIterator < FFI::Struct
      layout \
          :data, :window_t,
          :rem, :int,
          :indent, :int
    end
    attach_function :fence_next, :xcb_fence_next, [:pointer], :void
    attach_function :fence_end, :xcb_fence_end, [:pointer], GenericIterator
    TESTTYPE_POSITIVE_TRANSITION = 1
    TESTTYPE_NEGATIVE_TRANSITION = 2
    TESTTYPE_POSITIVE_COMPARISON = 3
    TESTTYPE_NEGATIVE_COMPARISON = 4
    VALUETYPE_ABSOLUTE = 1
    VALUETYPE_RELATIVE = 2
    CA_COUNTER = 1 << 0
    CA_VALUE_TYPE = 1 << 1
    CA_VALUE = 1 << 2
    CA_TEST_TYPE = 1 << 3
    CA_DELTA = 1 << 4
    CA_EVENTS = 1 << 5
    class Int64 < FFI::Struct
      layout \
          :hi, :int32,
          :lo, :uint32
    end

    class Int64Iterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :int64_next, :xcb_int64_next, [:pointer], :void
    attach_function :int64_end, :xcb_int64_end, [:pointer], GenericIterator
    class Systemcounter < FFI::Struct
      layout \
          :counter, :counter_t,
          :resolution, Int64,
          :name_len, :uint16
    end

    class SystemcounterIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :systemcounter_next, :xcb_systemcounter_next, [:pointer], :void
    attach_function :systemcounter_end, :xcb_systemcounter_end, [:pointer], GenericIterator
    attach_function :systemcounter_sizeof, :xcb_systemcounter_sizeof, [:pointer], :int
    attach_function :systemcounter_name, :xcb_systemcounter_name, [:pointer], :pointer
    attach_function :systemcounter_name_length, :xcb_systemcounter_name_length, [:pointer], :int
    class Trigger < FFI::Struct
      layout \
          :counter, :counter_t,
          :wait_type, :uint32,
          :wait_value, Int64,
          :test_type, :uint32
    end

    class TriggerIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :trigger_next, :xcb_trigger_next, [:pointer], :void
    attach_function :trigger_end, :xcb_trigger_end, [:pointer], GenericIterator
    class Waitcondition < FFI::Struct
      layout \
          :trigger, Trigger,
          :event_threshold, Int64
    end

    class WaitconditionIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :waitcondition_next, :xcb_waitcondition_next, [:pointer], :void
    attach_function :waitcondition_end, :xcb_waitcondition_end, [:pointer], GenericIterator
    class CounterNotifyEvent < FFI::Struct
      layout \
          :response_type, :uint8,
          :kind, :uint8,
          :counter, :counter_t,
          :wait_value, Int64,
          :counter_value, Int64,
          :timestamp, :timestamp_t,
          :count, :uint16,
          :destroyed, :bool,
          :pad1, [:uint8, 1]
    end

    class AlarmNotifyEvent < FFI::Struct
      layout \
          :response_type, :uint8,
          :kind, :uint8,
          :alarm, :alarm_t,
          :counter_value, Int64,
          :alarm_value, Int64,
          :timestamp, :timestamp_t,
          :state, :uint8,
          :pad1, [:uint8, 3]
    end

    class CounterError < FFI::Struct
      layout \
          :response_type, :uint8,
          :error_code, :uint8,
          :sequence, :uint16,
          :bad_counter, :uint32,
          :minor_opcode, :uint16,
          :major_opcode, :uint8
    end

    class AlarmError < FFI::Struct
      layout \
          :response_type, :uint8,
          :error_code, :uint8,
          :sequence, :uint16,
          :bad_alarm, :uint32,
          :minor_opcode, :uint16,
          :major_opcode, :uint8
    end

    class InitializeRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :major_version, :uint8,
          :minor_version, :uint8,
          :pad2, [:uint8, 22]
    end

    class InitializeCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :initialize, :xcb_initialize, [:pointer,:uint8,:uint8,:uint8], InitializeCookie
    class InitializeReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :major_version, :uint8,
          :minor_version, :uint8,
          :pad2, [:uint8, 22]
    end

    attach_function :initialize_reply, :xcb_initialize_reply, [:pointer, InitializeCookie, :pointer], :pointer

        
    class ListSystemCountersRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :counters_len, :uint32,
          :pad2, [:uint8, 20]
    end

    class ListSystemCountersCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :list_system_counters, :xcb_list_system_counters, [:pointer,:uint8,:uint32,:uint32], ListSystemCountersCookie
    class ListSystemCountersReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :counters_len, :uint32,
          :pad2, [:uint8, 20]
    end

    attach_function :list_system_counters_reply, :xcb_list_system_counters_reply, [:pointer, ListSystemCountersCookie, :pointer], :pointer

        
    class CreateCounterRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :id, :counter_t,
          :initial_value, Int64
    end

    class CreateCounterCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :create_counter_checked, :xcb_create_counter_checked, [:pointer,:uint8,:counter_t,Int64], CreateCounterCookie
    attach_function :create_counter, :xcb_create_counter, [:pointer,:uint8,:counter_t,Int64], CreateCounterCookie
    class DestroyCounterRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :counter, :counter_t
    end

    class DestroyCounterCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :destroy_counter_checked, :xcb_destroy_counter_checked, [:pointer,:uint8,:counter_t], DestroyCounterCookie
    attach_function :destroy_counter, :xcb_destroy_counter, [:pointer,:uint8,:counter_t], DestroyCounterCookie
    class QueryCounterRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :counter_value, Int64
    end

    class QueryCounterCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :query_counter, :xcb_query_counter, [:pointer,:uint8,Int64], QueryCounterCookie
    class QueryCounterReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :counter_value, Int64
    end

    attach_function :query_counter_reply, :xcb_query_counter_reply, [:pointer, QueryCounterCookie, :pointer], :pointer

        
    class AwaitRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16
    end

    class AwaitCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :await_checked, :xcb_await_checked, [:pointer,:uint8,:uint32], AwaitCookie
    attach_function :await, :xcb_await, [:pointer,:uint8,:uint32], AwaitCookie
    class ChangeCounterRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :counter, :counter_t,
          :amount, Int64
    end

    class ChangeCounterCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :change_counter_checked, :xcb_change_counter_checked, [:pointer,:uint8,:counter_t,Int64], ChangeCounterCookie
    attach_function :change_counter, :xcb_change_counter, [:pointer,:uint8,:counter_t,Int64], ChangeCounterCookie
    class SetCounterRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :counter, :counter_t,
          :value, Int64
    end

    class SetCounterCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :set_counter_checked, :xcb_set_counter_checked, [:pointer,:uint8,:counter_t,Int64], SetCounterCookie
    attach_function :set_counter, :xcb_set_counter, [:pointer,:uint8,:counter_t,Int64], SetCounterCookie
    class CreateAlarmRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :id, :alarm_t,
          :value_mask, :uint32
    end

    class CreateAlarmCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :create_alarm_checked, :xcb_create_alarm_checked, [:pointer,:uint8,:alarm_t,:uint32,:pointer], CreateAlarmCookie
    attach_function :create_alarm, :xcb_create_alarm, [:pointer,:uint8,:alarm_t,:uint32,:pointer], CreateAlarmCookie
    class ChangeAlarmRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :id, :alarm_t,
          :value_mask, :uint32
    end

    class ChangeAlarmCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :change_alarm_checked, :xcb_change_alarm_checked, [:pointer,:uint8,:alarm_t,:uint32,:pointer], ChangeAlarmCookie
    attach_function :change_alarm, :xcb_change_alarm, [:pointer,:uint8,:alarm_t,:uint32,:pointer], ChangeAlarmCookie
    class DestroyAlarmRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :alarm, :alarm_t
    end

    class DestroyAlarmCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :destroy_alarm_checked, :xcb_destroy_alarm_checked, [:pointer,:uint8,:alarm_t], DestroyAlarmCookie
    attach_function :destroy_alarm, :xcb_destroy_alarm, [:pointer,:uint8,:alarm_t], DestroyAlarmCookie
    class QueryAlarmRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :trigger, Trigger,
          :delta, Int64,
          :events, :bool,
          :state, :uint8,
          :pad2, [:uint8, 2]
    end

    class QueryAlarmCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :query_alarm, :xcb_query_alarm, [:pointer,:uint8,Trigger,Int64,:bool,:uint8], QueryAlarmCookie
    class QueryAlarmReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :trigger, Trigger,
          :delta, Int64,
          :events, :bool,
          :state, :uint8,
          :pad2, [:uint8, 2]
    end

    attach_function :query_alarm_reply, :xcb_query_alarm_reply, [:pointer, QueryAlarmCookie, :pointer], :pointer

        
    class SetPriorityRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :id, :uint32,
          :priority, :int32
    end

    class SetPriorityCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :set_priority_checked, :xcb_set_priority_checked, [:pointer,:uint8,:uint32,:int32], SetPriorityCookie
    attach_function :set_priority, :xcb_set_priority, [:pointer,:uint8,:uint32,:int32], SetPriorityCookie
    class GetPriorityRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :priority, :int32
    end

    class GetPriorityCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :get_priority, :xcb_get_priority, [:pointer,:uint8,:int32], GetPriorityCookie
    class GetPriorityReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :priority, :int32
    end

    attach_function :get_priority_reply, :xcb_get_priority_reply, [:pointer, GetPriorityCookie, :pointer], :pointer

        
    class CreateFenceRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :drawable, :drawable_t,
          :fence, :fence_t,
          :initially_triggered, :bool
    end

    class CreateFenceCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :create_fence_checked, :xcb_create_fence_checked, [:pointer,:uint8,:drawable_t,:fence_t,:bool], CreateFenceCookie
    attach_function :create_fence, :xcb_create_fence, [:pointer,:uint8,:drawable_t,:fence_t,:bool], CreateFenceCookie
    class TriggerFenceRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :fence, :fence_t
    end

    class TriggerFenceCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :trigger_fence_checked, :xcb_trigger_fence_checked, [:pointer,:uint8,:fence_t], TriggerFenceCookie
    attach_function :trigger_fence, :xcb_trigger_fence, [:pointer,:uint8,:fence_t], TriggerFenceCookie
    class ResetFenceRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :fence, :fence_t
    end

    class ResetFenceCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :reset_fence_checked, :xcb_reset_fence_checked, [:pointer,:uint8,:fence_t], ResetFenceCookie
    attach_function :reset_fence, :xcb_reset_fence, [:pointer,:uint8,:fence_t], ResetFenceCookie
    class DestroyFenceRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :fence, :fence_t
    end

    class DestroyFenceCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :destroy_fence_checked, :xcb_destroy_fence_checked, [:pointer,:uint8,:fence_t], DestroyFenceCookie
    attach_function :destroy_fence, :xcb_destroy_fence, [:pointer,:uint8,:fence_t], DestroyFenceCookie
    class QueryFenceRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :triggered, :bool,
          :pad2, [:uint8, 23]
    end

    class QueryFenceCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :query_fence, :xcb_query_fence, [:pointer,:uint8,:bool], QueryFenceCookie
    class QueryFenceReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :triggered, :bool,
          :pad2, [:uint8, 23]
    end

    attach_function :query_fence_reply, :xcb_query_fence_reply, [:pointer, QueryFenceCookie, :pointer], :pointer

        
    class AwaitFenceRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16
    end

    class AwaitFenceCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :await_fence_checked, :xcb_await_fence_checked, [:pointer,:uint8,:uint32], AwaitFenceCookie
    attach_function :await_fence, :xcb_await_fence, [:pointer,:uint8,:uint32], AwaitFenceCookie
  end
end
