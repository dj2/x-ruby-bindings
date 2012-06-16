#
# This file was auto-generated. Do not edit.
#

module Xrb
  module Input
    class Message
      class KeyCode
        attr_accessor :id

        def to_wire
          [id].pack('C')
        end
      end

      class EventClass
        attr_accessor :id

        def to_wire
          [id].pack('L')
        end
      end

      class DeviceInfo < Xrb::Message
        layout \
            :device_type, {type: :uint32},
            :device_id, {type: :uint8},
            :num_class_info, {type: :uint8},
            :device_use, {type: :uint8},
            :pad1, {size: 1, type: :uint8}
      end

      class InputInfo < Xrb::Message
        layout \
            :class_id, {type: :uint8},
            :len, {type: :uint8}
      end

      class KeyInfo < Xrb::Message
        layout \
            :class_id, {type: :uint8},
            :len, {type: :uint8},
            :min_keycode, {type: :uint8},
            :max_keycode, {type: :uint8},
            :num_keys, {type: :uint16},
            :pad1, {size: 2, type: :uint8}
      end

      class ButtonInfo < Xrb::Message
        layout \
            :class_id, {type: :uint8},
            :len, {type: :uint8},
            :num_buttons, {type: :uint16}
      end

      class AxisInfo < Xrb::Message
        layout \
            :resolution, {type: :uint32},
            :minimum, {type: :int32},
            :maximum, {type: :int32}
      end

      class ValuatorInfo < Xrb::Message
        layout \
            :class_id, {type: :uint8},
            :len, {type: :uint8},
            :axes_len, {type: :uint8},
            :mode, {type: :uint8},
            :motion_size, {type: :uint32},
            :axes, {length_field: :axes_len, type: AxisInfo, kind: :list}
      end

      class InputClassInfo < Xrb::Message
        layout \
            :class_id, {type: :uint8},
            :event_type_base, {type: :uint8}
      end

      class DeviceTimeCoord < Xrb::Message
        layout \
            :time, {type: :uint32}
      end

      class FeedbackState < Xrb::Message
        layout \
            :class_id, {type: :uint8},
            :id, {type: :uint8},
            :len, {type: :uint16}
      end

      class KbdFeedbackState < Xrb::Message
        layout \
            :class_id, {type: :uint8},
            :id, {type: :uint8},
            :len, {type: :uint16},
            :pitch, {type: :uint16},
            :duration, {type: :uint16},
            :led_mask, {type: :uint32},
            :led_values, {type: :uint32},
            :global_auto_repeat, {type: :bool},
            :click, {type: :uint8},
            :percent, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :auto_repeats, {type: :uint8, size: 32}
      end

      class PtrFeedbackState < Xrb::Message
        layout \
            :class_id, {type: :uint8},
            :id, {type: :uint8},
            :len, {type: :uint16},
            :pad1, {size: 2, type: :uint8},
            :accel_num, {type: :uint16},
            :accel_denom, {type: :uint16},
            :threshold, {type: :uint16}
      end

      class IntegerFeedbackState < Xrb::Message
        layout \
            :class_id, {type: :uint8},
            :id, {type: :uint8},
            :len, {type: :uint16},
            :resolution, {type: :uint32},
            :min_value, {type: :int32},
            :max_value, {type: :int32}
      end

      class StringFeedbackState < Xrb::Message
        layout \
            :class_id, {type: :uint8},
            :id, {type: :uint8},
            :len, {type: :uint16},
            :max_symbols, {type: :uint16},
            :num_keysyms, {type: :uint16},
            :keysyms, {length_field: :num_keysyms, type: :uint32, kind: :list}
      end

      class BellFeedbackState < Xrb::Message
        layout \
            :class_id, {type: :uint8},
            :id, {type: :uint8},
            :len, {type: :uint16},
            :percent, {type: :uint8},
            :pad1, {size: 3, type: :uint8},
            :pitch, {type: :uint16},
            :duration, {type: :uint16}
      end

      class LedFeedbackState < Xrb::Message
        layout \
            :class_id, {type: :uint8},
            :id, {type: :uint8},
            :len, {type: :uint16},
            :led_mask, {type: :uint32},
            :led_values, {type: :uint32}
      end

      class FeedbackCtl < Xrb::Message
        layout \
            :class_id, {type: :uint8},
            :id, {type: :uint8},
            :len, {type: :uint16}
      end

      class KbdFeedbackCtl < Xrb::Message
        layout \
            :class_id, {type: :uint8},
            :id, {type: :uint8},
            :len, {type: :uint16},
            :key, {type: :uint8},
            :auto_repeat_mode, {type: :uint8},
            :key_click_percent, {type: :int8},
            :bell_percent, {type: :int8},
            :bell_pitch, {type: :int16},
            :bell_duration, {type: :int16},
            :led_mask, {type: :uint32},
            :led_values, {type: :uint32}
      end

      class PtrFeedbackCtl < Xrb::Message
        layout \
            :class_id, {type: :uint8},
            :id, {type: :uint8},
            :len, {type: :uint16},
            :pad1, {size: 2, type: :uint8},
            :num, {type: :int16},
            :denom, {type: :int16},
            :threshold, {type: :int16}
      end

      class IntegerFeedbackCtl < Xrb::Message
        layout \
            :class_id, {type: :uint8},
            :id, {type: :uint8},
            :len, {type: :uint16},
            :int_to_display, {type: :int32}
      end

      class StringFeedbackCtl < Xrb::Message
        layout \
            :class_id, {type: :uint8},
            :id, {type: :uint8},
            :len, {type: :uint16},
            :pad1, {size: 2, type: :uint8},
            :num_keysyms, {type: :uint16},
            :keysyms, {length_field: :num_keysyms, type: :uint32, kind: :list}
      end

      class BellFeedbackCtl < Xrb::Message
        layout \
            :class_id, {type: :uint8},
            :id, {type: :uint8},
            :len, {type: :uint16},
            :percent, {type: :int8},
            :pad1, {size: 3, type: :uint8},
            :pitch, {type: :int16},
            :duration, {type: :int16}
      end

      class LedFeedbackCtl < Xrb::Message
        layout \
            :class_id, {type: :uint8},
            :id, {type: :uint8},
            :len, {type: :uint16},
            :led_mask, {type: :uint32},
            :led_values, {type: :uint32}
      end

      class InputState < Xrb::Message
        layout \
            :class_id, {type: :uint8},
            :len, {type: :uint8},
            :num_items, {type: :uint8}
      end

      class KeyState < Xrb::Message
        layout \
            :class_id, {type: :uint8},
            :len, {type: :uint8},
            :num_keys, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :keys, {type: :uint8, size: 32}
      end

      class ButtonState < Xrb::Message
        layout \
            :class_id, {type: :uint8},
            :len, {type: :uint8},
            :num_buttons, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :buttons, {type: :uint8, size: 32}
      end

      class ValuatorState < Xrb::Message
        layout \
            :class_id, {type: :uint8},
            :len, {type: :uint8},
            :num_valuators, {type: :uint8},
            :mode, {type: :uint8},
            :valuators, {length_field: :num_valuators, type: :uint32, kind: :list}
      end

      class DeviceState < Xrb::Message
        layout \
            :control_id, {type: :uint16},
            :len, {type: :uint16}
      end

      class DeviceResolutionState < Xrb::Message
        layout \
            :control_id, {type: :uint16},
            :len, {type: :uint16},
            :num_valuators, {type: :uint32},
            :resolution_values, {length_field: :num_valuators, type: :uint32, kind: :list},
            :resolution_min, {length_field: :num_valuators, type: :uint32, kind: :list},
            :resolution_max, {length_field: :num_valuators, type: :uint32, kind: :list}
      end

      class DeviceAbsCalibState < Xrb::Message
        layout \
            :control_id, {type: :uint16},
            :len, {type: :uint16},
            :min_x, {type: :int32},
            :max_x, {type: :int32},
            :min_y, {type: :int32},
            :max_y, {type: :int32},
            :flip_x, {type: :uint32},
            :flip_y, {type: :uint32},
            :rotation, {type: :uint32},
            :button_threshold, {type: :uint32}
      end

      class DeviceAbsAreaState < Xrb::Message
        layout \
            :control_id, {type: :uint16},
            :len, {type: :uint16},
            :offset_x, {type: :uint32},
            :offset_y, {type: :uint32},
            :width, {type: :uint32},
            :height, {type: :uint32},
            :screen, {type: :uint32},
            :following, {type: :uint32}
      end

      class DeviceCoreState < Xrb::Message
        layout \
            :control_id, {type: :uint16},
            :len, {type: :uint16},
            :status, {type: :uint8},
            :iscore, {type: :uint8},
            :pad1, {size: 2, type: :uint8}
      end

      class DeviceEnableState < Xrb::Message
        layout \
            :control_id, {type: :uint16},
            :len, {type: :uint16},
            :enable, {type: :uint8},
            :pad1, {size: 3, type: :uint8}
      end

      class DeviceCtl < Xrb::Message
        layout \
            :control_id, {type: :uint16},
            :len, {type: :uint16}
      end

      class DeviceResolutionCtl < Xrb::Message
        layout \
            :control_id, {type: :uint16},
            :len, {type: :uint16},
            :first_valuator, {type: :uint8},
            :num_valuators, {type: :uint8},
            :resolution_values, {length_field: :num_valuators, type: :uint32, kind: :list}
      end

      class DeviceAbsCalibCtl < Xrb::Message
        layout \
            :control_id, {type: :uint16},
            :len, {type: :uint16},
            :min_x, {type: :int32},
            :max_x, {type: :int32},
            :min_y, {type: :int32},
            :max_y, {type: :int32},
            :flip_x, {type: :uint32},
            :flip_y, {type: :uint32},
            :rotation, {type: :uint32},
            :button_threshold, {type: :uint32}
      end

      class DeviceAbsAreaCtrl < Xrb::Message
        layout \
            :control_id, {type: :uint16},
            :len, {type: :uint16},
            :offset_x, {type: :uint32},
            :offset_y, {type: :uint32},
            :width, {type: :int32},
            :height, {type: :int32},
            :screen, {type: :int32},
            :following, {type: :uint32}
      end

      class DeviceCoreCtrl < Xrb::Message
        layout \
            :control_id, {type: :uint16},
            :len, {type: :uint16},
            :status, {type: :uint8},
            :pad1, {size: 3, type: :uint8}
      end

      class DeviceEnableCtrl < Xrb::Message
        layout \
            :control_id, {type: :uint16},
            :len, {type: :uint16},
            :enable, {type: :uint8},
            :pad1, {size: 3, type: :uint8}
      end

    end
  end
end
