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
            :device_type, :uint32,
            :device_id, :uint8,
            :num_class_info, :uint8,
            :device_use, :uint8,
            :pad1, [:uint8, 1]
      end
      
      class InputInfo < Xrb::Message
        layout \
            :class_id, :uint8,
            :len, :uint8
      end
      
      class KeyInfo < Xrb::Message
        layout \
            :class_id, :uint8,
            :len, :uint8,
            :min_keycode, :uint8,
            :max_keycode, :uint8,
            :num_keys, :uint16,
            :pad1, [:uint8, 2]
      end
      
      class ButtonInfo < Xrb::Message
        layout \
            :class_id, :uint8,
            :len, :uint8,
            :num_buttons, :uint16
      end
      
      class AxisInfo < Xrb::Message
        layout \
            :resolution, :uint32,
            :minimum, :int32,
            :maximum, :int32
      end
      
      class ValuatorInfo < Xrb::Message
        layout \
            :class_id, :uint8,
            :len, :uint8,
            :axes_len, :uint8,
            :mode, :uint8,
            :motion_size, :uint32,
            :axes, [:axes_len, :string]
      end
      
      class InputClassInfo < Xrb::Message
        layout \
            :class_id, :uint8,
            :event_type_base, :uint8
      end
      
      class DeviceTimeCoord < Xrb::Message
        layout \
            :time, :uint32
      end
      
      class FeedbackState < Xrb::Message
        layout \
            :class_id, :uint8,
            :id, :uint8,
            :len, :uint16
      end
      
      class KbdFeedbackState < Xrb::Message
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
            :auto_repeats, [:uint8, 32]
      end
      
      class PtrFeedbackState < Xrb::Message
        layout \
            :class_id, :uint8,
            :id, :uint8,
            :len, :uint16,
            :pad1, [:uint8, 2],
            :accel_num, :uint16,
            :accel_denom, :uint16,
            :threshold, :uint16
      end
      
      class IntegerFeedbackState < Xrb::Message
        layout \
            :class_id, :uint8,
            :id, :uint8,
            :len, :uint16,
            :resolution, :uint32,
            :min_value, :int32,
            :max_value, :int32
      end
      
      class StringFeedbackState < Xrb::Message
        layout \
            :class_id, :uint8,
            :id, :uint8,
            :len, :uint16,
            :max_symbols, :uint16,
            :num_keysyms, :uint16,
            :keysyms, [:num_keysyms, :string]
      end
      
      class BellFeedbackState < Xrb::Message
        layout \
            :class_id, :uint8,
            :id, :uint8,
            :len, :uint16,
            :percent, :uint8,
            :pad1, [:uint8, 3],
            :pitch, :uint16,
            :duration, :uint16
      end
      
      class LedFeedbackState < Xrb::Message
        layout \
            :class_id, :uint8,
            :id, :uint8,
            :len, :uint16,
            :led_mask, :uint32,
            :led_values, :uint32
      end
      
      class FeedbackCtl < Xrb::Message
        layout \
            :class_id, :uint8,
            :id, :uint8,
            :len, :uint16
      end
      
      class KbdFeedbackCtl < Xrb::Message
        layout \
            :class_id, :uint8,
            :id, :uint8,
            :len, :uint16,
            :key, :uint8,
            :auto_repeat_mode, :uint8,
            :key_click_percent, :int8,
            :bell_percent, :int8,
            :bell_pitch, :int16,
            :bell_duration, :int16,
            :led_mask, :uint32,
            :led_values, :uint32
      end
      
      class PtrFeedbackCtl < Xrb::Message
        layout \
            :class_id, :uint8,
            :id, :uint8,
            :len, :uint16,
            :pad1, [:uint8, 2],
            :num, :int16,
            :denom, :int16,
            :threshold, :int16
      end
      
      class IntegerFeedbackCtl < Xrb::Message
        layout \
            :class_id, :uint8,
            :id, :uint8,
            :len, :uint16,
            :int_to_display, :int32
      end
      
      class StringFeedbackCtl < Xrb::Message
        layout \
            :class_id, :uint8,
            :id, :uint8,
            :len, :uint16,
            :pad1, [:uint8, 2],
            :num_keysyms, :uint16,
            :keysyms, [:num_keysyms, :string]
      end
      
      class BellFeedbackCtl < Xrb::Message
        layout \
            :class_id, :uint8,
            :id, :uint8,
            :len, :uint16,
            :percent, :int8,
            :pad1, [:uint8, 3],
            :pitch, :int16,
            :duration, :int16
      end
      
      class LedFeedbackCtl < Xrb::Message
        layout \
            :class_id, :uint8,
            :id, :uint8,
            :len, :uint16,
            :led_mask, :uint32,
            :led_values, :uint32
      end
      
      class InputState < Xrb::Message
        layout \
            :class_id, :uint8,
            :len, :uint8,
            :num_items, :uint8
      end
      
      class KeyState < Xrb::Message
        layout \
            :class_id, :uint8,
            :len, :uint8,
            :num_keys, :uint8,
            :pad1, [:uint8, 1],
            :keys, [:uint8, 32]
      end
      
      class ButtonState < Xrb::Message
        layout \
            :class_id, :uint8,
            :len, :uint8,
            :num_buttons, :uint8,
            :pad1, [:uint8, 1],
            :buttons, [:uint8, 32]
      end
      
      class ValuatorState < Xrb::Message
        layout \
            :class_id, :uint8,
            :len, :uint8,
            :num_valuators, :uint8,
            :mode, :uint8,
            :valuators, [:num_valuators, :string]
      end
      
      class DeviceState < Xrb::Message
        layout \
            :control_id, :uint16,
            :len, :uint16
      end
      
      class DeviceResolutionState < Xrb::Message
        layout \
            :control_id, :uint16,
            :len, :uint16,
            :num_valuators, :uint32,
            :resolution_values, [:num_valuators, :string],
            :resolution_min, [:num_valuators, :string],
            :resolution_max, [:num_valuators, :string]
      end
      
      class DeviceAbsCalibState < Xrb::Message
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
      
      class DeviceAbsAreaState < Xrb::Message
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
      
      class DeviceCoreState < Xrb::Message
        layout \
            :control_id, :uint16,
            :len, :uint16,
            :status, :uint8,
            :iscore, :uint8,
            :pad1, [:uint8, 2]
      end
      
      class DeviceEnableState < Xrb::Message
        layout \
            :control_id, :uint16,
            :len, :uint16,
            :enable, :uint8,
            :pad1, [:uint8, 3]
      end
      
      class DeviceCtl < Xrb::Message
        layout \
            :control_id, :uint16,
            :len, :uint16
      end
      
      class DeviceResolutionCtl < Xrb::Message
        layout \
            :control_id, :uint16,
            :len, :uint16,
            :first_valuator, :uint8,
            :num_valuators, :uint8,
            :resolution_values, [:num_valuators, :string]
      end
      
      class DeviceAbsCalibCtl < Xrb::Message
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
      
      class DeviceAbsAreaCtrl < Xrb::Message
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
      
      class DeviceCoreCtrl < Xrb::Message
        layout \
            :control_id, :uint16,
            :len, :uint16,
            :status, :uint8,
            :pad1, [:uint8, 3]
      end
      
      class DeviceEnableCtrl < Xrb::Message
        layout \
            :control_id, :uint16,
            :len, :uint16,
            :enable, :uint8,
            :pad1, [:uint8, 3]
      end
      
    end
  end
end
