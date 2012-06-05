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
    typedef :uint32, :xrb_alarm_t
    class XrbAlarmIterator < FFI::Struct
      layout \
          :data, :xrb_window_t,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_alarm_next, [:pointer], :void
    attach_function :xcb_alarm_end, [:pointer], XrbGenericIterator
    XRB_ALARMSTATE_ACTIVE = 1
    XRB_ALARMSTATE_INACTIVE = 2
    XRB_ALARMSTATE_DESTROYED = 3
    typedef :uint32, :xrb_counter_t
    class XrbCounterIterator < FFI::Struct
      layout \
          :data, :xrb_window_t,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_counter_next, [:pointer], :void
    attach_function :xcb_counter_end, [:pointer], XrbGenericIterator
    typedef :uint32, :xrb_fence_t
    class XrbFenceIterator < FFI::Struct
      layout \
          :data, :xrb_window_t,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_fence_next, [:pointer], :void
    attach_function :xcb_fence_end, [:pointer], XrbGenericIterator
    XRB_TESTTYPE_POSITIVE_TRANSITION = 1
    XRB_TESTTYPE_NEGATIVE_TRANSITION = 2
    XRB_TESTTYPE_POSITIVE_COMPARISON = 3
    XRB_TESTTYPE_NEGATIVE_COMPARISON = 4
    XRB_VALUETYPE_ABSOLUTE = 1
    XRB_VALUETYPE_RELATIVE = 2
    XRB_CA_COUNTER = 1 << 0
    XRB_CA_VALUE_TYPE = 1 << 1
    XRB_CA_VALUE = 1 << 2
    XRB_CA_TEST_TYPE = 1 << 3
    XRB_CA_DELTA = 1 << 4
    XRB_CA_EVENTS = 1 << 5
    class XrbInt64 < FFI::Struct
      layout \
          :hi, :int32,
          :lo, :uint32
    end

    class XrbInt64Iterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_int64_next, [:pointer], :void
    attach_function :xcb_int64_end, [:pointer], XrbGenericIterator
    class XrbSystemcounter < FFI::Struct
      layout \
          :counter, :xrb_counter_t,
          :resolution, XrbInt64,
          :name_len, :uint16
    end

    class XrbSystemcounterIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_systemcounter_next, [:pointer], :void
    attach_function :xcb_systemcounter_end, [:pointer], XrbGenericIterator
    attach_function :xcb_systemcounter_sizeof, [:pointer], :int
    attach_function :xcb_systemcounter_name, [:pointer], :pointer
    attach_function :xcb_systemcounter_name_length, [:pointer], :int
    class XrbTrigger < FFI::Struct
      layout \
          :counter, :xrb_counter_t,
          :wait_type, :uint32,
          :wait_value, XrbInt64,
          :test_type, :uint32
    end

    class XrbTriggerIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_trigger_next, [:pointer], :void
    attach_function :xcb_trigger_end, [:pointer], XrbGenericIterator
    class XrbWaitcondition < FFI::Struct
      layout \
          :trigger, XrbTrigger,
          :event_threshold, XrbInt64
    end

    class XrbWaitconditionIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_waitcondition_next, [:pointer], :void
    attach_function :xcb_waitcondition_end, [:pointer], XrbGenericIterator
    class XrbCounterNotifyEvent < FFI::Struct
      layout \
          :response_type, :uint8,
          :kind, :uint8,
          :counter, :xrb_counter_t,
          :wait_value, XrbInt64,
          :counter_value, XrbInt64,
          :timestamp, :xrb_timestamp_t,
          :count, :uint16,
          :destroyed, :bool,
          :pad1, [:uint8, 1]
    end

    class XrbAlarmNotifyEvent < FFI::Struct
      layout \
          :response_type, :uint8,
          :kind, :uint8,
          :alarm, :xrb_alarm_t,
          :counter_value, XrbInt64,
          :alarm_value, XrbInt64,
          :timestamp, :xrb_timestamp_t,
          :state, :uint8,
          :pad1, [:uint8, 3]
    end

    class XrbCounterError < FFI::Struct
      layout \
          :response_type, :uint8,
          :error_code, :uint8,
          :sequence, :uint16,
          :bad_counter, :uint32,
          :minor_opcode, :uint16,
          :major_opcode, :uint8
    end

    class XrbAlarmError < FFI::Struct
      layout \
          :response_type, :uint8,
          :error_code, :uint8,
          :sequence, :uint16,
          :bad_alarm, :uint32,
          :minor_opcode, :uint16,
          :major_opcode, :uint8
    end

    class XrbInitializeRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :major_version, :uint8,
          :minor_version, :uint8,
          :pad2, [:uint8, 22]
    end

    class XrbInitializeCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_initialize, [:pointer,:uint8,:uint8,:uint8], XrbInitializeCookie
    class XrbInitializeReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :major_version, :uint8,
          :minor_version, :uint8,
          :pad2, [:uint8, 22]
    end

    attach_function :xcb_initialize_reply, [:pointer, XrbInitializeCookie, :pointer], :pointer

        
    class XrbListSystemCountersRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :counters_len, :uint32,
          :pad2, [:uint8, 20]
    end

    class XrbListSystemCountersCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_list_system_counters, [:pointer,:uint8,:uint32,:uint32], XrbListSystemCountersCookie
    class XrbListSystemCountersReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :counters_len, :uint32,
          :pad2, [:uint8, 20]
    end

    attach_function :xcb_list_system_counters_reply, [:pointer, XrbListSystemCountersCookie, :pointer], :pointer

        
    class XrbCreateCounterRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :id, :xrb_counter_t,
          :initial_value, XrbInt64
    end

    class XrbCreateCounterCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_create_counter_checked, [:pointer,:uint8,:xrb_counter_t,XrbInt64], XrbCreateCounterCookie
    attach_function :xcb_create_counter, [:pointer,:uint8,:xrb_counter_t,XrbInt64], XrbCreateCounterCookie
    class XrbDestroyCounterRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :counter, :xrb_counter_t
    end

    class XrbDestroyCounterCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_destroy_counter_checked, [:pointer,:uint8,:xrb_counter_t], XrbDestroyCounterCookie
    attach_function :xcb_destroy_counter, [:pointer,:uint8,:xrb_counter_t], XrbDestroyCounterCookie
    class XrbQueryCounterRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :counter_value, XrbInt64
    end

    class XrbQueryCounterCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_query_counter, [:pointer,:uint8,XrbInt64], XrbQueryCounterCookie
    class XrbQueryCounterReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :counter_value, XrbInt64
    end

    attach_function :xcb_query_counter_reply, [:pointer, XrbQueryCounterCookie, :pointer], :pointer

        
    class XrbAwaitRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16
    end

    class XrbAwaitCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_await_checked, [:pointer,:uint8,:uint32], XrbAwaitCookie
    attach_function :xcb_await, [:pointer,:uint8,:uint32], XrbAwaitCookie
    class XrbChangeCounterRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :counter, :xrb_counter_t,
          :amount, XrbInt64
    end

    class XrbChangeCounterCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_change_counter_checked, [:pointer,:uint8,:xrb_counter_t,XrbInt64], XrbChangeCounterCookie
    attach_function :xcb_change_counter, [:pointer,:uint8,:xrb_counter_t,XrbInt64], XrbChangeCounterCookie
    class XrbSetCounterRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :counter, :xrb_counter_t,
          :value, XrbInt64
    end

    class XrbSetCounterCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_set_counter_checked, [:pointer,:uint8,:xrb_counter_t,XrbInt64], XrbSetCounterCookie
    attach_function :xcb_set_counter, [:pointer,:uint8,:xrb_counter_t,XrbInt64], XrbSetCounterCookie
    class XrbCreateAlarmRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :id, :xrb_alarm_t,
          :value_mask, :uint32
    end

    class XrbCreateAlarmCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_create_alarm_checked, [:pointer,:uint8,:xrb_alarm_t,:uint32,:pointer], XrbCreateAlarmCookie
    attach_function :xcb_create_alarm, [:pointer,:uint8,:xrb_alarm_t,:uint32,:pointer], XrbCreateAlarmCookie
    class XrbChangeAlarmRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :id, :xrb_alarm_t,
          :value_mask, :uint32
    end

    class XrbChangeAlarmCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_change_alarm_checked, [:pointer,:uint8,:xrb_alarm_t,:uint32,:pointer], XrbChangeAlarmCookie
    attach_function :xcb_change_alarm, [:pointer,:uint8,:xrb_alarm_t,:uint32,:pointer], XrbChangeAlarmCookie
    class XrbDestroyAlarmRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :alarm, :xrb_alarm_t
    end

    class XrbDestroyAlarmCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_destroy_alarm_checked, [:pointer,:uint8,:xrb_alarm_t], XrbDestroyAlarmCookie
    attach_function :xcb_destroy_alarm, [:pointer,:uint8,:xrb_alarm_t], XrbDestroyAlarmCookie
    class XrbQueryAlarmRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :trigger, XrbTrigger,
          :delta, XrbInt64,
          :events, :bool,
          :state, :uint8,
          :pad2, [:uint8, 2]
    end

    class XrbQueryAlarmCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_query_alarm, [:pointer,:uint8,XrbTrigger,XrbInt64,:bool,:uint8], XrbQueryAlarmCookie
    class XrbQueryAlarmReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :trigger, XrbTrigger,
          :delta, XrbInt64,
          :events, :bool,
          :state, :uint8,
          :pad2, [:uint8, 2]
    end

    attach_function :xcb_query_alarm_reply, [:pointer, XrbQueryAlarmCookie, :pointer], :pointer

        
    class XrbSetPriorityRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :id, :uint32,
          :priority, :int32
    end

    class XrbSetPriorityCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_set_priority_checked, [:pointer,:uint8,:uint32,:int32], XrbSetPriorityCookie
    attach_function :xcb_set_priority, [:pointer,:uint8,:uint32,:int32], XrbSetPriorityCookie
    class XrbGetPriorityRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :priority, :int32
    end

    class XrbGetPriorityCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_priority, [:pointer,:uint8,:int32], XrbGetPriorityCookie
    class XrbGetPriorityReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :priority, :int32
    end

    attach_function :xcb_get_priority_reply, [:pointer, XrbGetPriorityCookie, :pointer], :pointer

        
    class XrbCreateFenceRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :drawable, :xrb_drawable_t,
          :fence, :xrb_fence_t,
          :initially_triggered, :bool
    end

    class XrbCreateFenceCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_create_fence_checked, [:pointer,:uint8,:xrb_drawable_t,:xrb_fence_t,:bool], XrbCreateFenceCookie
    attach_function :xcb_create_fence, [:pointer,:uint8,:xrb_drawable_t,:xrb_fence_t,:bool], XrbCreateFenceCookie
    class XrbTriggerFenceRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :fence, :xrb_fence_t
    end

    class XrbTriggerFenceCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_trigger_fence_checked, [:pointer,:uint8,:xrb_fence_t], XrbTriggerFenceCookie
    attach_function :xcb_trigger_fence, [:pointer,:uint8,:xrb_fence_t], XrbTriggerFenceCookie
    class XrbResetFenceRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :fence, :xrb_fence_t
    end

    class XrbResetFenceCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_reset_fence_checked, [:pointer,:uint8,:xrb_fence_t], XrbResetFenceCookie
    attach_function :xcb_reset_fence, [:pointer,:uint8,:xrb_fence_t], XrbResetFenceCookie
    class XrbDestroyFenceRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :fence, :xrb_fence_t
    end

    class XrbDestroyFenceCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_destroy_fence_checked, [:pointer,:uint8,:xrb_fence_t], XrbDestroyFenceCookie
    attach_function :xcb_destroy_fence, [:pointer,:uint8,:xrb_fence_t], XrbDestroyFenceCookie
    class XrbQueryFenceRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :triggered, :bool,
          :pad2, [:uint8, 23]
    end

    class XrbQueryFenceCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_query_fence, [:pointer,:uint8,:bool], XrbQueryFenceCookie
    class XrbQueryFenceReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :triggered, :bool,
          :pad2, [:uint8, 23]
    end

    attach_function :xcb_query_fence_reply, [:pointer, XrbQueryFenceCookie, :pointer], :pointer

        
    class XrbAwaitFenceRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16
    end

    class XrbAwaitFenceCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_await_fence_checked, [:pointer,:uint8,:uint32], XrbAwaitFenceCookie
    attach_function :xcb_await_fence, [:pointer,:uint8,:uint32], XrbAwaitFenceCookie
  end
end
