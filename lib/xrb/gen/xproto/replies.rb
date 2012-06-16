#
# This file was auto-generated. Do not edit.
#

module Xrb
  module Reply
    class GetWindowAttributes < Xrb::Message
      layout \
          :response_type, {type: :uint8},
          :backing_store, {type: :uint8},
          :sequence, {type: :uint16},
          :length, {type: :uint32},
          :visual, {type: :uint32},
          :class, {type: :uint16},
          :bit_gravity, {type: :uint8},
          :win_gravity, {type: :uint8},
          :backing_planes, {type: :uint32},
          :backing_pixel, {type: :uint32},
          :save_under, {type: :bool},
          :map_is_installed, {type: :bool},
          :map_state, {type: :uint8},
          :override_redirect, {type: :bool},
          :colormap, {type: :uint32},
          :all_event_masks, {type: :uint32},
          :your_event_mask, {type: :uint32},
          :do_not_propagate_mask, {type: :uint16},
          :pad1, {size: 2, type: :uint8}
    end

    class GetGeometry < Xrb::Message
      layout \
          :response_type, {type: :uint8},
          :depth, {type: :uint8},
          :sequence, {type: :uint16},
          :length, {type: :uint32},
          :root, {type: :uint32},
          :x, {type: :int16},
          :y, {type: :int16},
          :width, {type: :uint16},
          :height, {type: :uint16},
          :border_width, {type: :uint16},
          :pad1, {size: 2, type: :uint8}
    end

    class QueryTree < Xrb::Message
      layout \
          :response_type, {type: :uint8},
          :pad1, {size: 1, type: :uint8},
          :sequence, {type: :uint16},
          :length, {type: :uint32},
          :root, {type: :uint32},
          :parent, {type: :uint32},
          :children_len, {type: :uint16},
          :pad2, {size: 14, type: :uint8},
          :children, {length_field: :children_len, type: :uint32, kind: :list}
    end

    class InternAtom < Xrb::Message
      layout \
          :response_type, {type: :uint8},
          :pad1, {size: 1, type: :uint8},
          :sequence, {type: :uint16},
          :length, {type: :uint32},
          :atom, {type: :uint32}
    end

    class GetAtomName < Xrb::Message
      layout \
          :response_type, {type: :uint8},
          :pad1, {size: 1, type: :uint8},
          :sequence, {type: :uint16},
          :length, {type: :uint32},
          :name_len, {type: :uint16},
          :pad2, {size: 22, type: :uint8},
          :name, {length_field: :name_len, type: :char, kind: :string}
    end

    class GetProperty < Xrb::Message
      layout \
          :response_type, {type: :uint8},
          :format, {type: :uint8},
          :sequence, {type: :uint16},
          :length, {type: :uint32},
          :type, {type: :uint32},
          :bytes_after, {type: :uint32},
          :value_len, {type: :uint32},
          :pad1, {size: 12, type: :uint8},
          :value, {length_field: :format, type: :uint8, kind: :list}
    end

    class ListProperties < Xrb::Message
      layout \
          :response_type, {type: :uint8},
          :pad1, {size: 1, type: :uint8},
          :sequence, {type: :uint16},
          :length, {type: :uint32},
          :atoms_len, {type: :uint16},
          :pad2, {size: 22, type: :uint8},
          :atoms, {length_field: :atoms_len, type: :uint32, kind: :list}
    end

    class GetSelectionOwner < Xrb::Message
      layout \
          :response_type, {type: :uint8},
          :pad1, {size: 1, type: :uint8},
          :sequence, {type: :uint16},
          :length, {type: :uint32},
          :owner, {type: :uint32}
    end

    class GrabPointer < Xrb::Message
      layout \
          :response_type, {type: :uint8},
          :status, {type: :uint8},
          :sequence, {type: :uint16},
          :length, {type: :uint32}
    end

    class GrabKeyboard < Xrb::Message
      layout \
          :response_type, {type: :uint8},
          :status, {type: :uint8},
          :sequence, {type: :uint16},
          :length, {type: :uint32}
    end

    class QueryPointer < Xrb::Message
      layout \
          :response_type, {type: :uint8},
          :same_screen, {type: :bool},
          :sequence, {type: :uint16},
          :length, {type: :uint32},
          :root, {type: :uint32},
          :child, {type: :uint32},
          :root_x, {type: :int16},
          :root_y, {type: :int16},
          :win_x, {type: :int16},
          :win_y, {type: :int16},
          :mask, {type: :uint16},
          :pad1, {size: 2, type: :uint8}
    end

    class GetMotionEvents < Xrb::Message
      layout \
          :response_type, {type: :uint8},
          :pad1, {size: 1, type: :uint8},
          :sequence, {type: :uint16},
          :length, {type: :uint32},
          :events_len, {type: :uint32},
          :pad2, {size: 20, type: :uint8},
          :events, {length_field: :events_len, type: TimeCoord, kind: :list}
    end

    class TranslateCoordinates < Xrb::Message
      layout \
          :response_type, {type: :uint8},
          :same_screen, {type: :bool},
          :sequence, {type: :uint16},
          :length, {type: :uint32},
          :child, {type: :uint32},
          :dst_x, {type: :int16},
          :dst_y, {type: :int16}
    end

    class GetInputFocus < Xrb::Message
      layout \
          :response_type, {type: :uint8},
          :revert_to, {type: :uint8},
          :sequence, {type: :uint16},
          :length, {type: :uint32},
          :focus, {type: :uint32}
    end

    class QueryKeymap < Xrb::Message
      layout \
          :response_type, {type: :uint8},
          :pad1, {size: 1, type: :uint8},
          :sequence, {type: :uint16},
          :length, {type: :uint32},
          :keys, {type: :uint8, size: 32}
    end

    class QueryFont < Xrb::Message
      layout \
          :response_type, {type: :uint8},
          :pad1, {size: 1, type: :uint8},
          :sequence, {type: :uint16},
          :length, {type: :uint32},
          :min_bounds, {type: :CHARINFO},
          :pad2, {size: 4, type: :uint8},
          :max_bounds, {type: :CHARINFO},
          :pad3, {size: 4, type: :uint8},
          :min_char_or_byte2, {type: :uint16},
          :max_char_or_byte2, {type: :uint16},
          :default_char, {type: :uint16},
          :properties_len, {type: :uint16},
          :draw_direction, {type: :uint8},
          :min_byte1, {type: :uint8},
          :max_byte1, {type: :uint8},
          :all_chars_exist, {type: :bool},
          :font_ascent, {type: :int16},
          :font_descent, {type: :int16},
          :char_infos_len, {type: :uint32},
          :properties, {length_field: :properties_len, type: FontProp, kind: :list},
          :char_infos, {length_field: :char_infos_len, type: CharInfo, kind: :list}
    end

    class QueryTextExtents < Xrb::Message
      layout \
          :response_type, {type: :uint8},
          :draw_direction, {type: :uint8},
          :sequence, {type: :uint16},
          :length, {type: :uint32},
          :font_ascent, {type: :int16},
          :font_descent, {type: :int16},
          :overall_ascent, {type: :int16},
          :overall_descent, {type: :int16},
          :overall_width, {type: :int32},
          :overall_left, {type: :int32},
          :overall_right, {type: :int32}
    end

    class ListFonts < Xrb::Message
      layout \
          :response_type, {type: :uint8},
          :pad1, {size: 1, type: :uint8},
          :sequence, {type: :uint16},
          :length, {type: :uint32},
          :names_len, {type: :uint16},
          :pad2, {size: 22, type: :uint8},
          :names, {length_field: :names_len, type: Str, kind: :list}
    end

    class ListFontsWithInfo < Xrb::Message
      layout \
          :response_type, {type: :uint8},
          :name_len, {type: :uint8},
          :sequence, {type: :uint16},
          :length, {type: :uint32},
          :min_bounds, {type: :CHARINFO},
          :pad1, {size: 4, type: :uint8},
          :max_bounds, {type: :CHARINFO},
          :pad2, {size: 4, type: :uint8},
          :min_char_or_byte2, {type: :uint16},
          :max_char_or_byte2, {type: :uint16},
          :default_char, {type: :uint16},
          :properties_len, {type: :uint16},
          :draw_direction, {type: :uint8},
          :min_byte1, {type: :uint8},
          :max_byte1, {type: :uint8},
          :all_chars_exist, {type: :bool},
          :font_ascent, {type: :int16},
          :font_descent, {type: :int16},
          :replies_hint, {type: :uint32},
          :properties, {length_field: :properties_len, type: FontProp, kind: :list},
          :name, {length_field: :name_len, type: :char, kind: :string}
    end

    class GetFontPath < Xrb::Message
      layout \
          :response_type, {type: :uint8},
          :pad1, {size: 1, type: :uint8},
          :sequence, {type: :uint16},
          :length, {type: :uint32},
          :path_len, {type: :uint16},
          :pad2, {size: 22, type: :uint8},
          :path, {length_field: :path_len, type: Str, kind: :list}
    end

    class GetImage < Xrb::Message
      layout \
          :response_type, {type: :uint8},
          :depth, {type: :uint8},
          :sequence, {type: :uint16},
          :length, {type: :uint32},
          :visual, {type: :uint32},
          :pad1, {size: 20, type: :uint8},
          :data, {length_field: :length, type: :uint8, kind: :list}
    end

    class ListInstalledColormaps < Xrb::Message
      layout \
          :response_type, {type: :uint8},
          :pad1, {size: 1, type: :uint8},
          :sequence, {type: :uint16},
          :length, {type: :uint32},
          :cmaps_len, {type: :uint16},
          :pad2, {size: 22, type: :uint8},
          :cmaps, {length_field: :cmaps_len, type: :uint32, kind: :list}
    end

    class AllocColor < Xrb::Message
      layout \
          :response_type, {type: :uint8},
          :pad1, {size: 1, type: :uint8},
          :sequence, {type: :uint16},
          :length, {type: :uint32},
          :red, {type: :uint16},
          :green, {type: :uint16},
          :blue, {type: :uint16},
          :pad2, {size: 2, type: :uint8},
          :pixel, {type: :uint32}
    end

    class AllocNamedColor < Xrb::Message
      layout \
          :response_type, {type: :uint8},
          :pad1, {size: 1, type: :uint8},
          :sequence, {type: :uint16},
          :length, {type: :uint32},
          :pixel, {type: :uint32},
          :exact_red, {type: :uint16},
          :exact_green, {type: :uint16},
          :exact_blue, {type: :uint16},
          :visual_red, {type: :uint16},
          :visual_green, {type: :uint16},
          :visual_blue, {type: :uint16}
    end

    class AllocColorCells < Xrb::Message
      layout \
          :response_type, {type: :uint8},
          :pad1, {size: 1, type: :uint8},
          :sequence, {type: :uint16},
          :length, {type: :uint32},
          :pixels_len, {type: :uint16},
          :masks_len, {type: :uint16},
          :pad2, {size: 20, type: :uint8},
          :pixels, {length_field: :pixels_len, type: :uint32, kind: :list},
          :masks, {length_field: :masks_len, type: :uint32, kind: :list}
    end

    class AllocColorPlanes < Xrb::Message
      layout \
          :response_type, {type: :uint8},
          :pad1, {size: 1, type: :uint8},
          :sequence, {type: :uint16},
          :length, {type: :uint32},
          :pixels_len, {type: :uint16},
          :pad2, {size: 2, type: :uint8},
          :red_mask, {type: :uint32},
          :green_mask, {type: :uint32},
          :blue_mask, {type: :uint32},
          :pad3, {size: 8, type: :uint8},
          :pixels, {length_field: :pixels_len, type: :uint32, kind: :list}
    end

    class QueryColors < Xrb::Message
      layout \
          :response_type, {type: :uint8},
          :pad1, {size: 1, type: :uint8},
          :sequence, {type: :uint16},
          :length, {type: :uint32},
          :colors_len, {type: :uint16},
          :pad2, {size: 22, type: :uint8},
          :colors, {length_field: :colors_len, type: RGB, kind: :list}
    end

    class LookupColor < Xrb::Message
      layout \
          :response_type, {type: :uint8},
          :pad1, {size: 1, type: :uint8},
          :sequence, {type: :uint16},
          :length, {type: :uint32},
          :exact_red, {type: :uint16},
          :exact_green, {type: :uint16},
          :exact_blue, {type: :uint16},
          :visual_red, {type: :uint16},
          :visual_green, {type: :uint16},
          :visual_blue, {type: :uint16}
    end

    class QueryBestSize < Xrb::Message
      layout \
          :response_type, {type: :uint8},
          :pad1, {size: 1, type: :uint8},
          :sequence, {type: :uint16},
          :length, {type: :uint32},
          :width, {type: :uint16},
          :height, {type: :uint16}
    end

    class QueryExtension < Xrb::Message
      layout \
          :response_type, {type: :uint8},
          :pad1, {size: 1, type: :uint8},
          :sequence, {type: :uint16},
          :length, {type: :uint32},
          :present, {type: :bool},
          :major_opcode, {type: :uint8},
          :first_event, {type: :uint8},
          :first_error, {type: :uint8}
    end

    class ListExtensions < Xrb::Message
      layout \
          :response_type, {type: :uint8},
          :names_len, {type: :uint8},
          :sequence, {type: :uint16},
          :length, {type: :uint32},
          :pad1, {size: 24, type: :uint8},
          :names, {length_field: :names_len, type: Str, kind: :list}
    end

    class GetKeyboardMapping < Xrb::Message
      layout \
          :response_type, {type: :uint8},
          :keysyms_per_keycode, {type: :uint8},
          :sequence, {type: :uint16},
          :length, {type: :uint32},
          :pad1, {size: 24, type: :uint8},
          :keysyms, {length_field: :length, type: :uint32, kind: :list}
    end

    class GetKeyboardControl < Xrb::Message
      layout \
          :response_type, {type: :uint8},
          :global_auto_repeat, {type: :uint8},
          :sequence, {type: :uint16},
          :length, {type: :uint32},
          :led_mask, {type: :uint32},
          :key_click_percent, {type: :uint8},
          :bell_percent, {type: :uint8},
          :bell_pitch, {type: :uint16},
          :bell_duration, {type: :uint16},
          :pad1, {size: 2, type: :uint8},
          :auto_repeats, {type: :uint8, size: 32}
    end

    class GetPointerControl < Xrb::Message
      layout \
          :response_type, {type: :uint8},
          :pad1, {size: 1, type: :uint8},
          :sequence, {type: :uint16},
          :length, {type: :uint32},
          :acceleration_numerator, {type: :uint16},
          :acceleration_denominator, {type: :uint16},
          :threshold, {type: :uint16},
          :pad2, {size: 18, type: :uint8}
    end

    class GetScreenSaver < Xrb::Message
      layout \
          :response_type, {type: :uint8},
          :pad1, {size: 1, type: :uint8},
          :sequence, {type: :uint16},
          :length, {type: :uint32},
          :timeout, {type: :uint16},
          :interval, {type: :uint16},
          :prefer_blanking, {type: :uint8},
          :allow_exposures, {type: :uint8},
          :pad2, {size: 18, type: :uint8}
    end

    class ListHosts < Xrb::Message
      layout \
          :response_type, {type: :uint8},
          :mode, {type: :uint8},
          :sequence, {type: :uint16},
          :length, {type: :uint32},
          :hosts_len, {type: :uint16},
          :pad1, {size: 22, type: :uint8},
          :hosts, {length_field: :hosts_len, type: Host, kind: :list}
    end

    class SetPointerMapping < Xrb::Message
      layout \
          :response_type, {type: :uint8},
          :status, {type: :uint8},
          :sequence, {type: :uint16},
          :length, {type: :uint32}
    end

    class GetPointerMapping < Xrb::Message
      layout \
          :response_type, {type: :uint8},
          :map_len, {type: :uint8},
          :sequence, {type: :uint16},
          :length, {type: :uint32},
          :pad1, {size: 24, type: :uint8},
          :map, {length_field: :map_len, type: :uint8, kind: :list}
    end

    class SetModifierMapping < Xrb::Message
      layout \
          :response_type, {type: :uint8},
          :status, {type: :uint8},
          :sequence, {type: :uint16},
          :length, {type: :uint32}
    end

    class GetModifierMapping < Xrb::Message
      layout \
          :response_type, {type: :uint8},
          :keycodes_per_modifier, {type: :uint8},
          :sequence, {type: :uint16},
          :length, {type: :uint32},
          :pad1, {size: 24, type: :uint8},
          :keycodes, {length_field: :keycodes_per_modifier, type: :uint8, kind: :list}
    end

  end
end
