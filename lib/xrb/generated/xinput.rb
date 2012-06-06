#
# This file auto-generated. Do not edit.
#

require 'ffi'
require 'xrb/xproto'
class Xrb
  class Input
    extend FFI::Library
    ffi_lib 'xinput'
    MAJOR_VERSION = 1
    MINOR_VERSION = 4
    typedef :uint8, :keycode_t
    class KeyCodeIterator < FFI::Struct
      layout \
          :data, :window_t,
          :rem, :int,
          :indent, :int
    end
    attach_function :key_code_next, :xcb_key_code_next, [:pointer], :void
    attach_function :key_code_end, :xcb_key_code_end, [:pointer], GenericIterator
    typedef :uint32, :eventclass_t
    class EventClassIterator < FFI::Struct
      layout \
          :data, :window_t,
          :rem, :int,
          :indent, :int
    end
    attach_function :event_class_next, :xcb_event_class_next, [:pointer], :void
    attach_function :event_class_end, :xcb_event_class_end, [:pointer], GenericIterator
    VALUATOR_MODE_RELATIVE = 0
    VALUATOR_MODE_ABSOLUTE = 1
    PROPAGATE_MODE_ADD_TO_LIST = 0
    PROPAGATE_MODE_DELETE_FROM_LIST = 1
    DEVICE_USE_IS_X_POINTER = 0
    DEVICE_USE_IS_X_KEYBOARD = 1
    DEVICE_USE_IS_X_EXTENSION_DEVICE = 2
    DEVICE_USE_IS_X_EXTENSION_KEYBOARD = 3
    DEVICE_USE_IS_X_EXTENSION_POINTER = 4
    class DeviceInfo < FFI::Struct
      layout \
          :device_type, :atom_t,
          :device_id, :uint8,
          :num_class_info, :uint8,
          :device_use, :uint8,
          :pad1, [:uint8, 1]
    end

    class DeviceInfoIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :device_info_next, :xcb_device_info_next, [:pointer], :void
    attach_function :device_info_end, :xcb_device_info_end, [:pointer], GenericIterator
    INPUT_CLASS_KEY = 0
    INPUT_CLASS_BUTTON = 1
    INPUT_CLASS_VALUATOR = 2
    INPUT_CLASS_FEEDBACK = 3
    INPUT_CLASS_PROXIMITY = 4
    INPUT_CLASS_FOCUS = 5
    INPUT_CLASS_OTHER = 6
    class InputInfo < FFI::Struct
      layout \
          :class_id, :uint8,
          :len, :uint8
    end

    class InputInfoIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :input_info_next, :xcb_input_info_next, [:pointer], :void
    attach_function :input_info_end, :xcb_input_info_end, [:pointer], GenericIterator
    class KeyInfo < FFI::Struct
      layout \
          :class_id, :uint8,
          :len, :uint8,
          :min_keycode, :keycode_t,
          :max_keycode, :keycode_t,
          :num_keys, :uint16,
          :pad1, [:uint8, 2]
    end

    class KeyInfoIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :key_info_next, :xcb_key_info_next, [:pointer], :void
    attach_function :key_info_end, :xcb_key_info_end, [:pointer], GenericIterator
    class ButtonInfo < FFI::Struct
      layout \
          :class_id, :uint8,
          :len, :uint8,
          :num_buttons, :uint16
    end

    class ButtonInfoIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :button_info_next, :xcb_button_info_next, [:pointer], :void
    attach_function :button_info_end, :xcb_button_info_end, [:pointer], GenericIterator
    class AxisInfo < FFI::Struct
      layout \
          :resolution, :uint32,
          :minimum, :int32,
          :maximum, :int32
    end

    class AxisInfoIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :axis_info_next, :xcb_axis_info_next, [:pointer], :void
    attach_function :axis_info_end, :xcb_axis_info_end, [:pointer], GenericIterator
    class ValuatorInfo < FFI::Struct
      layout \
          :class_id, :uint8,
          :len, :uint8,
          :axes_len, :uint8,
          :mode, :uint8,
          :motion_size, :uint32
    end

    class ValuatorInfoIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :valuator_info_next, :xcb_valuator_info_next, [:pointer], :void
    attach_function :valuator_info_end, :xcb_valuator_info_end, [:pointer], GenericIterator
    attach_function :valuator_info_sizeof, :xcb_valuator_info_sizeof, [:pointer], :int
    attach_function :valuator_info_axes_iterator, :xcb_valuator_info_axes_iterator, [:pointer], ValuatorInfoIterator
    attach_function :valuator_info_axes_length, :xcb_valuator_info_axes_length, [:pointer], :int
    class InputClassInfo < FFI::Struct
      layout \
          :class_id, :uint8,
          :event_type_base, :uint8
    end

    class InputClassInfoIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :input_class_info_next, :xcb_input_class_info_next, [:pointer], :void
    attach_function :input_class_info_end, :xcb_input_class_info_end, [:pointer], GenericIterator
    class DeviceTimeCoord < FFI::Struct
      layout \
          :time, :timestamp_t
    end

    class DeviceTimeCoordIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :device_time_coord_next, :xcb_device_time_coord_next, [:pointer], :void
    attach_function :device_time_coord_end, :xcb_device_time_coord_end, [:pointer], GenericIterator
    DEVICE_INPUT_MODE_ASYNC_THIS_DEVICE = 1
    DEVICE_INPUT_MODE_SYNC_THIS_DEVICE = 2
    DEVICE_INPUT_MODE_REPLAY_THIS_DEVICE = 3
    DEVICE_INPUT_MODE_ASYNC_OTHER_DEVICES = 4
    DEVICE_INPUT_MODE_ASYNC_ALL = 5
    DEVICE_INPUT_MODE_SYNC_ALL = 6
    FEEDBACK_CLASS_KEYBOARD = 1
    FEEDBACK_CLASS_POINTER = 2
    FEEDBACK_CLASS_STRING = 3
    FEEDBACK_CLASS_INTEGER = 4
    FEEDBACK_CLASS_LED = 5
    FEEDBACK_CLASS_BELL = 6
    class FeedbackState < FFI::Struct
      layout \
          :class_id, :uint8,
          :id, :uint8,
          :len, :uint16
    end

    class FeedbackStateIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :feedback_state_next, :xcb_feedback_state_next, [:pointer], :void
    attach_function :feedback_state_end, :xcb_feedback_state_end, [:pointer], GenericIterator
    class KbdFeedbackState < FFI::Struct
      layout \
          :class_id, :uint8,
          :id, :uint8,
          :len, :uint16,
          :pitch, :uint16,
          :duration, :uint16,
          :led_mask, :uint32,
          :led_values, :uint32,
          :global_auto_repeat, :bool,
          :click, :uint8,
          :percent, :uint8,
          :pad1, [:uint8, 1],
          :auto_repeats_len, [:uint32 , 32]
    end

    class KbdFeedbackStateIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :kbd_feedback_state_next, :xcb_kbd_feedback_state_next, [:pointer], :void
    attach_function :kbd_feedback_state_end, :xcb_kbd_feedback_state_end, [:pointer], GenericIterator
    attach_function :kbd_feedback_state_sizeof, :xcb_kbd_feedback_state_sizeof, [:pointer], :int
    attach_function :kbd_feedback_state_auto_repeats, :xcb_kbd_feedback_state_auto_repeats, [:pointer], :pointer
    attach_function :kbd_feedback_state_auto_repeats_length, :xcb_kbd_feedback_state_auto_repeats_length, [:pointer], :int
    class PtrFeedbackState < FFI::Struct
      layout \
          :class_id, :uint8,
          :id, :uint8,
          :len, :uint16,
          :pad1, [:uint8, 2],
          :accel_num, :uint16,
          :accel_denom, :uint16,
          :threshold, :uint16
    end

    class PtrFeedbackStateIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :ptr_feedback_state_next, :xcb_ptr_feedback_state_next, [:pointer], :void
    attach_function :ptr_feedback_state_end, :xcb_ptr_feedback_state_end, [:pointer], GenericIterator
    class IntegerFeedbackState < FFI::Struct
      layout \
          :class_id, :uint8,
          :id, :uint8,
          :len, :uint16,
          :resolution, :uint32,
          :min_value, :int32,
          :max_value, :int32
    end

    class IntegerFeedbackStateIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :integer_feedback_state_next, :xcb_integer_feedback_state_next, [:pointer], :void
    attach_function :integer_feedback_state_end, :xcb_integer_feedback_state_end, [:pointer], GenericIterator
    class StringFeedbackState < FFI::Struct
      layout \
          :class_id, :uint8,
          :id, :uint8,
          :len, :uint16,
          :max_symbols, :uint16,
          :num_keysyms, :uint16
    end

    class StringFeedbackStateIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :string_feedback_state_next, :xcb_string_feedback_state_next, [:pointer], :void
    attach_function :string_feedback_state_end, :xcb_string_feedback_state_end, [:pointer], GenericIterator
    attach_function :string_feedback_state_sizeof, :xcb_string_feedback_state_sizeof, [:pointer], :int
    attach_function :string_feedback_state_keysyms, :xcb_string_feedback_state_keysyms, [:pointer], :pointer
    attach_function :string_feedback_state_keysyms_length, :xcb_string_feedback_state_keysyms_length, [:pointer], :int
    class BellFeedbackState < FFI::Struct
      layout \
          :class_id, :uint8,
          :id, :uint8,
          :len, :uint16,
          :percent, :uint8,
          :pad1, [:uint8, 3],
          :pitch, :uint16,
          :duration, :uint16
    end

    class BellFeedbackStateIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :bell_feedback_state_next, :xcb_bell_feedback_state_next, [:pointer], :void
    attach_function :bell_feedback_state_end, :xcb_bell_feedback_state_end, [:pointer], GenericIterator
    class LedFeedbackState < FFI::Struct
      layout \
          :class_id, :uint8,
          :id, :uint8,
          :len, :uint16,
          :led_mask, :uint32,
          :led_values, :uint32
    end

    class LedFeedbackStateIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :led_feedback_state_next, :xcb_led_feedback_state_next, [:pointer], :void
    attach_function :led_feedback_state_end, :xcb_led_feedback_state_end, [:pointer], GenericIterator
    class FeedbackCtl < FFI::Struct
      layout \
          :class_id, :uint8,
          :id, :uint8,
          :len, :uint16
    end

    class FeedbackCtlIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :feedback_ctl_next, :xcb_feedback_ctl_next, [:pointer], :void
    attach_function :feedback_ctl_end, :xcb_feedback_ctl_end, [:pointer], GenericIterator
    class KbdFeedbackCtl < FFI::Struct
      layout \
          :class_id, :uint8,
          :id, :uint8,
          :len, :uint16,
          :key, :keycode_t,
          :auto_repeat_mode, :uint8,
          :key_click_percent, :int8,
          :bell_percent, :int8,
          :bell_pitch, :int16,
          :bell_duration, :int16,
          :led_mask, :uint32,
          :led_values, :uint32
    end

    class KbdFeedbackCtlIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :kbd_feedback_ctl_next, :xcb_kbd_feedback_ctl_next, [:pointer], :void
    attach_function :kbd_feedback_ctl_end, :xcb_kbd_feedback_ctl_end, [:pointer], GenericIterator
    class PtrFeedbackCtl < FFI::Struct
      layout \
          :class_id, :uint8,
          :id, :uint8,
          :len, :uint16,
          :pad1, [:uint8, 2],
          :num, :int16,
          :denom, :int16,
          :threshold, :int16
    end

    class PtrFeedbackCtlIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :ptr_feedback_ctl_next, :xcb_ptr_feedback_ctl_next, [:pointer], :void
    attach_function :ptr_feedback_ctl_end, :xcb_ptr_feedback_ctl_end, [:pointer], GenericIterator
    class IntegerFeedbackCtl < FFI::Struct
      layout \
          :class_id, :uint8,
          :id, :uint8,
          :len, :uint16,
          :int_to_display, :int32
    end

    class IntegerFeedbackCtlIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :integer_feedback_ctl_next, :xcb_integer_feedback_ctl_next, [:pointer], :void
    attach_function :integer_feedback_ctl_end, :xcb_integer_feedback_ctl_end, [:pointer], GenericIterator
    class StringFeedbackCtl < FFI::Struct
      layout \
          :class_id, :uint8,
          :id, :uint8,
          :len, :uint16,
          :pad1, [:uint8, 2],
          :num_keysyms, :uint16
    end

    class StringFeedbackCtlIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :string_feedback_ctl_next, :xcb_string_feedback_ctl_next, [:pointer], :void
    attach_function :string_feedback_ctl_end, :xcb_string_feedback_ctl_end, [:pointer], GenericIterator
    attach_function :string_feedback_ctl_sizeof, :xcb_string_feedback_ctl_sizeof, [:pointer], :int
    attach_function :string_feedback_ctl_keysyms, :xcb_string_feedback_ctl_keysyms, [:pointer], :pointer
    attach_function :string_feedback_ctl_keysyms_length, :xcb_string_feedback_ctl_keysyms_length, [:pointer], :int
    class BellFeedbackCtl < FFI::Struct
      layout \
          :class_id, :uint8,
          :id, :uint8,
          :len, :uint16,
          :percent, :int8,
          :pad1, [:uint8, 3],
          :pitch, :int16,
          :duration, :int16
    end

    class BellFeedbackCtlIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :bell_feedback_ctl_next, :xcb_bell_feedback_ctl_next, [:pointer], :void
    attach_function :bell_feedback_ctl_end, :xcb_bell_feedback_ctl_end, [:pointer], GenericIterator
    class LedFeedbackCtl < FFI::Struct
      layout \
          :class_id, :uint8,
          :id, :uint8,
          :len, :uint16,
          :led_mask, :uint32,
          :led_values, :uint32
    end

    class LedFeedbackCtlIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :led_feedback_ctl_next, :xcb_led_feedback_ctl_next, [:pointer], :void
    attach_function :led_feedback_ctl_end, :xcb_led_feedback_ctl_end, [:pointer], GenericIterator
    class InputState < FFI::Struct
      layout \
          :class_id, :uint8,
          :len, :uint8,
          :num_items, :uint8
    end

    class InputStateIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :input_state_next, :xcb_input_state_next, [:pointer], :void
    attach_function :input_state_end, :xcb_input_state_end, [:pointer], GenericIterator
    class KeyState < FFI::Struct
      layout \
          :class_id, :uint8,
          :len, :uint8,
          :num_keys, :uint8,
          :pad1, [:uint8, 1],
          :keys_len, [:uint32 , 32]
    end

    class KeyStateIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :key_state_next, :xcb_key_state_next, [:pointer], :void
    attach_function :key_state_end, :xcb_key_state_end, [:pointer], GenericIterator
    attach_function :key_state_sizeof, :xcb_key_state_sizeof, [:pointer], :int
    attach_function :key_state_keys, :xcb_key_state_keys, [:pointer], :pointer
    attach_function :key_state_keys_length, :xcb_key_state_keys_length, [:pointer], :int
    class ButtonState < FFI::Struct
      layout \
          :class_id, :uint8,
          :len, :uint8,
          :num_buttons, :uint8,
          :pad1, [:uint8, 1],
          :buttons_len, [:uint32 , 32]
    end

    class ButtonStateIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :button_state_next, :xcb_button_state_next, [:pointer], :void
    attach_function :button_state_end, :xcb_button_state_end, [:pointer], GenericIterator
    attach_function :button_state_sizeof, :xcb_button_state_sizeof, [:pointer], :int
    attach_function :button_state_buttons, :xcb_button_state_buttons, [:pointer], :pointer
    attach_function :button_state_buttons_length, :xcb_button_state_buttons_length, [:pointer], :int
    class ValuatorState < FFI::Struct
      layout \
          :class_id, :uint8,
          :len, :uint8,
          :num_valuators, :uint8,
          :mode, :uint8
    end

    class ValuatorStateIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :valuator_state_next, :xcb_valuator_state_next, [:pointer], :void
    attach_function :valuator_state_end, :xcb_valuator_state_end, [:pointer], GenericIterator
    attach_function :valuator_state_sizeof, :xcb_valuator_state_sizeof, [:pointer], :int
    attach_function :valuator_state_valuators, :xcb_valuator_state_valuators, [:pointer], :pointer
    attach_function :valuator_state_valuators_length, :xcb_valuator_state_valuators_length, [:pointer], :int
    class DeviceState < FFI::Struct
      layout \
          :control_id, :uint16,
          :len, :uint16
    end

    class DeviceStateIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :device_state_next, :xcb_device_state_next, [:pointer], :void
    attach_function :device_state_end, :xcb_device_state_end, [:pointer], GenericIterator
    class DeviceResolutionState < FFI::Struct
      layout \
          :control_id, :uint16,
          :len, :uint16,
          :num_valuators, :uint32
    end

    class DeviceResolutionStateIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :device_resolution_state_next, :xcb_device_resolution_state_next, [:pointer], :void
    attach_function :device_resolution_state_end, :xcb_device_resolution_state_end, [:pointer], GenericIterator
    attach_function :device_resolution_state_sizeof, :xcb_device_resolution_state_sizeof, [:pointer], :int
    attach_function :device_resolution_state_resolution_values, :xcb_device_resolution_state_resolution_values, [:pointer], :pointer
    attach_function :device_resolution_state_resolution_values_length, :xcb_device_resolution_state_resolution_values_length, [:pointer], :int
    attach_function :device_resolution_state_resolution_min, :xcb_device_resolution_state_resolution_min, [:pointer], :pointer
    attach_function :device_resolution_state_resolution_min_length, :xcb_device_resolution_state_resolution_min_length, [:pointer], :int
    attach_function :device_resolution_state_resolution_max, :xcb_device_resolution_state_resolution_max, [:pointer], :pointer
    attach_function :device_resolution_state_resolution_max_length, :xcb_device_resolution_state_resolution_max_length, [:pointer], :int
    class DeviceAbsCalibState < FFI::Struct
      layout \
          :control_id, :uint16,
          :len, :uint16,
          :min_x, :int32,
          :max_x, :int32,
          :min_y, :int32,
          :max_y, :int32,
          :flip_x, :uint32,
          :flip_y, :uint32,
          :rotation, :uint32,
          :button_threshold, :uint32
    end

    class DeviceAbsCalibStateIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :device_abs_calib_state_next, :xcb_device_abs_calib_state_next, [:pointer], :void
    attach_function :device_abs_calib_state_end, :xcb_device_abs_calib_state_end, [:pointer], GenericIterator
    class DeviceAbsAreaState < FFI::Struct
      layout \
          :control_id, :uint16,
          :len, :uint16,
          :offset_x, :uint32,
          :offset_y, :uint32,
          :width, :uint32,
          :height, :uint32,
          :screen, :uint32,
          :following, :uint32
    end

    class DeviceAbsAreaStateIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :device_abs_area_state_next, :xcb_device_abs_area_state_next, [:pointer], :void
    attach_function :device_abs_area_state_end, :xcb_device_abs_area_state_end, [:pointer], GenericIterator
    class DeviceCoreState < FFI::Struct
      layout \
          :control_id, :uint16,
          :len, :uint16,
          :status, :uint8,
          :iscore, :uint8,
          :pad1, [:uint8, 2]
    end

    class DeviceCoreStateIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :device_core_state_next, :xcb_device_core_state_next, [:pointer], :void
    attach_function :device_core_state_end, :xcb_device_core_state_end, [:pointer], GenericIterator
    class DeviceEnableState < FFI::Struct
      layout \
          :control_id, :uint16,
          :len, :uint16,
          :enable, :uint8,
          :pad1, [:uint8, 3]
    end

    class DeviceEnableStateIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :device_enable_state_next, :xcb_device_enable_state_next, [:pointer], :void
    attach_function :device_enable_state_end, :xcb_device_enable_state_end, [:pointer], GenericIterator
    class DeviceCtl < FFI::Struct
      layout \
          :control_id, :uint16,
          :len, :uint16
    end

    class DeviceCtlIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :device_ctl_next, :xcb_device_ctl_next, [:pointer], :void
    attach_function :device_ctl_end, :xcb_device_ctl_end, [:pointer], GenericIterator
    class DeviceResolutionCtl < FFI::Struct
      layout \
          :control_id, :uint16,
          :len, :uint16,
          :first_valuator, :uint8,
          :num_valuators, :uint8
    end

    class DeviceResolutionCtlIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :device_resolution_ctl_next, :xcb_device_resolution_ctl_next, [:pointer], :void
    attach_function :device_resolution_ctl_end, :xcb_device_resolution_ctl_end, [:pointer], GenericIterator
    attach_function :device_resolution_ctl_sizeof, :xcb_device_resolution_ctl_sizeof, [:pointer], :int
    attach_function :device_resolution_ctl_resolution_values, :xcb_device_resolution_ctl_resolution_values, [:pointer], :pointer
    attach_function :device_resolution_ctl_resolution_values_length, :xcb_device_resolution_ctl_resolution_values_length, [:pointer], :int
    class DeviceAbsCalibCtl < FFI::Struct
      layout \
          :control_id, :uint16,
          :len, :uint16,
          :min_x, :int32,
          :max_x, :int32,
          :min_y, :int32,
          :max_y, :int32,
          :flip_x, :uint32,
          :flip_y, :uint32,
          :rotation, :uint32,
          :button_threshold, :uint32
    end

    class DeviceAbsCalibCtlIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :device_abs_calib_ctl_next, :xcb_device_abs_calib_ctl_next, [:pointer], :void
    attach_function :device_abs_calib_ctl_end, :xcb_device_abs_calib_ctl_end, [:pointer], GenericIterator
    class DeviceAbsAreaCtrl < FFI::Struct
      layout \
          :control_id, :uint16,
          :len, :uint16,
          :offset_x, :uint32,
          :offset_y, :uint32,
          :width, :int32,
          :height, :int32,
          :screen, :int32,
          :following, :uint32
    end

    class DeviceAbsAreaCtrlIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :device_abs_area_ctrl_next, :xcb_device_abs_area_ctrl_next, [:pointer], :void
    attach_function :device_abs_area_ctrl_end, :xcb_device_abs_area_ctrl_end, [:pointer], GenericIterator
    class DeviceCoreCtrl < FFI::Struct
      layout \
          :control_id, :uint16,
          :len, :uint16,
          :status, :uint8,
          :pad1, [:uint8, 3]
    end

    class DeviceCoreCtrlIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :device_core_ctrl_next, :xcb_device_core_ctrl_next, [:pointer], :void
    attach_function :device_core_ctrl_end, :xcb_device_core_ctrl_end, [:pointer], GenericIterator
    class DeviceEnableCtrl < FFI::Struct
      layout \
          :control_id, :uint16,
          :len, :uint16,
          :enable, :uint8,
          :pad1, [:uint8, 3]
    end

    class DeviceEnableCtrlIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :device_enable_ctrl_next, :xcb_device_enable_ctrl_next, [:pointer], :void
    attach_function :device_enable_ctrl_end, :xcb_device_enable_ctrl_end, [:pointer], GenericIterator
    class DeviceValuatorEvent < FFI::Struct
      layout \
          :response_type, :uint8,
          :device_id, :uint8,
          :device_state, :uint16,
          :num_valuators, :uint8,
          :first_valuator, :uint8,
          :valuators_len, [:uint32 , 6]
    end

    class DeviceKeyPressEvent < FFI::Struct
      layout \
          :response_type, :uint8,
          :detail, :uint8,
          :time, :timestamp_t,
          :root, :window_t,
          :event, :window_t,
          :child, :window_t,
          :root_x, :int16,
          :root_y, :int16,
          :event_x, :int16,
          :event_y, :int16,
          :state, :uint16,
          :same_screen, :bool,
          :device_id, :uint8
    end

    class DeviceKeyReleaseEvent < FFI::Struct
      layout \
          :response_type, :uint8,
          :detail, :uint8,
          :time, :timestamp_t,
          :root, :window_t,
          :event, :window_t,
          :child, :window_t,
          :root_x, :int16,
          :root_y, :int16,
          :event_x, :int16,
          :event_y, :int16,
          :state, :uint16,
          :same_screen, :bool,
          :device_id, :uint8
    end

    class DeviceButtonPressEvent < FFI::Struct
      layout \
          :response_type, :uint8,
          :detail, :uint8,
          :time, :timestamp_t,
          :root, :window_t,
          :event, :window_t,
          :child, :window_t,
          :root_x, :int16,
          :root_y, :int16,
          :event_x, :int16,
          :event_y, :int16,
          :state, :uint16,
          :same_screen, :bool,
          :device_id, :uint8
    end

    class DeviceButtonReleaseEvent < FFI::Struct
      layout \
          :response_type, :uint8,
          :detail, :uint8,
          :time, :timestamp_t,
          :root, :window_t,
          :event, :window_t,
          :child, :window_t,
          :root_x, :int16,
          :root_y, :int16,
          :event_x, :int16,
          :event_y, :int16,
          :state, :uint16,
          :same_screen, :bool,
          :device_id, :uint8
    end

    class DeviceMotionNotifyEvent < FFI::Struct
      layout \
          :response_type, :uint8,
          :detail, :uint8,
          :time, :timestamp_t,
          :root, :window_t,
          :event, :window_t,
          :child, :window_t,
          :root_x, :int16,
          :root_y, :int16,
          :event_x, :int16,
          :event_y, :int16,
          :state, :uint16,
          :same_screen, :bool,
          :device_id, :uint8
    end

    class ProximityInEvent < FFI::Struct
      layout \
          :response_type, :uint8,
          :detail, :uint8,
          :time, :timestamp_t,
          :root, :window_t,
          :event, :window_t,
          :child, :window_t,
          :root_x, :int16,
          :root_y, :int16,
          :event_x, :int16,
          :event_y, :int16,
          :state, :uint16,
          :same_screen, :bool,
          :device_id, :uint8
    end

    class ProximityOutEvent < FFI::Struct
      layout \
          :response_type, :uint8,
          :detail, :uint8,
          :time, :timestamp_t,
          :root, :window_t,
          :event, :window_t,
          :child, :window_t,
          :root_x, :int16,
          :root_y, :int16,
          :event_x, :int16,
          :event_y, :int16,
          :state, :uint16,
          :same_screen, :bool,
          :device_id, :uint8
    end

    class FocusInEvent < FFI::Struct
      layout \
          :response_type, :uint8,
          :detail, :uint8,
          :time, :timestamp_t,
          :window, :window_t,
          :mode, :uint8,
          :device_id, :uint8,
          :pad1, [:uint8, 18]
    end

    class FocusOutEvent < FFI::Struct
      layout \
          :response_type, :uint8,
          :detail, :uint8,
          :time, :timestamp_t,
          :window, :window_t,
          :mode, :uint8,
          :device_id, :uint8,
          :pad1, [:uint8, 18]
    end

    class DeviceStateNotifyEvent < FFI::Struct
      layout \
          :response_type, :uint8,
          :device_id, :uint8,
          :time, :timestamp_t,
          :num_keys, :uint8,
          :num_buttons, :uint8,
          :num_valuators, :uint8,
          :classes_reported, :uint8,
          :buttons_len, [:uint32 , 4],
          :keys_len, [:uint32 , 4],
          :valuators_len, [:uint32 , 3]
    end

    class DeviceMappingNotifyEvent < FFI::Struct
      layout \
          :response_type, :uint8,
          :device_id, :uint8,
          :request, :uint8,
          :first_keycode, :keycode_t,
          :count, :uint8,
          :pad1, [:uint8, 1],
          :time, :timestamp_t,
          :pad2, [:uint8, 20]
    end

    class ChangeDeviceNotifyEvent < FFI::Struct
      layout \
          :response_type, :uint8,
          :device_id, :uint8,
          :time, :timestamp_t,
          :request, :uint8,
          :pad1, [:uint8, 23]
    end

    class DeviceKeyStateNotifyEvent < FFI::Struct
      layout \
          :response_type, :uint8,
          :device_id, :uint8,
          :keys_len, [:uint32 , 28]
    end

    class DeviceButtonStateNotifyEvent < FFI::Struct
      layout \
          :response_type, :uint8,
          :device_id, :uint8,
          :buttons_len, [:uint32 , 28]
    end

    class DevicePresenceNotifyEvent < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :time, :timestamp_t,
          :devchange, :uint8,
          :device_id, :uint8,
          :control, :uint16,
          :pad2, [:uint8, 20]
    end

    class DeviceError < FFI::Struct
      layout \
          :response_type, :uint8,
          :error_code, :uint8,
          :sequence, :uint16
    end

    class EventError < FFI::Struct
      layout \
          :response_type, :uint8,
          :error_code, :uint8,
          :sequence, :uint16
    end

    class ModeError < FFI::Struct
      layout \
          :response_type, :uint8,
          :error_code, :uint8,
          :sequence, :uint16
    end

    class DeviceBusyError < FFI::Struct
      layout \
          :response_type, :uint8,
          :error_code, :uint8,
          :sequence, :uint16
    end

    class ClassError < FFI::Struct
      layout \
          :response_type, :uint8,
          :error_code, :uint8,
          :sequence, :uint16
    end

    class GetExtensionVersionRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :server_major, :uint16,
          :server_minor, :uint16,
          :present, :bool,
          :pad2, [:uint8, 19]
    end

    class GetExtensionVersionCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :get_extension_version, :xcb_get_extension_version, [:pointer,:uint8,:uint16,:uint16,:bool], GetExtensionVersionCookie
    class GetExtensionVersionReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :server_major, :uint16,
          :server_minor, :uint16,
          :present, :bool,
          :pad2, [:uint8, 19]
    end

    attach_function :get_extension_version_reply, :xcb_get_extension_version_reply, [:pointer, GetExtensionVersionCookie, :pointer], :pointer

        
    class ListInputDevicesRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :devices_len, :uint8,
          :pad2, [:uint8, 23]
    end

    class ListInputDevicesCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :list_input_devices, :xcb_list_input_devices, [:pointer,:uint8,:uint8,:uint32], ListInputDevicesCookie
    class ListInputDevicesReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :devices_len, :uint8,
          :pad2, [:uint8, 23]
    end

    attach_function :list_input_devices_reply, :xcb_list_input_devices_reply, [:pointer, ListInputDevicesCookie, :pointer], :pointer

        
    class OpenDeviceRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :num_classes, :uint8,
          :pad2, [:uint8, 23]
    end

    class OpenDeviceCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :open_device, :xcb_open_device, [:pointer,:uint8,:uint8,:uint32], OpenDeviceCookie
    class OpenDeviceReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :num_classes, :uint8,
          :pad2, [:uint8, 23]
    end

    attach_function :open_device_reply, :xcb_open_device_reply, [:pointer, OpenDeviceCookie, :pointer], :pointer

        
    class CloseDeviceRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :device_id, :uint8,
          :pad1, [:uint8, 3]
    end

    class CloseDeviceCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :close_device_checked, :xcb_close_device_checked, [:pointer,:uint8,:uint8], CloseDeviceCookie
    attach_function :close_device, :xcb_close_device, [:pointer,:uint8,:uint8], CloseDeviceCookie
    class SetDeviceModeRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :status, :uint8,
          :pad2, [:uint8, 23]
    end

    class SetDeviceModeCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :set_device_mode, :xcb_set_device_mode, [:pointer,:uint8,:uint8], SetDeviceModeCookie
    class SetDeviceModeReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :status, :uint8,
          :pad2, [:uint8, 23]
    end

    attach_function :set_device_mode_reply, :xcb_set_device_mode_reply, [:pointer, SetDeviceModeCookie, :pointer], :pointer

        
    class SelectExtensionEventRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :window, :window_t,
          :num_classes, :uint16,
          :pad1, [:uint8, 2]
    end

    class SelectExtensionEventCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :select_extension_event_checked, :xcb_select_extension_event_checked, [:pointer,:uint8,:window_t,:uint16,:uint32], SelectExtensionEventCookie
    attach_function :select_extension_event, :xcb_select_extension_event, [:pointer,:uint8,:window_t,:uint16,:uint32], SelectExtensionEventCookie
    class GetSelectedExtensionEventsRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :num_this_classes, :uint16,
          :num_all_classes, :uint16,
          :pad2, [:uint8, 20]
    end

    class GetSelectedExtensionEventsCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :get_selected_extension_events, :xcb_get_selected_extension_events, [:pointer,:uint8,:uint16,:uint16,:uint32,:uint32], GetSelectedExtensionEventsCookie
    class GetSelectedExtensionEventsReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :num_this_classes, :uint16,
          :num_all_classes, :uint16,
          :pad2, [:uint8, 20]
    end

    attach_function :get_selected_extension_events_reply, :xcb_get_selected_extension_events_reply, [:pointer, GetSelectedExtensionEventsCookie, :pointer], :pointer

        
    class ChangeDeviceDontPropagateListRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :window, :window_t,
          :num_classes, :uint16,
          :mode, :uint8,
          :pad1, [:uint8, 1]
    end

    class ChangeDeviceDontPropagateListCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :change_device_dont_propagate_list_checked, :xcb_change_device_dont_propagate_list_checked, [:pointer,:uint8,:window_t,:uint16,:uint8,:uint32], ChangeDeviceDontPropagateListCookie
    attach_function :change_device_dont_propagate_list, :xcb_change_device_dont_propagate_list, [:pointer,:uint8,:window_t,:uint16,:uint8,:uint32], ChangeDeviceDontPropagateListCookie
    class GetDeviceDontPropagateListRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :num_classes, :uint16,
          :pad2, [:uint8, 22]
    end

    class GetDeviceDontPropagateListCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :get_device_dont_propagate_list, :xcb_get_device_dont_propagate_list, [:pointer,:uint8,:uint16,:uint32], GetDeviceDontPropagateListCookie
    class GetDeviceDontPropagateListReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :num_classes, :uint16,
          :pad2, [:uint8, 22]
    end

    attach_function :get_device_dont_propagate_list_reply, :xcb_get_device_dont_propagate_list_reply, [:pointer, GetDeviceDontPropagateListCookie, :pointer], :pointer

        
    class GetDeviceMotionEventsRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :num_coords, :uint32,
          :num_axes, :uint8,
          :device_mode, :uint8,
          :pad2, [:uint8, 18]
    end

    class GetDeviceMotionEventsCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :get_device_motion_events, :xcb_get_device_motion_events, [:pointer,:uint8,:uint32,:uint8,:uint8], GetDeviceMotionEventsCookie
    class GetDeviceMotionEventsReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :num_coords, :uint32,
          :num_axes, :uint8,
          :device_mode, :uint8,
          :pad2, [:uint8, 18]
    end

    attach_function :get_device_motion_events_reply, :xcb_get_device_motion_events_reply, [:pointer, GetDeviceMotionEventsCookie, :pointer], :pointer

        
    class ChangeKeyboardDeviceRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :status, :uint8,
          :pad2, [:uint8, 23]
    end

    class ChangeKeyboardDeviceCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :change_keyboard_device, :xcb_change_keyboard_device, [:pointer,:uint8,:uint8], ChangeKeyboardDeviceCookie
    class ChangeKeyboardDeviceReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :status, :uint8,
          :pad2, [:uint8, 23]
    end

    attach_function :change_keyboard_device_reply, :xcb_change_keyboard_device_reply, [:pointer, ChangeKeyboardDeviceCookie, :pointer], :pointer

        
    class ChangePointerDeviceRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :status, :uint8,
          :pad2, [:uint8, 23]
    end

    class ChangePointerDeviceCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :change_pointer_device, :xcb_change_pointer_device, [:pointer,:uint8,:uint8], ChangePointerDeviceCookie
    class ChangePointerDeviceReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :status, :uint8,
          :pad2, [:uint8, 23]
    end

    attach_function :change_pointer_device_reply, :xcb_change_pointer_device_reply, [:pointer, ChangePointerDeviceCookie, :pointer], :pointer

        
    class GrabDeviceRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :status, :uint8,
          :pad2, [:uint8, 23]
    end

    class GrabDeviceCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :grab_device, :xcb_grab_device, [:pointer,:uint8,:uint8], GrabDeviceCookie
    class GrabDeviceReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :status, :uint8,
          :pad2, [:uint8, 23]
    end

    attach_function :grab_device_reply, :xcb_grab_device_reply, [:pointer, GrabDeviceCookie, :pointer], :pointer

        
    class UngrabDeviceRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :time, :timestamp_t,
          :device_id, :uint8
    end

    class UngrabDeviceCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :ungrab_device_checked, :xcb_ungrab_device_checked, [:pointer,:uint8,:timestamp_t,:uint8], UngrabDeviceCookie
    attach_function :ungrab_device, :xcb_ungrab_device, [:pointer,:uint8,:timestamp_t,:uint8], UngrabDeviceCookie
    class GrabDeviceKeyRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :grab_window, :window_t,
          :num_classes, :uint16,
          :modifiers, :uint16,
          :modifier_device, :uint8,
          :grabbed_device, :uint8,
          :key, :uint8,
          :this_device_mode, :uint8,
          :other_device_mode, :uint8,
          :owner_events, :bool,
          :pad1, [:uint8, 2]
    end

    class GrabDeviceKeyCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :grab_device_key_checked, :xcb_grab_device_key_checked, [:pointer,:uint8,:window_t,:uint16,:uint16,:uint8,:uint8,:uint8,:uint8,:uint8,:bool,:uint32], GrabDeviceKeyCookie
    attach_function :grab_device_key, :xcb_grab_device_key, [:pointer,:uint8,:window_t,:uint16,:uint16,:uint8,:uint8,:uint8,:uint8,:uint8,:bool,:uint32], GrabDeviceKeyCookie
    class UngrabDeviceKeyRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :grabWindow, :window_t,
          :modifiers, :uint16,
          :modifier_device, :uint8,
          :key, :uint8,
          :grabbed_device, :uint8
    end

    class UngrabDeviceKeyCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :ungrab_device_key_checked, :xcb_ungrab_device_key_checked, [:pointer,:uint8,:window_t,:uint16,:uint8,:uint8,:uint8], UngrabDeviceKeyCookie
    attach_function :ungrab_device_key, :xcb_ungrab_device_key, [:pointer,:uint8,:window_t,:uint16,:uint8,:uint8,:uint8], UngrabDeviceKeyCookie
    class GrabDeviceButtonRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :grab_window, :window_t,
          :grabbed_device, :uint8,
          :modifier_device, :uint8,
          :num_classes, :uint16,
          :modifiers, :uint16,
          :this_device_mode, :uint8,
          :other_device_mode, :uint8,
          :button, :uint8,
          :owner_events, :uint8,
          :pad1, [:uint8, 2]
    end

    class GrabDeviceButtonCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :grab_device_button_checked, :xcb_grab_device_button_checked, [:pointer,:uint8,:window_t,:uint8,:uint8,:uint16,:uint16,:uint8,:uint8,:uint8,:uint8,:uint32], GrabDeviceButtonCookie
    attach_function :grab_device_button, :xcb_grab_device_button, [:pointer,:uint8,:window_t,:uint8,:uint8,:uint16,:uint16,:uint8,:uint8,:uint8,:uint8,:uint32], GrabDeviceButtonCookie
    class UngrabDeviceButtonRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :grab_window, :window_t,
          :modifiers, :uint16,
          :modifier_device, :uint8,
          :button, :uint8,
          :grabbed_device, :uint8
    end

    class UngrabDeviceButtonCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :ungrab_device_button_checked, :xcb_ungrab_device_button_checked, [:pointer,:uint8,:window_t,:uint16,:uint8,:uint8,:uint8], UngrabDeviceButtonCookie
    attach_function :ungrab_device_button, :xcb_ungrab_device_button, [:pointer,:uint8,:window_t,:uint16,:uint8,:uint8,:uint8], UngrabDeviceButtonCookie
    class AllowDeviceEventsRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :time, :timestamp_t,
          :mode, :uint8,
          :device_id, :uint8
    end

    class AllowDeviceEventsCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :allow_device_events_checked, :xcb_allow_device_events_checked, [:pointer,:uint8,:timestamp_t,:uint8,:uint8], AllowDeviceEventsCookie
    attach_function :allow_device_events, :xcb_allow_device_events, [:pointer,:uint8,:timestamp_t,:uint8,:uint8], AllowDeviceEventsCookie
    class GetDeviceFocusRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :focus, :window_t,
          :time, :timestamp_t,
          :revert_to, :uint8,
          :pad2, [:uint8, 15]
    end

    class GetDeviceFocusCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :get_device_focus, :xcb_get_device_focus, [:pointer,:uint8,:window_t,:timestamp_t,:uint8], GetDeviceFocusCookie
    class GetDeviceFocusReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :focus, :window_t,
          :time, :timestamp_t,
          :revert_to, :uint8,
          :pad2, [:uint8, 15]
    end

    attach_function :get_device_focus_reply, :xcb_get_device_focus_reply, [:pointer, GetDeviceFocusCookie, :pointer], :pointer

        
    class SetDeviceFocusRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :focus, :window_t,
          :time, :timestamp_t,
          :revert_to, :uint8,
          :device_id, :uint8
    end

    class SetDeviceFocusCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :set_device_focus_checked, :xcb_set_device_focus_checked, [:pointer,:uint8,:window_t,:timestamp_t,:uint8,:uint8], SetDeviceFocusCookie
    attach_function :set_device_focus, :xcb_set_device_focus, [:pointer,:uint8,:window_t,:timestamp_t,:uint8,:uint8], SetDeviceFocusCookie
    class GetFeedbackControlRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :num_feedback, :uint16,
          :pad2, [:uint8, 22]
    end

    class GetFeedbackControlCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :get_feedback_control, :xcb_get_feedback_control, [:pointer,:uint8,:uint16], GetFeedbackControlCookie
    class GetFeedbackControlReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :num_feedback, :uint16,
          :pad2, [:uint8, 22]
    end

    attach_function :get_feedback_control_reply, :xcb_get_feedback_control_reply, [:pointer, GetFeedbackControlCookie, :pointer], :pointer

        
    class GetDeviceKeyMappingRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :keysyms_per_keycode, :uint8,
          :pad2, [:uint8, 23]
    end

    class GetDeviceKeyMappingCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :get_device_key_mapping, :xcb_get_device_key_mapping, [:pointer,:uint8,:uint8,:uint32], GetDeviceKeyMappingCookie
    class GetDeviceKeyMappingReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :keysyms_per_keycode, :uint8,
          :pad2, [:uint8, 23]
    end

    attach_function :get_device_key_mapping_reply, :xcb_get_device_key_mapping_reply, [:pointer, GetDeviceKeyMappingCookie, :pointer], :pointer

        
    class ChangeDeviceKeyMappingRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :device_id, :uint8,
          :first_keycode, :keycode_t,
          :keysyms_per_keycode, :uint8,
          :keycode_count, :uint8
    end

    class ChangeDeviceKeyMappingCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :change_device_key_mapping_checked, :xcb_change_device_key_mapping_checked, [:pointer,:uint8,:uint8,:keycode_t,:uint8,:uint8,:uint32], ChangeDeviceKeyMappingCookie
    attach_function :change_device_key_mapping, :xcb_change_device_key_mapping, [:pointer,:uint8,:uint8,:keycode_t,:uint8,:uint8,:uint32], ChangeDeviceKeyMappingCookie
    class GetDeviceModifierMappingRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :keycodes_per_modifier, :uint8,
          :pad2, [:uint8, 23]
    end

    class GetDeviceModifierMappingCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :get_device_modifier_mapping, :xcb_get_device_modifier_mapping, [:pointer,:uint8,:uint8,:uint32], GetDeviceModifierMappingCookie
    class GetDeviceModifierMappingReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :keycodes_per_modifier, :uint8,
          :pad2, [:uint8, 23]
    end

    attach_function :get_device_modifier_mapping_reply, :xcb_get_device_modifier_mapping_reply, [:pointer, GetDeviceModifierMappingCookie, :pointer], :pointer

        
    class SetDeviceModifierMappingRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :status, :uint8,
          :pad2, [:uint8, 23]
    end

    class SetDeviceModifierMappingCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :set_device_modifier_mapping, :xcb_set_device_modifier_mapping, [:pointer,:uint8,:uint8], SetDeviceModifierMappingCookie
    class SetDeviceModifierMappingReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :status, :uint8,
          :pad2, [:uint8, 23]
    end

    attach_function :set_device_modifier_mapping_reply, :xcb_set_device_modifier_mapping_reply, [:pointer, SetDeviceModifierMappingCookie, :pointer], :pointer

        
    class GetDeviceButtonMappingRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :map_size, :uint8,
          :pad2, [:uint8, 23]
    end

    class GetDeviceButtonMappingCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :get_device_button_mapping, :xcb_get_device_button_mapping, [:pointer,:uint8,:uint8,:uint32], GetDeviceButtonMappingCookie
    class GetDeviceButtonMappingReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :map_size, :uint8,
          :pad2, [:uint8, 23]
    end

    attach_function :get_device_button_mapping_reply, :xcb_get_device_button_mapping_reply, [:pointer, GetDeviceButtonMappingCookie, :pointer], :pointer

        
    class SetDeviceButtonMappingRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :status, :uint8,
          :pad2, [:uint8, 23]
    end

    class SetDeviceButtonMappingCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :set_device_button_mapping, :xcb_set_device_button_mapping, [:pointer,:uint8,:uint8], SetDeviceButtonMappingCookie
    class SetDeviceButtonMappingReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :status, :uint8,
          :pad2, [:uint8, 23]
    end

    attach_function :set_device_button_mapping_reply, :xcb_set_device_button_mapping_reply, [:pointer, SetDeviceButtonMappingCookie, :pointer], :pointer

        
    class QueryDeviceStateRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :num_classes, :uint8,
          :pad2, [:uint8, 23]
    end

    class QueryDeviceStateCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :query_device_state, :xcb_query_device_state, [:pointer,:uint8,:uint8], QueryDeviceStateCookie
    class QueryDeviceStateReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :num_classes, :uint8,
          :pad2, [:uint8, 23]
    end

    attach_function :query_device_state_reply, :xcb_query_device_state_reply, [:pointer, QueryDeviceStateCookie, :pointer], :pointer

        
    class SendExtensionEventRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :destination, :window_t,
          :device_id, :uint8,
          :propagate, :bool,
          :num_classes, :uint16,
          :num_events, :uint8,
          :pad1, [:uint8, 3]
    end

    class SendExtensionEventCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :send_extension_event_checked, :xcb_send_extension_event_checked, [:pointer,:uint8,:window_t,:uint8,:bool,:uint16,:uint8,:uint32,:uint32], SendExtensionEventCookie
    attach_function :send_extension_event, :xcb_send_extension_event, [:pointer,:uint8,:window_t,:uint8,:bool,:uint16,:uint8,:uint32,:uint32], SendExtensionEventCookie
    class DeviceBellRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :device_id, :uint8,
          :feedback_id, :uint8,
          :feedback_class, :uint8,
          :percent, :int8
    end

    class DeviceBellCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :device_bell_checked, :xcb_device_bell_checked, [:pointer,:uint8,:uint8,:uint8,:uint8,:int8], DeviceBellCookie
    attach_function :device_bell, :xcb_device_bell, [:pointer,:uint8,:uint8,:uint8,:uint8,:int8], DeviceBellCookie
    class SetDeviceValuatorsRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :status, :uint8,
          :pad2, [:uint8, 23]
    end

    class SetDeviceValuatorsCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :set_device_valuators, :xcb_set_device_valuators, [:pointer,:uint8,:uint8], SetDeviceValuatorsCookie
    class SetDeviceValuatorsReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :status, :uint8,
          :pad2, [:uint8, 23]
    end

    attach_function :set_device_valuators_reply, :xcb_set_device_valuators_reply, [:pointer, SetDeviceValuatorsCookie, :pointer], :pointer

        
    class GetDeviceControlRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :status, :uint8,
          :pad2, [:uint8, 23]
    end

    class GetDeviceControlCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :get_device_control, :xcb_get_device_control, [:pointer,:uint8,:uint8], GetDeviceControlCookie
    class GetDeviceControlReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :status, :uint8,
          :pad2, [:uint8, 23]
    end

    attach_function :get_device_control_reply, :xcb_get_device_control_reply, [:pointer, GetDeviceControlCookie, :pointer], :pointer

        
  end
end
