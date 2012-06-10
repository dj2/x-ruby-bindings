#
# This file was auto-generated. Do not edit.
#

module Xrb
  module Reply
    class GetWindowAttributes < Xrb::Message
      layout \
          :response_type, :uint8,
          :backing_store, :uint8,
          :sequence, :uint16,
          :length, :uint32,
          :visual, :uint32,
          :class, :uint16,
          :bit_gravity, :uint8,
          :win_gravity, :uint8,
          :backing_planes, :uint32,
          :backing_pixel, :uint32,
          :save_under, :bool,
          :map_is_installed, :bool,
          :map_state, :uint8,
          :override_redirect, :bool,
          :colormap, :uint32,
          :all_event_masks, :uint32,
          :your_event_mask, :uint32,
          :do_not_propagate_mask, :uint16,
          :pad1, [2, :uint8]
    end
    
    class GetGeometry < Xrb::Message
      layout \
          :response_type, :uint8,
          :depth, :uint8,
          :sequence, :uint16,
          :length, :uint32,
          :root, :uint32,
          :x, :int16,
          :y, :int16,
          :width, :uint16,
          :height, :uint16,
          :border_width, :uint16,
          :pad1, [2, :uint8]
    end
    
    class QueryTree < Xrb::Message
      layout \
          :response_type, :uint8,
          :pad1, [1, :uint8],
          :sequence, :uint16,
          :length, :uint32,
          :root, :uint32,
          :parent, :uint32,
          :children_len, :uint16,
          :pad2, [14, :uint8],
          :children, [:children_len, :uint32, :list]
    end
    
    class InternAtom < Xrb::Message
      layout \
          :response_type, :uint8,
          :pad1, [1, :uint8],
          :sequence, :uint16,
          :length, :uint32,
          :atom, :uint32
    end
    
    class GetAtomName < Xrb::Message
      layout \
          :response_type, :uint8,
          :pad1, [1, :uint8],
          :sequence, :uint16,
          :length, :uint32,
          :name_len, :uint16,
          :pad2, [22, :uint8],
          :name, [:name_len, :char, :string]
    end
    
    class GetProperty < Xrb::Message
      layout \
          :response_type, :uint8,
          :format, :uint8,
          :sequence, :uint16,
          :length, :uint32,
          :type, :uint32,
          :bytes_after, :uint32,
          :value_len, :uint32,
          :pad1, [12, :uint8],
          :value, [:format, :uint8, :list]
    end
    
    class ListProperties < Xrb::Message
      layout \
          :response_type, :uint8,
          :pad1, [1, :uint8],
          :sequence, :uint16,
          :length, :uint32,
          :atoms_len, :uint16,
          :pad2, [22, :uint8],
          :atoms, [:atoms_len, :uint32, :list]
    end
    
    class GetSelectionOwner < Xrb::Message
      layout \
          :response_type, :uint8,
          :pad1, [1, :uint8],
          :sequence, :uint16,
          :length, :uint32,
          :owner, :uint32
    end
    
    class GrabPointer < Xrb::Message
      layout \
          :response_type, :uint8,
          :status, :uint8,
          :sequence, :uint16,
          :length, :uint32
    end
    
    class GrabKeyboard < Xrb::Message
      layout \
          :response_type, :uint8,
          :status, :uint8,
          :sequence, :uint16,
          :length, :uint32
    end
    
    class QueryPointer < Xrb::Message
      layout \
          :response_type, :uint8,
          :same_screen, :bool,
          :sequence, :uint16,
          :length, :uint32,
          :root, :uint32,
          :child, :uint32,
          :root_x, :int16,
          :root_y, :int16,
          :win_x, :int16,
          :win_y, :int16,
          :mask, :uint16,
          :pad1, [2, :uint8]
    end
    
    class GetMotionEvents < Xrb::Message
      layout \
          :response_type, :uint8,
          :pad1, [1, :uint8],
          :sequence, :uint16,
          :length, :uint32,
          :events_len, :uint32,
          :pad2, [20, :uint8],
          :events, [:events_len, TimeCoord, :list]
    end
    
    class TranslateCoordinates < Xrb::Message
      layout \
          :response_type, :uint8,
          :same_screen, :bool,
          :sequence, :uint16,
          :length, :uint32,
          :child, :uint32,
          :dst_x, :int16,
          :dst_y, :int16
    end
    
    class GetInputFocus < Xrb::Message
      layout \
          :response_type, :uint8,
          :revert_to, :uint8,
          :sequence, :uint16,
          :length, :uint32,
          :focus, :uint32
    end
    
    class QueryKeymap < Xrb::Message
      layout \
          :response_type, :uint8,
          :pad1, [1, :uint8],
          :sequence, :uint16,
          :length, :uint32,
          :keys, [:uint8, 32]
    end
    
    class QueryFont < Xrb::Message
      layout \
          :response_type, :uint8,
          :pad1, [1, :uint8],
          :sequence, :uint16,
          :length, :uint32,
          :min_bounds, :CHARINFO,
          :pad2, [4, :uint8],
          :max_bounds, :CHARINFO,
          :pad3, [4, :uint8],
          :min_char_or_byte2, :uint16,
          :max_char_or_byte2, :uint16,
          :default_char, :uint16,
          :properties_len, :uint16,
          :draw_direction, :uint8,
          :min_byte1, :uint8,
          :max_byte1, :uint8,
          :all_chars_exist, :bool,
          :font_ascent, :int16,
          :font_descent, :int16,
          :char_infos_len, :uint32,
          :properties, [:properties_len, FontProp, :list],
          :char_infos, [:char_infos_len, CharInfo, :list]
    end
    
    class QueryTextExtents < Xrb::Message
      layout \
          :response_type, :uint8,
          :draw_direction, :uint8,
          :sequence, :uint16,
          :length, :uint32,
          :font_ascent, :int16,
          :font_descent, :int16,
          :overall_ascent, :int16,
          :overall_descent, :int16,
          :overall_width, :int32,
          :overall_left, :int32,
          :overall_right, :int32
    end
    
    class ListFonts < Xrb::Message
      layout \
          :response_type, :uint8,
          :pad1, [1, :uint8],
          :sequence, :uint16,
          :length, :uint32,
          :names_len, :uint16,
          :pad2, [22, :uint8],
          :names, [:names_len, Str, :list]
    end
    
    class ListFontsWithInfo < Xrb::Message
      layout \
          :response_type, :uint8,
          :name_len, :uint8,
          :sequence, :uint16,
          :length, :uint32,
          :min_bounds, :CHARINFO,
          :pad1, [4, :uint8],
          :max_bounds, :CHARINFO,
          :pad2, [4, :uint8],
          :min_char_or_byte2, :uint16,
          :max_char_or_byte2, :uint16,
          :default_char, :uint16,
          :properties_len, :uint16,
          :draw_direction, :uint8,
          :min_byte1, :uint8,
          :max_byte1, :uint8,
          :all_chars_exist, :bool,
          :font_ascent, :int16,
          :font_descent, :int16,
          :replies_hint, :uint32,
          :properties, [:properties_len, FontProp, :list],
          :name, [:name_len, :char, :string]
    end
    
    class GetFontPath < Xrb::Message
      layout \
          :response_type, :uint8,
          :pad1, [1, :uint8],
          :sequence, :uint16,
          :length, :uint32,
          :path_len, :uint16,
          :pad2, [22, :uint8],
          :path, [:path_len, Str, :list]
    end
    
    class GetImage < Xrb::Message
      layout \
          :response_type, :uint8,
          :depth, :uint8,
          :sequence, :uint16,
          :length, :uint32,
          :visual, :uint32,
          :pad1, [20, :uint8],
          :data, [:length, :uint8, :list]
    end
    
    class ListInstalledColormaps < Xrb::Message
      layout \
          :response_type, :uint8,
          :pad1, [1, :uint8],
          :sequence, :uint16,
          :length, :uint32,
          :cmaps_len, :uint16,
          :pad2, [22, :uint8],
          :cmaps, [:cmaps_len, :uint32, :list]
    end
    
    class AllocColor < Xrb::Message
      layout \
          :response_type, :uint8,
          :pad1, [1, :uint8],
          :sequence, :uint16,
          :length, :uint32,
          :red, :uint16,
          :green, :uint16,
          :blue, :uint16,
          :pad2, [2, :uint8],
          :pixel, :uint32
    end
    
    class AllocNamedColor < Xrb::Message
      layout \
          :response_type, :uint8,
          :pad1, [1, :uint8],
          :sequence, :uint16,
          :length, :uint32,
          :pixel, :uint32,
          :exact_red, :uint16,
          :exact_green, :uint16,
          :exact_blue, :uint16,
          :visual_red, :uint16,
          :visual_green, :uint16,
          :visual_blue, :uint16
    end
    
    class AllocColorCells < Xrb::Message
      layout \
          :response_type, :uint8,
          :pad1, [1, :uint8],
          :sequence, :uint16,
          :length, :uint32,
          :pixels_len, :uint16,
          :masks_len, :uint16,
          :pad2, [20, :uint8],
          :pixels, [:pixels_len, :uint32, :list],
          :masks, [:masks_len, :uint32, :list]
    end
    
    class AllocColorPlanes < Xrb::Message
      layout \
          :response_type, :uint8,
          :pad1, [1, :uint8],
          :sequence, :uint16,
          :length, :uint32,
          :pixels_len, :uint16,
          :pad2, [2, :uint8],
          :red_mask, :uint32,
          :green_mask, :uint32,
          :blue_mask, :uint32,
          :pad3, [8, :uint8],
          :pixels, [:pixels_len, :uint32, :list]
    end
    
    class QueryColors < Xrb::Message
      layout \
          :response_type, :uint8,
          :pad1, [1, :uint8],
          :sequence, :uint16,
          :length, :uint32,
          :colors_len, :uint16,
          :pad2, [22, :uint8],
          :colors, [:colors_len, RGB, :list]
    end
    
    class LookupColor < Xrb::Message
      layout \
          :response_type, :uint8,
          :pad1, [1, :uint8],
          :sequence, :uint16,
          :length, :uint32,
          :exact_red, :uint16,
          :exact_green, :uint16,
          :exact_blue, :uint16,
          :visual_red, :uint16,
          :visual_green, :uint16,
          :visual_blue, :uint16
    end
    
    class QueryBestSize < Xrb::Message
      layout \
          :response_type, :uint8,
          :pad1, [1, :uint8],
          :sequence, :uint16,
          :length, :uint32,
          :width, :uint16,
          :height, :uint16
    end
    
    class QueryExtension < Xrb::Message
      layout \
          :response_type, :uint8,
          :pad1, [1, :uint8],
          :sequence, :uint16,
          :length, :uint32,
          :present, :bool,
          :major_opcode, :uint8,
          :first_event, :uint8,
          :first_error, :uint8
    end
    
    class ListExtensions < Xrb::Message
      layout \
          :response_type, :uint8,
          :names_len, :uint8,
          :sequence, :uint16,
          :length, :uint32,
          :pad1, [24, :uint8],
          :names, [:names_len, Str, :list]
    end
    
    class GetKeyboardMapping < Xrb::Message
      layout \
          :response_type, :uint8,
          :keysyms_per_keycode, :uint8,
          :sequence, :uint16,
          :length, :uint32,
          :pad1, [24, :uint8],
          :keysyms, [:length, :uint32, :list]
    end
    
    class GetKeyboardControl < Xrb::Message
      layout \
          :response_type, :uint8,
          :global_auto_repeat, :uint8,
          :sequence, :uint16,
          :length, :uint32,
          :led_mask, :uint32,
          :key_click_percent, :uint8,
          :bell_percent, :uint8,
          :bell_pitch, :uint16,
          :bell_duration, :uint16,
          :pad1, [2, :uint8],
          :auto_repeats, [:uint8, 32]
    end
    
    class GetPointerControl < Xrb::Message
      layout \
          :response_type, :uint8,
          :pad1, [1, :uint8],
          :sequence, :uint16,
          :length, :uint32,
          :acceleration_numerator, :uint16,
          :acceleration_denominator, :uint16,
          :threshold, :uint16,
          :pad2, [18, :uint8]
    end
    
    class GetScreenSaver < Xrb::Message
      layout \
          :response_type, :uint8,
          :pad1, [1, :uint8],
          :sequence, :uint16,
          :length, :uint32,
          :timeout, :uint16,
          :interval, :uint16,
          :prefer_blanking, :uint8,
          :allow_exposures, :uint8,
          :pad2, [18, :uint8]
    end
    
    class ListHosts < Xrb::Message
      layout \
          :response_type, :uint8,
          :mode, :uint8,
          :sequence, :uint16,
          :length, :uint32,
          :hosts_len, :uint16,
          :pad1, [22, :uint8],
          :hosts, [:hosts_len, Host, :list]
    end
    
    class SetPointerMapping < Xrb::Message
      layout \
          :response_type, :uint8,
          :status, :uint8,
          :sequence, :uint16,
          :length, :uint32
    end
    
    class GetPointerMapping < Xrb::Message
      layout \
          :response_type, :uint8,
          :map_len, :uint8,
          :sequence, :uint16,
          :length, :uint32,
          :pad1, [24, :uint8],
          :map, [:map_len, :uint8, :list]
    end
    
    class SetModifierMapping < Xrb::Message
      layout \
          :response_type, :uint8,
          :status, :uint8,
          :sequence, :uint16,
          :length, :uint32
    end
    
    class GetModifierMapping < Xrb::Message
      layout \
          :response_type, :uint8,
          :keycodes_per_modifier, :uint8,
          :sequence, :uint16,
          :length, :uint32,
          :pad1, [24, :uint8],
          :keycodes, [:keycodes_per_modifier, :uint8, :list]
    end
    
  end
end
