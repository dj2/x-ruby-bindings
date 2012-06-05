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
    typedef :uint8, :xrb_keycode_t
    class XrbKeyCodeIterator < FFI::Struct
      layout \
          :data, :xrb_window_t,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_key_code_next, [:pointer], :void
    attach_function :xcb_key_code_end, [:pointer], XrbGenericIterator
    typedef :uint32, :xrb_eventclass_t
    class XrbEventClassIterator < FFI::Struct
      layout \
          :data, :xrb_window_t,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_event_class_next, [:pointer], :void
    attach_function :xcb_event_class_end, [:pointer], XrbGenericIterator
    enum :xrb_valuator_mode_t, [
        :xrb_valuator_mode_relative, 0,
        :xrb_valuator_mode_absolute, 1
    ]
    enum :xrb_propagate_mode_t, [
        :xrb_propagate_mode_add_to_list, 0,
        :xrb_propagate_mode_delete_from_list, 1
    ]
    enum :xrb_device_use_t, [
        :xrb_device_use_is_x_pointer, 0,
        :xrb_device_use_is_x_keyboard, 1,
        :xrb_device_use_is_x_extension_device, 2,
        :xrb_device_use_is_x_extension_keyboard, 3,
        :xrb_device_use_is_x_extension_pointer, 4
    ]
    class XrbDeviceInfo < FFI::Struct
      layout \
          :device_type, :xrb_atom_t,
          :device_id, :uint8,
          :num_class_info, :uint8,
          :device_use, :uint8,
          :pad1, [:uint8, 1]
    end

    class XrbDeviceInfoIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_device_info_next, [:pointer], :void
    attach_function :xcb_device_info_end, [:pointer], XrbGenericIterator
    enum :xrb_input_class_t, [
        :xrb_input_class_key, 0,
        :xrb_input_class_button, 1,
        :xrb_input_class_valuator, 2,
        :xrb_input_class_feedback, 3,
        :xrb_input_class_proximity, 4,
        :xrb_input_class_focus, 5,
        :xrb_input_class_other, 6
    ]
    class XrbInputInfo < FFI::Struct
      layout \
          :class_id, :uint8,
          :len, :uint8
    end

    class XrbInputInfoIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_input_info_next, [:pointer], :void
    attach_function :xcb_input_info_end, [:pointer], XrbGenericIterator
    class XrbKeyInfo < FFI::Struct
      layout \
          :class_id, :uint8,
          :len, :uint8,
          :min_keycode, :xrb_keycode_t,
          :max_keycode, :xrb_keycode_t,
          :num_keys, :uint16,
          :pad1, [:uint8, 2]
    end

    class XrbKeyInfoIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_key_info_next, [:pointer], :void
    attach_function :xcb_key_info_end, [:pointer], XrbGenericIterator
    class XrbButtonInfo < FFI::Struct
      layout \
          :class_id, :uint8,
          :len, :uint8,
          :num_buttons, :uint16
    end

    class XrbButtonInfoIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_button_info_next, [:pointer], :void
    attach_function :xcb_button_info_end, [:pointer], XrbGenericIterator
    class XrbAxisInfo < FFI::Struct
      layout \
          :resolution, :uint32,
          :minimum, :int32,
          :maximum, :int32
    end

    class XrbAxisInfoIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_axis_info_next, [:pointer], :void
    attach_function :xcb_axis_info_end, [:pointer], XrbGenericIterator
    class XrbValuatorInfo < FFI::Struct
      layout \
          :class_id, :uint8,
          :len, :uint8,
          :axes_len, :uint8,
          :mode, :uint8,
          :motion_size, :uint32
    end

    class XrbValuatorInfoIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_valuator_info_next, [:pointer], :void
    attach_function :xcb_valuator_info_end, [:pointer], XrbGenericIterator
    attach_function :xcb_valuator_info_sizeof, [:pointer], :int
    attach_function :xcb_valuator_info_axes_length, [:pointer], :int
    class XrbInputClassInfo < FFI::Struct
      layout \
          :class_id, :uint8,
          :event_type_base, :uint8
    end

    class XrbInputClassInfoIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_input_class_info_next, [:pointer], :void
    attach_function :xcb_input_class_info_end, [:pointer], XrbGenericIterator
    class XrbDeviceTimeCoord < FFI::Struct
      layout \
          :time, :xrb_timestamp_t
    end

    class XrbDeviceTimeCoordIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_device_time_coord_next, [:pointer], :void
    attach_function :xcb_device_time_coord_end, [:pointer], XrbGenericIterator
    enum :xrb_device_input_mode_t, [
        :xrb_device_input_mode_async_this_device, 1,
        :xrb_device_input_mode_sync_this_device, 2,
        :xrb_device_input_mode_replay_this_device, 3,
        :xrb_device_input_mode_async_other_devices, 4,
        :xrb_device_input_mode_async_all, 5,
        :xrb_device_input_mode_sync_all, 6
    ]
    enum :xrb_feedback_class_t, [
        :xrb_feedback_class_keyboard, 1,
        :xrb_feedback_class_pointer, 2,
        :xrb_feedback_class_string, 3,
        :xrb_feedback_class_integer, 4,
        :xrb_feedback_class_led, 5,
        :xrb_feedback_class_bell, 6
    ]
    class XrbFeedbackState < FFI::Struct
      layout \
          :class_id, :uint8,
          :id, :uint8,
          :len, :uint16
    end

    class XrbFeedbackStateIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_feedback_state_next, [:pointer], :void
    attach_function :xcb_feedback_state_end, [:pointer], XrbGenericIterator
    class XrbKbdFeedbackState < FFI::Struct
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

    class XrbKbdFeedbackStateIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_kbd_feedback_state_next, [:pointer], :void
    attach_function :xcb_kbd_feedback_state_end, [:pointer], XrbGenericIterator
    attach_function :xcb_kbd_feedback_state_sizeof, [:pointer], :int
    attach_function :xcb_kbd_feedback_state_auto_repeats, [:pointer], :pointer
    attach_function :xcb_kbd_feedback_state_auto_repeats_length, [:pointer], :int
    class XrbPtrFeedbackState < FFI::Struct
      layout \
          :class_id, :uint8,
          :id, :uint8,
          :len, :uint16,
          :pad1, [:uint8, 2],
          :accel_num, :uint16,
          :accel_denom, :uint16,
          :threshold, :uint16
    end

    class XrbPtrFeedbackStateIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_ptr_feedback_state_next, [:pointer], :void
    attach_function :xcb_ptr_feedback_state_end, [:pointer], XrbGenericIterator
    class XrbIntegerFeedbackState < FFI::Struct
      layout \
          :class_id, :uint8,
          :id, :uint8,
          :len, :uint16,
          :resolution, :uint32,
          :min_value, :int32,
          :max_value, :int32
    end

    class XrbIntegerFeedbackStateIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_integer_feedback_state_next, [:pointer], :void
    attach_function :xcb_integer_feedback_state_end, [:pointer], XrbGenericIterator
    class XrbStringFeedbackState < FFI::Struct
      layout \
          :class_id, :uint8,
          :id, :uint8,
          :len, :uint16,
          :max_symbols, :uint16,
          :num_keysyms, :uint16
    end

    class XrbStringFeedbackStateIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_string_feedback_state_next, [:pointer], :void
    attach_function :xcb_string_feedback_state_end, [:pointer], XrbGenericIterator
    attach_function :xcb_string_feedback_state_sizeof, [:pointer], :int
    attach_function :xcb_string_feedback_state_keysyms, [:pointer], :pointer
    attach_function :xcb_string_feedback_state_keysyms_length, [:pointer], :int
    class XrbBellFeedbackState < FFI::Struct
      layout \
          :class_id, :uint8,
          :id, :uint8,
          :len, :uint16,
          :percent, :uint8,
          :pad1, [:uint8, 3],
          :pitch, :uint16,
          :duration, :uint16
    end

    class XrbBellFeedbackStateIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_bell_feedback_state_next, [:pointer], :void
    attach_function :xcb_bell_feedback_state_end, [:pointer], XrbGenericIterator
    class XrbLedFeedbackState < FFI::Struct
      layout \
          :class_id, :uint8,
          :id, :uint8,
          :len, :uint16,
          :led_mask, :uint32,
          :led_values, :uint32
    end

    class XrbLedFeedbackStateIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_led_feedback_state_next, [:pointer], :void
    attach_function :xcb_led_feedback_state_end, [:pointer], XrbGenericIterator
    class XrbFeedbackCtl < FFI::Struct
      layout \
          :class_id, :uint8,
          :id, :uint8,
          :len, :uint16
    end

    class XrbFeedbackCtlIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_feedback_ctl_next, [:pointer], :void
    attach_function :xcb_feedback_ctl_end, [:pointer], XrbGenericIterator
    class XrbKbdFeedbackCtl < FFI::Struct
      layout \
          :class_id, :uint8,
          :id, :uint8,
          :len, :uint16,
          :key, :xrb_keycode_t,
          :auto_repeat_mode, :uint8,
          :key_click_percent, :int8,
          :bell_percent, :int8,
          :bell_pitch, :int16,
          :bell_duration, :int16,
          :led_mask, :uint32,
          :led_values, :uint32
    end

    class XrbKbdFeedbackCtlIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_kbd_feedback_ctl_next, [:pointer], :void
    attach_function :xcb_kbd_feedback_ctl_end, [:pointer], XrbGenericIterator
    class XrbPtrFeedbackCtl < FFI::Struct
      layout \
          :class_id, :uint8,
          :id, :uint8,
          :len, :uint16,
          :pad1, [:uint8, 2],
          :num, :int16,
          :denom, :int16,
          :threshold, :int16
    end

    class XrbPtrFeedbackCtlIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_ptr_feedback_ctl_next, [:pointer], :void
    attach_function :xcb_ptr_feedback_ctl_end, [:pointer], XrbGenericIterator
    class XrbIntegerFeedbackCtl < FFI::Struct
      layout \
          :class_id, :uint8,
          :id, :uint8,
          :len, :uint16,
          :int_to_display, :int32
    end

    class XrbIntegerFeedbackCtlIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_integer_feedback_ctl_next, [:pointer], :void
    attach_function :xcb_integer_feedback_ctl_end, [:pointer], XrbGenericIterator
    class XrbStringFeedbackCtl < FFI::Struct
      layout \
          :class_id, :uint8,
          :id, :uint8,
          :len, :uint16,
          :pad1, [:uint8, 2],
          :num_keysyms, :uint16
    end

    class XrbStringFeedbackCtlIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_string_feedback_ctl_next, [:pointer], :void
    attach_function :xcb_string_feedback_ctl_end, [:pointer], XrbGenericIterator
    attach_function :xcb_string_feedback_ctl_sizeof, [:pointer], :int
    attach_function :xcb_string_feedback_ctl_keysyms, [:pointer], :pointer
    attach_function :xcb_string_feedback_ctl_keysyms_length, [:pointer], :int
    class XrbBellFeedbackCtl < FFI::Struct
      layout \
          :class_id, :uint8,
          :id, :uint8,
          :len, :uint16,
          :percent, :int8,
          :pad1, [:uint8, 3],
          :pitch, :int16,
          :duration, :int16
    end

    class XrbBellFeedbackCtlIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_bell_feedback_ctl_next, [:pointer], :void
    attach_function :xcb_bell_feedback_ctl_end, [:pointer], XrbGenericIterator
    class XrbLedFeedbackCtl < FFI::Struct
      layout \
          :class_id, :uint8,
          :id, :uint8,
          :len, :uint16,
          :led_mask, :uint32,
          :led_values, :uint32
    end

    class XrbLedFeedbackCtlIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_led_feedback_ctl_next, [:pointer], :void
    attach_function :xcb_led_feedback_ctl_end, [:pointer], XrbGenericIterator
    class XrbInputState < FFI::Struct
      layout \
          :class_id, :uint8,
          :len, :uint8,
          :num_items, :uint8
    end

    class XrbInputStateIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_input_state_next, [:pointer], :void
    attach_function :xcb_input_state_end, [:pointer], XrbGenericIterator
    class XrbKeyState < FFI::Struct
      layout \
          :class_id, :uint8,
          :len, :uint8,
          :num_keys, :uint8,
          :pad1, [:uint8, 1],
          :keys_len, [:uint32 , 32]
    end

    class XrbKeyStateIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_key_state_next, [:pointer], :void
    attach_function :xcb_key_state_end, [:pointer], XrbGenericIterator
    attach_function :xcb_key_state_sizeof, [:pointer], :int
    attach_function :xcb_key_state_keys, [:pointer], :pointer
    attach_function :xcb_key_state_keys_length, [:pointer], :int
    class XrbButtonState < FFI::Struct
      layout \
          :class_id, :uint8,
          :len, :uint8,
          :num_buttons, :uint8,
          :pad1, [:uint8, 1],
          :buttons_len, [:uint32 , 32]
    end

    class XrbButtonStateIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_button_state_next, [:pointer], :void
    attach_function :xcb_button_state_end, [:pointer], XrbGenericIterator
    attach_function :xcb_button_state_sizeof, [:pointer], :int
    attach_function :xcb_button_state_buttons, [:pointer], :pointer
    attach_function :xcb_button_state_buttons_length, [:pointer], :int
    class XrbValuatorState < FFI::Struct
      layout \
          :class_id, :uint8,
          :len, :uint8,
          :num_valuators, :uint8,
          :mode, :uint8
    end

    class XrbValuatorStateIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_valuator_state_next, [:pointer], :void
    attach_function :xcb_valuator_state_end, [:pointer], XrbGenericIterator
    attach_function :xcb_valuator_state_sizeof, [:pointer], :int
    attach_function :xcb_valuator_state_valuators, [:pointer], :pointer
    attach_function :xcb_valuator_state_valuators_length, [:pointer], :int
    class XrbDeviceState < FFI::Struct
      layout \
          :control_id, :uint16,
          :len, :uint16
    end

    class XrbDeviceStateIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_device_state_next, [:pointer], :void
    attach_function :xcb_device_state_end, [:pointer], XrbGenericIterator
    class XrbDeviceResolutionState < FFI::Struct
      layout \
          :control_id, :uint16,
          :len, :uint16,
          :num_valuators, :uint32
    end

    class XrbDeviceResolutionStateIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_device_resolution_state_next, [:pointer], :void
    attach_function :xcb_device_resolution_state_end, [:pointer], XrbGenericIterator
    attach_function :xcb_device_resolution_state_sizeof, [:pointer], :int
    attach_function :xcb_device_resolution_state_resolution_values, [:pointer], :pointer
    attach_function :xcb_device_resolution_state_resolution_values_length, [:pointer], :int
    attach_function :xcb_device_resolution_state_resolution_min, [:pointer], :pointer
    attach_function :xcb_device_resolution_state_resolution_min_length, [:pointer], :int
    attach_function :xcb_device_resolution_state_resolution_max, [:pointer], :pointer
    attach_function :xcb_device_resolution_state_resolution_max_length, [:pointer], :int
    class XrbDeviceAbsCalibState < FFI::Struct
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

    class XrbDeviceAbsCalibStateIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_device_abs_calib_state_next, [:pointer], :void
    attach_function :xcb_device_abs_calib_state_end, [:pointer], XrbGenericIterator
    class XrbDeviceAbsAreaState < FFI::Struct
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

    class XrbDeviceAbsAreaStateIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_device_abs_area_state_next, [:pointer], :void
    attach_function :xcb_device_abs_area_state_end, [:pointer], XrbGenericIterator
    class XrbDeviceCoreState < FFI::Struct
      layout \
          :control_id, :uint16,
          :len, :uint16,
          :status, :uint8,
          :iscore, :uint8,
          :pad1, [:uint8, 2]
    end

    class XrbDeviceCoreStateIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_device_core_state_next, [:pointer], :void
    attach_function :xcb_device_core_state_end, [:pointer], XrbGenericIterator
    class XrbDeviceEnableState < FFI::Struct
      layout \
          :control_id, :uint16,
          :len, :uint16,
          :enable, :uint8,
          :pad1, [:uint8, 3]
    end

    class XrbDeviceEnableStateIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_device_enable_state_next, [:pointer], :void
    attach_function :xcb_device_enable_state_end, [:pointer], XrbGenericIterator
    class XrbDeviceCtl < FFI::Struct
      layout \
          :control_id, :uint16,
          :len, :uint16
    end

    class XrbDeviceCtlIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_device_ctl_next, [:pointer], :void
    attach_function :xcb_device_ctl_end, [:pointer], XrbGenericIterator
    class XrbDeviceResolutionCtl < FFI::Struct
      layout \
          :control_id, :uint16,
          :len, :uint16,
          :first_valuator, :uint8,
          :num_valuators, :uint8
    end

    class XrbDeviceResolutionCtlIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_device_resolution_ctl_next, [:pointer], :void
    attach_function :xcb_device_resolution_ctl_end, [:pointer], XrbGenericIterator
    attach_function :xcb_device_resolution_ctl_sizeof, [:pointer], :int
    attach_function :xcb_device_resolution_ctl_resolution_values, [:pointer], :pointer
    attach_function :xcb_device_resolution_ctl_resolution_values_length, [:pointer], :int
    class XrbDeviceAbsCalibCtl < FFI::Struct
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

    class XrbDeviceAbsCalibCtlIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_device_abs_calib_ctl_next, [:pointer], :void
    attach_function :xcb_device_abs_calib_ctl_end, [:pointer], XrbGenericIterator
    class XrbDeviceAbsAreaCtrl < FFI::Struct
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

    class XrbDeviceAbsAreaCtrlIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_device_abs_area_ctrl_next, [:pointer], :void
    attach_function :xcb_device_abs_area_ctrl_end, [:pointer], XrbGenericIterator
    class XrbDeviceCoreCtrl < FFI::Struct
      layout \
          :control_id, :uint16,
          :len, :uint16,
          :status, :uint8,
          :pad1, [:uint8, 3]
    end

    class XrbDeviceCoreCtrlIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_device_core_ctrl_next, [:pointer], :void
    attach_function :xcb_device_core_ctrl_end, [:pointer], XrbGenericIterator
    class XrbDeviceEnableCtrl < FFI::Struct
      layout \
          :control_id, :uint16,
          :len, :uint16,
          :enable, :uint8,
          :pad1, [:uint8, 3]
    end

    class XrbDeviceEnableCtrlIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_device_enable_ctrl_next, [:pointer], :void
    attach_function :xcb_device_enable_ctrl_end, [:pointer], XrbGenericIterator
    class XrbDeviceValuatorEvent < FFI::Struct
      layout \
          :response_type, :uint8,
          :device_id, :uint8,
          :device_state, :uint16,
          :num_valuators, :uint8,
          :first_valuator, :uint8,
          :valuators_len, [:uint32 , 6]
    end

    class XrbDeviceKeyPressEvent < FFI::Struct
      layout \
          :response_type, :uint8,
          :detail, :uint8,
          :time, :xrb_timestamp_t,
          :root, :xrb_window_t,
          :event, :xrb_window_t,
          :child, :xrb_window_t,
          :root_x, :int16,
          :root_y, :int16,
          :event_x, :int16,
          :event_y, :int16,
          :state, :uint16,
          :same_screen, :bool,
          :device_id, :uint8
    end

    class XrbDeviceKeyReleaseEvent < FFI::Struct
      layout \
          :response_type, :uint8,
          :detail, :uint8,
          :time, :xrb_timestamp_t,
          :root, :xrb_window_t,
          :event, :xrb_window_t,
          :child, :xrb_window_t,
          :root_x, :int16,
          :root_y, :int16,
          :event_x, :int16,
          :event_y, :int16,
          :state, :uint16,
          :same_screen, :bool,
          :device_id, :uint8
    end

    class XrbDeviceButtonPressEvent < FFI::Struct
      layout \
          :response_type, :uint8,
          :detail, :uint8,
          :time, :xrb_timestamp_t,
          :root, :xrb_window_t,
          :event, :xrb_window_t,
          :child, :xrb_window_t,
          :root_x, :int16,
          :root_y, :int16,
          :event_x, :int16,
          :event_y, :int16,
          :state, :uint16,
          :same_screen, :bool,
          :device_id, :uint8
    end

    class XrbDeviceButtonReleaseEvent < FFI::Struct
      layout \
          :response_type, :uint8,
          :detail, :uint8,
          :time, :xrb_timestamp_t,
          :root, :xrb_window_t,
          :event, :xrb_window_t,
          :child, :xrb_window_t,
          :root_x, :int16,
          :root_y, :int16,
          :event_x, :int16,
          :event_y, :int16,
          :state, :uint16,
          :same_screen, :bool,
          :device_id, :uint8
    end

    class XrbDeviceMotionNotifyEvent < FFI::Struct
      layout \
          :response_type, :uint8,
          :detail, :uint8,
          :time, :xrb_timestamp_t,
          :root, :xrb_window_t,
          :event, :xrb_window_t,
          :child, :xrb_window_t,
          :root_x, :int16,
          :root_y, :int16,
          :event_x, :int16,
          :event_y, :int16,
          :state, :uint16,
          :same_screen, :bool,
          :device_id, :uint8
    end

    class XrbProximityInEvent < FFI::Struct
      layout \
          :response_type, :uint8,
          :detail, :uint8,
          :time, :xrb_timestamp_t,
          :root, :xrb_window_t,
          :event, :xrb_window_t,
          :child, :xrb_window_t,
          :root_x, :int16,
          :root_y, :int16,
          :event_x, :int16,
          :event_y, :int16,
          :state, :uint16,
          :same_screen, :bool,
          :device_id, :uint8
    end

    class XrbProximityOutEvent < FFI::Struct
      layout \
          :response_type, :uint8,
          :detail, :uint8,
          :time, :xrb_timestamp_t,
          :root, :xrb_window_t,
          :event, :xrb_window_t,
          :child, :xrb_window_t,
          :root_x, :int16,
          :root_y, :int16,
          :event_x, :int16,
          :event_y, :int16,
          :state, :uint16,
          :same_screen, :bool,
          :device_id, :uint8
    end

    class XrbFocusInEvent < FFI::Struct
      layout \
          :response_type, :uint8,
          :detail, :uint8,
          :time, :xrb_timestamp_t,
          :window, :xrb_window_t,
          :mode, :uint8,
          :device_id, :uint8,
          :pad1, [:uint8, 18]
    end

    class XrbFocusOutEvent < FFI::Struct
      layout \
          :response_type, :uint8,
          :detail, :uint8,
          :time, :xrb_timestamp_t,
          :window, :xrb_window_t,
          :mode, :uint8,
          :device_id, :uint8,
          :pad1, [:uint8, 18]
    end

    class XrbDeviceStateNotifyEvent < FFI::Struct
      layout \
          :response_type, :uint8,
          :device_id, :uint8,
          :time, :xrb_timestamp_t,
          :num_keys, :uint8,
          :num_buttons, :uint8,
          :num_valuators, :uint8,
          :classes_reported, :uint8,
          :buttons_len, [:uint32 , 4],
          :keys_len, [:uint32 , 4],
          :valuators_len, [:uint32 , 3]
    end

    class XrbDeviceMappingNotifyEvent < FFI::Struct
      layout \
          :response_type, :uint8,
          :device_id, :uint8,
          :request, :uint8,
          :first_keycode, :xrb_keycode_t,
          :count, :uint8,
          :pad1, [:uint8, 1],
          :time, :xrb_timestamp_t,
          :pad2, [:uint8, 20]
    end

    class XrbChangeDeviceNotifyEvent < FFI::Struct
      layout \
          :response_type, :uint8,
          :device_id, :uint8,
          :time, :xrb_timestamp_t,
          :request, :uint8,
          :pad1, [:uint8, 23]
    end

    class XrbDeviceKeyStateNotifyEvent < FFI::Struct
      layout \
          :response_type, :uint8,
          :device_id, :uint8,
          :keys_len, [:uint32 , 28]
    end

    class XrbDeviceButtonStateNotifyEvent < FFI::Struct
      layout \
          :response_type, :uint8,
          :device_id, :uint8,
          :buttons_len, [:uint32 , 28]
    end

    class XrbDevicePresenceNotifyEvent < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :time, :xrb_timestamp_t,
          :devchange, :uint8,
          :device_id, :uint8,
          :control, :uint16,
          :pad2, [:uint8, 20]
    end

    class XrbDeviceError < FFI::Struct
      layout \
          :response_type, :uint8,
          :error_code, :uint8,
          :sequence, :uint16
    end

    class XrbEventError < FFI::Struct
      layout \
          :response_type, :uint8,
          :error_code, :uint8,
          :sequence, :uint16
    end

    class XrbModeError < FFI::Struct
      layout \
          :response_type, :uint8,
          :error_code, :uint8,
          :sequence, :uint16
    end

    class XrbDeviceBusyError < FFI::Struct
      layout \
          :response_type, :uint8,
          :error_code, :uint8,
          :sequence, :uint16
    end

    class XrbClassError < FFI::Struct
      layout \
          :response_type, :uint8,
          :error_code, :uint8,
          :sequence, :uint16
    end

    class XrbGetExtensionVersionRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :server_major, :uint16,
          :server_minor, :uint16,
          :present, :bool,
          :pad2, [:uint8, 19]
    end

    class XrbGetExtensionVersionCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_extension_version, [:pointer,:uint8,:uint8,:uint16,:uint16,:uint16,:bool], XrbGetExtensionVersionCookie
    class XrbGetExtensionVersionReply < FFI::Struct
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

    attach_function :xcb_get_extension_version_reply, [:pointer, XrbGetExtensionVersionCookie, :pointer], :pointer

        
    class XrbListInputDevicesRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :devices_len, :uint8,
          :pad2, [:uint8, 23]
    end

    class XrbListInputDevicesCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_list_input_devices, [:pointer,:uint8,:uint8,:uint16,:uint8,:uint32], XrbListInputDevicesCookie
    class XrbListInputDevicesReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :devices_len, :uint8,
          :pad2, [:uint8, 23]
    end

    attach_function :xcb_list_input_devices_reply, [:pointer, XrbListInputDevicesCookie, :pointer], :pointer

        
    class XrbOpenDeviceRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :num_classes, :uint8,
          :pad2, [:uint8, 23]
    end

    class XrbOpenDeviceCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_open_device, [:pointer,:uint8,:uint8,:uint16,:uint8,:uint32], XrbOpenDeviceCookie
    class XrbOpenDeviceReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :num_classes, :uint8,
          :pad2, [:uint8, 23]
    end

    attach_function :xcb_open_device_reply, [:pointer, XrbOpenDeviceCookie, :pointer], :pointer

        
    class XrbCloseDeviceRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :device_id, :uint8,
          :pad1, [:uint8, 3]
    end

    class XrbCloseDeviceCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_close_device_checked, [:pointer,:uint8,:uint8,:uint16,:uint8], XrbCloseDeviceCookie
    attach_function :xcb_close_device, [:pointer,:uint8,:uint8,:uint16,:uint8], XrbCloseDeviceCookie
    class XrbSetDeviceModeRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :status, :uint8,
          :pad2, [:uint8, 23]
    end

    class XrbSetDeviceModeCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_set_device_mode, [:pointer,:uint8,:uint8,:uint16,:uint8], XrbSetDeviceModeCookie
    class XrbSetDeviceModeReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :status, :uint8,
          :pad2, [:uint8, 23]
    end

    attach_function :xcb_set_device_mode_reply, [:pointer, XrbSetDeviceModeCookie, :pointer], :pointer

        
    class XrbSelectExtensionEventRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :window, :xrb_window_t,
          :num_classes, :uint16,
          :pad1, [:uint8, 2]
    end

    class XrbSelectExtensionEventCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_select_extension_event_checked, [:pointer,:uint8,:uint8,:uint16,:xrb_window_t,:uint16,:uint32], XrbSelectExtensionEventCookie
    attach_function :xcb_select_extension_event, [:pointer,:uint8,:uint8,:uint16,:xrb_window_t,:uint16,:uint32], XrbSelectExtensionEventCookie
    class XrbGetSelectedExtensionEventsRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :num_this_classes, :uint16,
          :num_all_classes, :uint16,
          :pad2, [:uint8, 20]
    end

    class XrbGetSelectedExtensionEventsCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_selected_extension_events, [:pointer,:uint8,:uint8,:uint16,:uint16,:uint16,:uint32,:uint32], XrbGetSelectedExtensionEventsCookie
    class XrbGetSelectedExtensionEventsReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :num_this_classes, :uint16,
          :num_all_classes, :uint16,
          :pad2, [:uint8, 20]
    end

    attach_function :xcb_get_selected_extension_events_reply, [:pointer, XrbGetSelectedExtensionEventsCookie, :pointer], :pointer

        
    class XrbChangeDeviceDontPropagateListRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :window, :xrb_window_t,
          :num_classes, :uint16,
          :mode, :uint8,
          :pad1, [:uint8, 1]
    end

    class XrbChangeDeviceDontPropagateListCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_change_device_dont_propagate_list_checked, [:pointer,:uint8,:uint8,:uint16,:xrb_window_t,:uint16,:uint8,:uint32], XrbChangeDeviceDontPropagateListCookie
    attach_function :xcb_change_device_dont_propagate_list, [:pointer,:uint8,:uint8,:uint16,:xrb_window_t,:uint16,:uint8,:uint32], XrbChangeDeviceDontPropagateListCookie
    class XrbGetDeviceDontPropagateListRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :num_classes, :uint16,
          :pad2, [:uint8, 22]
    end

    class XrbGetDeviceDontPropagateListCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_device_dont_propagate_list, [:pointer,:uint8,:uint8,:uint16,:uint16,:uint32], XrbGetDeviceDontPropagateListCookie
    class XrbGetDeviceDontPropagateListReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :num_classes, :uint16,
          :pad2, [:uint8, 22]
    end

    attach_function :xcb_get_device_dont_propagate_list_reply, [:pointer, XrbGetDeviceDontPropagateListCookie, :pointer], :pointer

        
    class XrbGetDeviceMotionEventsRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :num_coords, :uint32,
          :num_axes, :uint8,
          :device_mode, :uint8,
          :pad2, [:uint8, 18]
    end

    class XrbGetDeviceMotionEventsCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_device_motion_events, [:pointer,:uint8,:uint8,:uint16,:uint32,:uint8,:uint8], XrbGetDeviceMotionEventsCookie
    class XrbGetDeviceMotionEventsReply < FFI::Struct
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

    attach_function :xcb_get_device_motion_events_reply, [:pointer, XrbGetDeviceMotionEventsCookie, :pointer], :pointer

        
    class XrbChangeKeyboardDeviceRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :status, :uint8,
          :pad2, [:uint8, 23]
    end

    class XrbChangeKeyboardDeviceCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_change_keyboard_device, [:pointer,:uint8,:uint8,:uint16,:uint8], XrbChangeKeyboardDeviceCookie
    class XrbChangeKeyboardDeviceReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :status, :uint8,
          :pad2, [:uint8, 23]
    end

    attach_function :xcb_change_keyboard_device_reply, [:pointer, XrbChangeKeyboardDeviceCookie, :pointer], :pointer

        
    class XrbChangePointerDeviceRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :status, :uint8,
          :pad2, [:uint8, 23]
    end

    class XrbChangePointerDeviceCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_change_pointer_device, [:pointer,:uint8,:uint8,:uint16,:uint8], XrbChangePointerDeviceCookie
    class XrbChangePointerDeviceReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :status, :uint8,
          :pad2, [:uint8, 23]
    end

    attach_function :xcb_change_pointer_device_reply, [:pointer, XrbChangePointerDeviceCookie, :pointer], :pointer

        
    class XrbGrabDeviceRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :status, :uint8,
          :pad2, [:uint8, 23]
    end

    class XrbGrabDeviceCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_grab_device, [:pointer,:uint8,:uint8,:uint16,:uint8], XrbGrabDeviceCookie
    class XrbGrabDeviceReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :status, :uint8,
          :pad2, [:uint8, 23]
    end

    attach_function :xcb_grab_device_reply, [:pointer, XrbGrabDeviceCookie, :pointer], :pointer

        
    class XrbUngrabDeviceRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :time, :xrb_timestamp_t,
          :device_id, :uint8
    end

    class XrbUngrabDeviceCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_ungrab_device_checked, [:pointer,:uint8,:uint8,:uint16,:xrb_timestamp_t,:uint8], XrbUngrabDeviceCookie
    attach_function :xcb_ungrab_device, [:pointer,:uint8,:uint8,:uint16,:xrb_timestamp_t,:uint8], XrbUngrabDeviceCookie
    class XrbGrabDeviceKeyRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :grab_window, :xrb_window_t,
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

    class XrbGrabDeviceKeyCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_grab_device_key_checked, [:pointer,:uint8,:uint8,:uint16,:xrb_window_t,:uint16,:uint16,:uint8,:uint8,:uint8,:uint8,:uint8,:bool,:uint32], XrbGrabDeviceKeyCookie
    attach_function :xcb_grab_device_key, [:pointer,:uint8,:uint8,:uint16,:xrb_window_t,:uint16,:uint16,:uint8,:uint8,:uint8,:uint8,:uint8,:bool,:uint32], XrbGrabDeviceKeyCookie
    class XrbUngrabDeviceKeyRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :grabWindow, :xrb_window_t,
          :modifiers, :uint16,
          :modifier_device, :uint8,
          :key, :uint8,
          :grabbed_device, :uint8
    end

    class XrbUngrabDeviceKeyCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_ungrab_device_key_checked, [:pointer,:uint8,:uint8,:uint16,:xrb_window_t,:uint16,:uint8,:uint8,:uint8], XrbUngrabDeviceKeyCookie
    attach_function :xcb_ungrab_device_key, [:pointer,:uint8,:uint8,:uint16,:xrb_window_t,:uint16,:uint8,:uint8,:uint8], XrbUngrabDeviceKeyCookie
    class XrbGrabDeviceButtonRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :grab_window, :xrb_window_t,
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

    class XrbGrabDeviceButtonCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_grab_device_button_checked, [:pointer,:uint8,:uint8,:uint16,:xrb_window_t,:uint8,:uint8,:uint16,:uint16,:uint8,:uint8,:uint8,:uint8,:uint32], XrbGrabDeviceButtonCookie
    attach_function :xcb_grab_device_button, [:pointer,:uint8,:uint8,:uint16,:xrb_window_t,:uint8,:uint8,:uint16,:uint16,:uint8,:uint8,:uint8,:uint8,:uint32], XrbGrabDeviceButtonCookie
    class XrbUngrabDeviceButtonRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :grab_window, :xrb_window_t,
          :modifiers, :uint16,
          :modifier_device, :uint8,
          :button, :uint8,
          :grabbed_device, :uint8
    end

    class XrbUngrabDeviceButtonCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_ungrab_device_button_checked, [:pointer,:uint8,:uint8,:uint16,:xrb_window_t,:uint16,:uint8,:uint8,:uint8], XrbUngrabDeviceButtonCookie
    attach_function :xcb_ungrab_device_button, [:pointer,:uint8,:uint8,:uint16,:xrb_window_t,:uint16,:uint8,:uint8,:uint8], XrbUngrabDeviceButtonCookie
    class XrbAllowDeviceEventsRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :time, :xrb_timestamp_t,
          :mode, :uint8,
          :device_id, :uint8
    end

    class XrbAllowDeviceEventsCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_allow_device_events_checked, [:pointer,:uint8,:uint8,:uint16,:xrb_timestamp_t,:uint8,:uint8], XrbAllowDeviceEventsCookie
    attach_function :xcb_allow_device_events, [:pointer,:uint8,:uint8,:uint16,:xrb_timestamp_t,:uint8,:uint8], XrbAllowDeviceEventsCookie
    class XrbGetDeviceFocusRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :focus, :xrb_window_t,
          :time, :xrb_timestamp_t,
          :revert_to, :uint8,
          :pad2, [:uint8, 15]
    end

    class XrbGetDeviceFocusCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_device_focus, [:pointer,:uint8,:uint8,:uint16,:xrb_window_t,:xrb_timestamp_t,:uint8], XrbGetDeviceFocusCookie
    class XrbGetDeviceFocusReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :focus, :xrb_window_t,
          :time, :xrb_timestamp_t,
          :revert_to, :uint8,
          :pad2, [:uint8, 15]
    end

    attach_function :xcb_get_device_focus_reply, [:pointer, XrbGetDeviceFocusCookie, :pointer], :pointer

        
    class XrbSetDeviceFocusRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :focus, :xrb_window_t,
          :time, :xrb_timestamp_t,
          :revert_to, :uint8,
          :device_id, :uint8
    end

    class XrbSetDeviceFocusCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_set_device_focus_checked, [:pointer,:uint8,:uint8,:uint16,:xrb_window_t,:xrb_timestamp_t,:uint8,:uint8], XrbSetDeviceFocusCookie
    attach_function :xcb_set_device_focus, [:pointer,:uint8,:uint8,:uint16,:xrb_window_t,:xrb_timestamp_t,:uint8,:uint8], XrbSetDeviceFocusCookie
    class XrbGetFeedbackControlRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :num_feedback, :uint16,
          :pad2, [:uint8, 22]
    end

    class XrbGetFeedbackControlCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_feedback_control, [:pointer,:uint8,:uint8,:uint16,:uint16], XrbGetFeedbackControlCookie
    class XrbGetFeedbackControlReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :num_feedback, :uint16,
          :pad2, [:uint8, 22]
    end

    attach_function :xcb_get_feedback_control_reply, [:pointer, XrbGetFeedbackControlCookie, :pointer], :pointer

        
    class XrbGetDeviceKeyMappingRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :keysyms_per_keycode, :uint8,
          :pad2, [:uint8, 23]
    end

    class XrbGetDeviceKeyMappingCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_device_key_mapping, [:pointer,:uint8,:uint8,:uint16,:uint8,:uint32], XrbGetDeviceKeyMappingCookie
    class XrbGetDeviceKeyMappingReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :keysyms_per_keycode, :uint8,
          :pad2, [:uint8, 23]
    end

    attach_function :xcb_get_device_key_mapping_reply, [:pointer, XrbGetDeviceKeyMappingCookie, :pointer], :pointer

        
    class XrbChangeDeviceKeyMappingRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :device_id, :uint8,
          :first_keycode, :xrb_keycode_t,
          :keysyms_per_keycode, :uint8,
          :keycode_count, :uint8
    end

    class XrbChangeDeviceKeyMappingCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_change_device_key_mapping_checked, [:pointer,:uint8,:uint8,:uint16,:uint8,:xrb_keycode_t,:uint8,:uint8,:uint32], XrbChangeDeviceKeyMappingCookie
    attach_function :xcb_change_device_key_mapping, [:pointer,:uint8,:uint8,:uint16,:uint8,:xrb_keycode_t,:uint8,:uint8,:uint32], XrbChangeDeviceKeyMappingCookie
    class XrbGetDeviceModifierMappingRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :keycodes_per_modifier, :uint8,
          :pad2, [:uint8, 23]
    end

    class XrbGetDeviceModifierMappingCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_device_modifier_mapping, [:pointer,:uint8,:uint8,:uint16,:uint8,:uint32], XrbGetDeviceModifierMappingCookie
    class XrbGetDeviceModifierMappingReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :keycodes_per_modifier, :uint8,
          :pad2, [:uint8, 23]
    end

    attach_function :xcb_get_device_modifier_mapping_reply, [:pointer, XrbGetDeviceModifierMappingCookie, :pointer], :pointer

        
    class XrbSetDeviceModifierMappingRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :status, :uint8,
          :pad2, [:uint8, 23]
    end

    class XrbSetDeviceModifierMappingCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_set_device_modifier_mapping, [:pointer,:uint8,:uint8,:uint16,:uint8], XrbSetDeviceModifierMappingCookie
    class XrbSetDeviceModifierMappingReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :status, :uint8,
          :pad2, [:uint8, 23]
    end

    attach_function :xcb_set_device_modifier_mapping_reply, [:pointer, XrbSetDeviceModifierMappingCookie, :pointer], :pointer

        
    class XrbGetDeviceButtonMappingRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :map_size, :uint8,
          :pad2, [:uint8, 23]
    end

    class XrbGetDeviceButtonMappingCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_device_button_mapping, [:pointer,:uint8,:uint8,:uint16,:uint8,:uint32], XrbGetDeviceButtonMappingCookie
    class XrbGetDeviceButtonMappingReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :map_size, :uint8,
          :pad2, [:uint8, 23]
    end

    attach_function :xcb_get_device_button_mapping_reply, [:pointer, XrbGetDeviceButtonMappingCookie, :pointer], :pointer

        
    class XrbSetDeviceButtonMappingRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :status, :uint8,
          :pad2, [:uint8, 23]
    end

    class XrbSetDeviceButtonMappingCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_set_device_button_mapping, [:pointer,:uint8,:uint8,:uint16,:uint8], XrbSetDeviceButtonMappingCookie
    class XrbSetDeviceButtonMappingReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :status, :uint8,
          :pad2, [:uint8, 23]
    end

    attach_function :xcb_set_device_button_mapping_reply, [:pointer, XrbSetDeviceButtonMappingCookie, :pointer], :pointer

        
    class XrbQueryDeviceStateRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :num_classes, :uint8,
          :pad2, [:uint8, 23]
    end

    class XrbQueryDeviceStateCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_query_device_state, [:pointer,:uint8,:uint8,:uint16,:uint8], XrbQueryDeviceStateCookie
    class XrbQueryDeviceStateReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :num_classes, :uint8,
          :pad2, [:uint8, 23]
    end

    attach_function :xcb_query_device_state_reply, [:pointer, XrbQueryDeviceStateCookie, :pointer], :pointer

        
    class XrbSendExtensionEventRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :destination, :xrb_window_t,
          :device_id, :uint8,
          :propagate, :bool,
          :num_classes, :uint16,
          :num_events, :uint8,
          :pad1, [:uint8, 3]
    end

    class XrbSendExtensionEventCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_send_extension_event_checked, [:pointer,:uint8,:uint8,:uint16,:xrb_window_t,:uint8,:bool,:uint16,:uint8,:uint32,:uint32], XrbSendExtensionEventCookie
    attach_function :xcb_send_extension_event, [:pointer,:uint8,:uint8,:uint16,:xrb_window_t,:uint8,:bool,:uint16,:uint8,:uint32,:uint32], XrbSendExtensionEventCookie
    class XrbDeviceBellRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :device_id, :uint8,
          :feedback_id, :uint8,
          :feedback_class, :uint8,
          :percent, :int8
    end

    class XrbDeviceBellCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_device_bell_checked, [:pointer,:uint8,:uint8,:uint16,:uint8,:uint8,:uint8,:int8], XrbDeviceBellCookie
    attach_function :xcb_device_bell, [:pointer,:uint8,:uint8,:uint16,:uint8,:uint8,:uint8,:int8], XrbDeviceBellCookie
    class XrbSetDeviceValuatorsRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :status, :uint8,
          :pad2, [:uint8, 23]
    end

    class XrbSetDeviceValuatorsCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_set_device_valuators, [:pointer,:uint8,:uint8,:uint16,:uint8], XrbSetDeviceValuatorsCookie
    class XrbSetDeviceValuatorsReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :status, :uint8,
          :pad2, [:uint8, 23]
    end

    attach_function :xcb_set_device_valuators_reply, [:pointer, XrbSetDeviceValuatorsCookie, :pointer], :pointer

        
    class XrbGetDeviceControlRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :status, :uint8,
          :pad2, [:uint8, 23]
    end

    class XrbGetDeviceControlCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_device_control, [:pointer,:uint8,:uint8,:uint16,:uint8], XrbGetDeviceControlCookie
    class XrbGetDeviceControlReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :status, :uint8,
          :pad2, [:uint8, 23]
    end

    attach_function :xcb_get_device_control_reply, [:pointer, XrbGetDeviceControlCookie, :pointer], :pointer

        
  end
end
