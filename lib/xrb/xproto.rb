#
# This file auto-generated. Do not edit.
#

require 'ffi'
class Xrb
  extend FFI::Library
  ffi_lib 'xcb'
  class XrbChar2b < FFI::Struct
    layout \
        :byte1, :uint8,
        :byte2, :uint8
  end

  class XrbChar2bIterator < FFI::Struct
    layout \
        :data, :pointer,
        :rem, :int,
        :indent, :int
  end
  attach_function :xcb_char2b_next, [:pointer], :void
  attach_function :xcb_char2b_end, [:pointer], XrbGenericIterator
  typedef :uint32, :xrb_window_t
  class XrbWindowIterator < FFI::Struct
    layout \
        :data, :xrb_window_t,
        :rem, :int,
        :indent, :int
  end
  attach_function :xcb_window_next, [:pointer], :void
  attach_function :xcb_window_end, [:pointer], XrbGenericIterator
  typedef :uint32, :xrb_pixmap_t
  class XrbPixmapIterator < FFI::Struct
    layout \
        :data, :xrb_window_t,
        :rem, :int,
        :indent, :int
  end
  attach_function :xcb_pixmap_next, [:pointer], :void
  attach_function :xcb_pixmap_end, [:pointer], XrbGenericIterator
  typedef :uint32, :xrb_cursor_t
  class XrbCursorIterator < FFI::Struct
    layout \
        :data, :xrb_window_t,
        :rem, :int,
        :indent, :int
  end
  attach_function :xcb_cursor_next, [:pointer], :void
  attach_function :xcb_cursor_end, [:pointer], XrbGenericIterator
  typedef :uint32, :xrb_font_t
  class XrbFontIterator < FFI::Struct
    layout \
        :data, :xrb_window_t,
        :rem, :int,
        :indent, :int
  end
  attach_function :xcb_font_next, [:pointer], :void
  attach_function :xcb_font_end, [:pointer], XrbGenericIterator
  typedef :uint32, :xrb_gcontext_t
  class XrbGcontextIterator < FFI::Struct
    layout \
        :data, :xrb_window_t,
        :rem, :int,
        :indent, :int
  end
  attach_function :xcb_gcontext_next, [:pointer], :void
  attach_function :xcb_gcontext_end, [:pointer], XrbGenericIterator
  typedef :uint32, :xrb_colormap_t
  class XrbColormapIterator < FFI::Struct
    layout \
        :data, :xrb_window_t,
        :rem, :int,
        :indent, :int
  end
  attach_function :xcb_colormap_next, [:pointer], :void
  attach_function :xcb_colormap_end, [:pointer], XrbGenericIterator
  typedef :uint32, :xrb_atom_t
  class XrbAtomIterator < FFI::Struct
    layout \
        :data, :xrb_window_t,
        :rem, :int,
        :indent, :int
  end
  attach_function :xcb_atom_next, [:pointer], :void
  attach_function :xcb_atom_end, [:pointer], XrbGenericIterator
  typedef :uint32, :xrb_drawable_t
  class XrbDrawableIterator < FFI::Struct
    layout \
        :data, :xrb_window_t,
        :rem, :int,
        :indent, :int
  end
  attach_function :xcb_drawable_next, [:pointer], :void
  attach_function :xcb_drawable_end, [:pointer], XrbGenericIterator
  typedef :uint32, :xrb_fontable_t
  class XrbFontableIterator < FFI::Struct
    layout \
        :data, :xrb_window_t,
        :rem, :int,
        :indent, :int
  end
  attach_function :xcb_fontable_next, [:pointer], :void
  attach_function :xcb_fontable_end, [:pointer], XrbGenericIterator
  typedef :uint32, :xrb_visualid_t
  class XrbVisualidIterator < FFI::Struct
    layout \
        :data, :xrb_window_t,
        :rem, :int,
        :indent, :int
  end
  attach_function :xcb_visualid_next, [:pointer], :void
  attach_function :xcb_visualid_end, [:pointer], XrbGenericIterator
  typedef :uint32, :xrb_timestamp_t
  class XrbTimestampIterator < FFI::Struct
    layout \
        :data, :xrb_window_t,
        :rem, :int,
        :indent, :int
  end
  attach_function :xcb_timestamp_next, [:pointer], :void
  attach_function :xcb_timestamp_end, [:pointer], XrbGenericIterator
  typedef :uint32, :xrb_keysym_t
  class XrbKeysymIterator < FFI::Struct
    layout \
        :data, :xrb_window_t,
        :rem, :int,
        :indent, :int
  end
  attach_function :xcb_keysym_next, [:pointer], :void
  attach_function :xcb_keysym_end, [:pointer], XrbGenericIterator
  typedef :uint8, :xrb_keycode_t
  class XrbKeycodeIterator < FFI::Struct
    layout \
        :data, :xrb_window_t,
        :rem, :int,
        :indent, :int
  end
  attach_function :xcb_keycode_next, [:pointer], :void
  attach_function :xcb_keycode_end, [:pointer], XrbGenericIterator
  typedef :uint8, :xrb_button_t
  class XrbButtonIterator < FFI::Struct
    layout \
        :data, :xrb_window_t,
        :rem, :int,
        :indent, :int
  end
  attach_function :xcb_button_next, [:pointer], :void
  attach_function :xcb_button_end, [:pointer], XrbGenericIterator
  class XrbPoint < FFI::Struct
    layout \
        :x, :int16,
        :y, :int16
  end

  class XrbPointIterator < FFI::Struct
    layout \
        :data, :pointer,
        :rem, :int,
        :indent, :int
  end
  attach_function :xcb_point_next, [:pointer], :void
  attach_function :xcb_point_end, [:pointer], XrbGenericIterator
  class XrbRectangle < FFI::Struct
    layout \
        :x, :int16,
        :y, :int16,
        :width, :uint16,
        :height, :uint16
  end

  class XrbRectangleIterator < FFI::Struct
    layout \
        :data, :pointer,
        :rem, :int,
        :indent, :int
  end
  attach_function :xcb_rectangle_next, [:pointer], :void
  attach_function :xcb_rectangle_end, [:pointer], XrbGenericIterator
  class XrbArc < FFI::Struct
    layout \
        :x, :int16,
        :y, :int16,
        :width, :uint16,
        :height, :uint16,
        :angle1, :int16,
        :angle2, :int16
  end

  class XrbArcIterator < FFI::Struct
    layout \
        :data, :pointer,
        :rem, :int,
        :indent, :int
  end
  attach_function :xcb_arc_next, [:pointer], :void
  attach_function :xcb_arc_end, [:pointer], XrbGenericIterator
  class XrbFormat < FFI::Struct
    layout \
        :depth, :uint8,
        :bits_per_pixel, :uint8,
        :scanline_pad, :uint8,
        :pad1, [:uint8, 5]
  end

  class XrbFormatIterator < FFI::Struct
    layout \
        :data, :pointer,
        :rem, :int,
        :indent, :int
  end
  attach_function :xcb_format_next, [:pointer], :void
  attach_function :xcb_format_end, [:pointer], XrbGenericIterator
  enum :xrb_visual_class_t, [
      :xrb_visual_class_static_gray, 0,
      :xrb_visual_class_gray_scale, 1,
      :xrb_visual_class_static_color, 2,
      :xrb_visual_class_pseudo_color, 3,
      :xrb_visual_class_true_color, 4,
      :xrb_visual_class_direct_color, 5
  ]
  class XrbVisualtype < FFI::Struct
    layout \
        :visual_id, :xrb_visualid_t,
        :class, :uint8,
        :bits_per_rgb_value, :uint8,
        :colormap_entries, :uint16,
        :red_mask, :uint32,
        :green_mask, :uint32,
        :blue_mask, :uint32,
        :pad1, [:uint8, 4]
  end

  class XrbVisualtypeIterator < FFI::Struct
    layout \
        :data, :pointer,
        :rem, :int,
        :indent, :int
  end
  attach_function :xcb_visualtype_next, [:pointer], :void
  attach_function :xcb_visualtype_end, [:pointer], XrbGenericIterator
  class XrbDepth < FFI::Struct
    layout \
        :depth, :uint8,
        :pad1, [:uint8, 1],
        :visuals_len, :uint16,
        :pad2, [:uint8, 4]
  end

  class XrbDepthIterator < FFI::Struct
    layout \
        :data, :pointer,
        :rem, :int,
        :indent, :int
  end
  attach_function :xcb_depth_next, [:pointer], :void
  attach_function :xcb_depth_end, [:pointer], XrbGenericIterator
  attach_function :xcb_depth_sizeof, [:pointer], :int
  attach_function :xcb_depth_visuals_length, [:pointer], :int
  enum :xrb_event_mask_t, [
      :xrb_event_mask_no_event, 0,
      :xrb_event_mask_key_press, 1 << 0,
      :xrb_event_mask_key_release, 1 << 1,
      :xrb_event_mask_button_press, 1 << 2,
      :xrb_event_mask_button_release, 1 << 3,
      :xrb_event_mask_enter_window, 1 << 4,
      :xrb_event_mask_leave_window, 1 << 5,
      :xrb_event_mask_pointer_motion, 1 << 6,
      :xrb_event_mask_pointer_motion_hint, 1 << 7,
      :xrb_event_mask_button_1motion, 1 << 8,
      :xrb_event_mask_button_2motion, 1 << 9,
      :xrb_event_mask_button_3motion, 1 << 10,
      :xrb_event_mask_button_4motion, 1 << 11,
      :xrb_event_mask_button_5motion, 1 << 12,
      :xrb_event_mask_button_motion, 1 << 13,
      :xrb_event_mask_keymap_state, 1 << 14,
      :xrb_event_mask_exposure, 1 << 15,
      :xrb_event_mask_visibility_change, 1 << 16,
      :xrb_event_mask_structure_notify, 1 << 17,
      :xrb_event_mask_resize_redirect, 1 << 18,
      :xrb_event_mask_substructure_notify, 1 << 19,
      :xrb_event_mask_substructure_redirect, 1 << 20,
      :xrb_event_mask_focus_change, 1 << 21,
      :xrb_event_mask_property_change, 1 << 22,
      :xrb_event_mask_color_map_change, 1 << 23,
      :xrb_event_mask_owner_grab_button, 1 << 24
  ]
  enum :xrb_backing_store_t, [
      :xrb_backing_store_not_useful, 0,
      :xrb_backing_store_when_mapped, 1,
      :xrb_backing_store_always, 2
  ]
  class XrbScreen < FFI::Struct
    layout \
        :root, :xrb_window_t,
        :default_colormap, :xrb_colormap_t,
        :white_pixel, :uint32,
        :black_pixel, :uint32,
        :current_input_masks, :uint32,
        :width_in_pixels, :uint16,
        :height_in_pixels, :uint16,
        :width_in_millimeters, :uint16,
        :height_in_millimeters, :uint16,
        :min_installed_maps, :uint16,
        :max_installed_maps, :uint16,
        :root_visual, :xrb_visualid_t,
        :backing_stores, :uint8,
        :save_unders, :bool,
        :root_depth, :uint8,
        :allowed_depths_len, :uint8
  end

  class XrbScreenIterator < FFI::Struct
    layout \
        :data, :pointer,
        :rem, :int,
        :indent, :int
  end
  attach_function :xcb_screen_next, [:pointer], :void
  attach_function :xcb_screen_end, [:pointer], XrbGenericIterator
  attach_function :xcb_screen_sizeof, [:pointer], :int
  attach_function :xcb_screen_allowed_depths_length, [:pointer], :int
  class XrbSetupRequest < FFI::Struct
    layout \
        :byte_order, :uint8,
        :pad1, [:uint8, 1],
        :protocol_major_version, :uint16,
        :protocol_minor_version, :uint16,
        :authorization_protocol_name_len, :uint16,
        :authorization_protocol_data_len, :uint16,
        :pad2, [:uint8, 2]
  end

  class XrbSetupRequestIterator < FFI::Struct
    layout \
        :data, :pointer,
        :rem, :int,
        :indent, :int
  end
  attach_function :xcb_setup_request_next, [:pointer], :void
  attach_function :xcb_setup_request_end, [:pointer], XrbGenericIterator
  attach_function :xcb_setup_request_sizeof, [:pointer], :int
  attach_function :xcb_setup_request_authorization_protocol_name, [:pointer], :pointer
  attach_function :xcb_setup_request_authorization_protocol_name_length, [:pointer], :int
  attach_function :xcb_setup_request_authorization_protocol_data, [:pointer], :pointer
  attach_function :xcb_setup_request_authorization_protocol_data_length, [:pointer], :int
  class XrbSetupFailed < FFI::Struct
    layout \
        :status, :uint8,
        :reason_len, :uint8,
        :protocol_major_version, :uint16,
        :protocol_minor_version, :uint16,
        :length, :uint16
  end

  class XrbSetupFailedIterator < FFI::Struct
    layout \
        :data, :pointer,
        :rem, :int,
        :indent, :int
  end
  attach_function :xcb_setup_failed_next, [:pointer], :void
  attach_function :xcb_setup_failed_end, [:pointer], XrbGenericIterator
  attach_function :xcb_setup_failed_sizeof, [:pointer], :int
  attach_function :xcb_setup_failed_reason, [:pointer], :pointer
  attach_function :xcb_setup_failed_reason_length, [:pointer], :int
  class XrbSetupAuthenticate < FFI::Struct
    layout \
        :status, :uint8,
        :pad1, [:uint8, 5],
        :length, :uint16
  end

  class XrbSetupAuthenticateIterator < FFI::Struct
    layout \
        :data, :pointer,
        :rem, :int,
        :indent, :int
  end
  attach_function :xcb_setup_authenticate_next, [:pointer], :void
  attach_function :xcb_setup_authenticate_end, [:pointer], XrbGenericIterator
  attach_function :xcb_setup_authenticate_sizeof, [:pointer], :int
  attach_function :xcb_setup_authenticate_reason, [:pointer], :pointer
  attach_function :xcb_setup_authenticate_reason_length, [:pointer], :int
  enum :xrb_image_order_t, [
      :xrb_image_order_lsb_first, 0,
      :xrb_image_order_msb_first, 1
  ]
  class XrbSetup < FFI::Struct
    layout \
        :status, :uint8,
        :pad1, [:uint8, 1],
        :protocol_major_version, :uint16,
        :protocol_minor_version, :uint16,
        :length, :uint16,
        :release_number, :uint32,
        :resource_id_base, :uint32,
        :resource_id_mask, :uint32,
        :motion_buffer_size, :uint32,
        :vendor_len, :uint16,
        :maximum_request_length, :uint16,
        :roots_len, :uint8,
        :pixmap_formats_len, :uint8,
        :image_byte_order, :uint8,
        :bitmap_format_bit_order, :uint8,
        :bitmap_format_scanline_unit, :uint8,
        :bitmap_format_scanline_pad, :uint8,
        :min_keycode, :xrb_keycode_t,
        :max_keycode, :xrb_keycode_t,
        :pad2, [:uint8, 4]
  end

  class XrbSetupIterator < FFI::Struct
    layout \
        :data, :pointer,
        :rem, :int,
        :indent, :int
  end
  attach_function :xcb_setup_next, [:pointer], :void
  attach_function :xcb_setup_end, [:pointer], XrbGenericIterator
  attach_function :xcb_setup_sizeof, [:pointer], :int
  attach_function :xcb_setup_vendor, [:pointer], :pointer
  attach_function :xcb_setup_vendor_length, [:pointer], :int
  attach_function :xcb_setup_pixmap_formats_length, [:pointer], :int
  attach_function :xcb_setup_roots_length, [:pointer], :int
  enum :xrb_mod_mask_t, [
      :xrb_mod_mask_shift, 1 << 0,
      :xrb_mod_mask_lock, 1 << 1,
      :xrb_mod_mask_control, 1 << 2,
      :xrb_mod_mask_1, 1 << 3,
      :xrb_mod_mask_2, 1 << 4,
      :xrb_mod_mask_3, 1 << 5,
      :xrb_mod_mask_4, 1 << 6,
      :xrb_mod_mask_5, 1 << 7,
      :xrb_mod_mask_any, 1 << 15
  ]
  enum :xrb_key_but_mask_t, [
      :xrb_key_but_mask_shift, 1 << 0,
      :xrb_key_but_mask_lock, 1 << 1,
      :xrb_key_but_mask_control, 1 << 2,
      :xrb_key_but_mask_mod_1, 1 << 3,
      :xrb_key_but_mask_mod_2, 1 << 4,
      :xrb_key_but_mask_mod_3, 1 << 5,
      :xrb_key_but_mask_mod_4, 1 << 6,
      :xrb_key_but_mask_mod_5, 1 << 7,
      :xrb_key_but_mask_button_1, 1 << 8,
      :xrb_key_but_mask_button_2, 1 << 9,
      :xrb_key_but_mask_button_3, 1 << 10,
      :xrb_key_but_mask_button_4, 1 << 11,
      :xrb_key_but_mask_button_5, 1 << 12
  ]
  enum :xrb_window_t, [
      :xrb_window_none, 0
  ]
  enum :xrb_button_mask_t, [
      :xrb_button_mask_1, 1 << 8,
      :xrb_button_mask_2, 1 << 9,
      :xrb_button_mask_3, 1 << 10,
      :xrb_button_mask_4, 1 << 11,
      :xrb_button_mask_5, 1 << 12,
      :xrb_button_mask_any, 1 << 15
  ]
  enum :xrb_motion_t, [
      :xrb_motion_normal, 0,
      :xrb_motion_hint, 1
  ]
  enum :xrb_notify_detail_t, [
      :xrb_notify_detail_ancestor, 0,
      :xrb_notify_detail_virtual, 1,
      :xrb_notify_detail_inferior, 2,
      :xrb_notify_detail_nonlinear, 3,
      :xrb_notify_detail_nonlinear_virtual, 4,
      :xrb_notify_detail_pointer, 5,
      :xrb_notify_detail_pointer_root, 6,
      :xrb_notify_detail_none, 7
  ]
  enum :xrb_notify_mode_t, [
      :xrb_notify_mode_normal, 0,
      :xrb_notify_mode_grab, 1,
      :xrb_notify_mode_ungrab, 2,
      :xrb_notify_mode_while_grabbed, 3
  ]
  enum :xrb_visibility_t, [
      :xrb_visibility_unobscured, 0,
      :xrb_visibility_partially_obscured, 1,
      :xrb_visibility_fully_obscured, 2
  ]
  enum :xrb_place_t, [
      :xrb_place_on_top, 0,
      :xrb_place_on_bottom, 1
  ]
  enum :xrb_property_t, [
      :xrb_property_new_value, 0,
      :xrb_property_delete, 1
  ]
  enum :xrb_time_t, [
      :xrb_time_current_time, 0
  ]
  enum :xrb_atom_t, [
      :xrb_atom_none, 0,
      :xrb_atom_any, 0,
      :xrb_atom_primary, 1,
      :xrb_atom_secondary, 2,
      :xrb_atom_arc, 3,
      :xrb_atom_atom, 4,
      :xrb_atom_bitmap, 5,
      :xrb_atom_cardinal, 6,
      :xrb_atom_colormap, 7,
      :xrb_atom_cursor, 8,
      :xrb_atom_cut_buffer0, 9,
      :xrb_atom_cut_buffer1, 10,
      :xrb_atom_cut_buffer2, 11,
      :xrb_atom_cut_buffer3, 12,
      :xrb_atom_cut_buffer4, 13,
      :xrb_atom_cut_buffer5, 14,
      :xrb_atom_cut_buffer6, 15,
      :xrb_atom_cut_buffer7, 16,
      :xrb_atom_drawable, 17,
      :xrb_atom_font, 18,
      :xrb_atom_integer, 19,
      :xrb_atom_pixmap, 20,
      :xrb_atom_point, 21,
      :xrb_atom_rectangle, 22,
      :xrb_atom_resource_manager, 23,
      :xrb_atom_rgb_color_map, 24,
      :xrb_atom_rgb_best_map, 25,
      :xrb_atom_rgb_blue_map, 26,
      :xrb_atom_rgb_default_map, 27,
      :xrb_atom_rgb_gray_map, 28,
      :xrb_atom_rgb_green_map, 29,
      :xrb_atom_rgb_red_map, 30,
      :xrb_atom_string, 31,
      :xrb_atom_visualid, 32,
      :xrb_atom_window, 33,
      :xrb_atom_wm_command, 34,
      :xrb_atom_wm_hints, 35,
      :xrb_atom_wm_client_machine, 36,
      :xrb_atom_wm_icon_name, 37,
      :xrb_atom_wm_icon_size, 38,
      :xrb_atom_wm_name, 39,
      :xrb_atom_wm_normal_hints, 40,
      :xrb_atom_wm_size_hints, 41,
      :xrb_atom_wm_zoom_hints, 42,
      :xrb_atom_min_space, 43,
      :xrb_atom_norm_space, 44,
      :xrb_atom_max_space, 45,
      :xrb_atom_end_space, 46,
      :xrb_atom_superscript_x, 47,
      :xrb_atom_superscript_y, 48,
      :xrb_atom_subscript_x, 49,
      :xrb_atom_subscript_y, 50,
      :xrb_atom_underline_position, 51,
      :xrb_atom_underline_thickness, 52,
      :xrb_atom_strikeout_ascent, 53,
      :xrb_atom_strikeout_descent, 54,
      :xrb_atom_italic_angle, 55,
      :xrb_atom_x_height, 56,
      :xrb_atom_quad_width, 57,
      :xrb_atom_weight, 58,
      :xrb_atom_point_size, 59,
      :xrb_atom_resolution, 60,
      :xrb_atom_copyright, 61,
      :xrb_atom_notice, 62,
      :xrb_atom_font_name, 63,
      :xrb_atom_family_name, 64,
      :xrb_atom_full_name, 65,
      :xrb_atom_cap_height, 66,
      :xrb_atom_wm_class, 67,
      :xrb_atom_wm_transient_for, 68
  ]
  enum :xrb_colormap_state_t, [
      :xrb_colormap_state_uninstalled, 0,
      :xrb_colormap_state_installed, 1
  ]
  enum :xrb_colormap_t, [
      :xrb_colormap_none, 0
  ]
  class XrbClientMessageData < FFI::Union
    layout \
        :data8_len, [:uint32 , 20],
        :data16_len, [:uint32 , 10],
        :data32_len, [:uint32 , 5]
  end

  enum :xrb_mapping_t, [
      :xrb_mapping_modifier, 0,
      :xrb_mapping_keyboard, 1,
      :xrb_mapping_pointer, 2
  ]
  enum :xrb_window_class_t, [
      :xrb_window_class_copy_from_parent, 0,
      :xrb_window_class_input_output, 1,
      :xrb_window_class_input_only, 2
  ]
  enum :xrb_cw_t, [
      :xrb_cw_back_pixmap, 1 << 0,
      :xrb_cw_back_pixel, 1 << 1,
      :xrb_cw_border_pixmap, 1 << 2,
      :xrb_cw_border_pixel, 1 << 3,
      :xrb_cw_bit_gravity, 1 << 4,
      :xrb_cw_win_gravity, 1 << 5,
      :xrb_cw_backing_store, 1 << 6,
      :xrb_cw_backing_planes, 1 << 7,
      :xrb_cw_backing_pixel, 1 << 8,
      :xrb_cw_override_redirect, 1 << 9,
      :xrb_cw_save_under, 1 << 10,
      :xrb_cw_event_mask, 1 << 11,
      :xrb_cw_dont_propagate, 1 << 12,
      :xrb_cw_colormap, 1 << 13,
      :xrb_cw_cursor, 1 << 14
  ]
  enum :xrb_back_pixmap_t, [
      :xrb_back_pixmap_none, 0,
      :xrb_back_pixmap_parent_relative, 1
  ]
  enum :xrb_gravity_t, [
      :xrb_gravity_bit_forget, 0,
      :xrb_gravity_win_unmap, 0,
      :xrb_gravity_north_west, 1,
      :xrb_gravity_north, 2,
      :xrb_gravity_north_east, 3,
      :xrb_gravity_west, 4,
      :xrb_gravity_center, 5,
      :xrb_gravity_east, 6,
      :xrb_gravity_south_west, 7,
      :xrb_gravity_south, 8,
      :xrb_gravity_south_east, 9,
      :xrb_gravity_static, 10
  ]
  enum :xrb_map_state_t, [
      :xrb_map_state_unmapped, 0,
      :xrb_map_state_unviewable, 1,
      :xrb_map_state_viewable, 2
  ]
  enum :xrb_set_mode_t, [
      :xrb_set_mode_insert, 0,
      :xrb_set_mode_delete, 1
  ]
  enum :xrb_config_window_t, [
      :xrb_config_window_x, 1 << 0,
      :xrb_config_window_y, 1 << 1,
      :xrb_config_window_width, 1 << 2,
      :xrb_config_window_height, 1 << 3,
      :xrb_config_window_border_width, 1 << 4,
      :xrb_config_window_sibling, 1 << 5,
      :xrb_config_window_stack_mode, 1 << 6
  ]
  enum :xrb_stack_mode_t, [
      :xrb_stack_mode_above, 0,
      :xrb_stack_mode_below, 1,
      :xrb_stack_mode_top_if, 2,
      :xrb_stack_mode_bottom_if, 3,
      :xrb_stack_mode_opposite, 4
  ]
  enum :xrb_circulate_t, [
      :xrb_circulate_raise_lowest, 0,
      :xrb_circulate_lower_highest, 1
  ]
  enum :xrb_prop_mode_t, [
      :xrb_prop_mode_replace, 0,
      :xrb_prop_mode_prepend, 1,
      :xrb_prop_mode_append, 2
  ]
  enum :xrb_get_property_type_t, [
      :xrb_get_property_type_any, 0
  ]
  enum :xrb_send_event_dest_t, [
      :xrb_send_event_dest_pointer_window, 0,
      :xrb_send_event_dest_item_focus, 1
  ]
  enum :xrb_grab_mode_t, [
      :xrb_grab_mode_sync, 0,
      :xrb_grab_mode_async, 1
  ]
  enum :xrb_grab_status_t, [
      :xrb_grab_status_success, 0,
      :xrb_grab_status_already_grabbed, 1,
      :xrb_grab_status_invalid_time, 2,
      :xrb_grab_status_not_viewable, 3,
      :xrb_grab_status_frozen, 4
  ]
  enum :xrb_cursor_t, [
      :xrb_cursor_none, 0
  ]
  enum :xrb_button_index_t, [
      :xrb_button_index_any, 0,
      :xrb_button_index_1, 1,
      :xrb_button_index_2, 2,
      :xrb_button_index_3, 3,
      :xrb_button_index_4, 4,
      :xrb_button_index_5, 5
  ]
  enum :xrb_grab_t, [
      :xrb_grab_any, 0
  ]
  enum :xrb_allow_t, [
      :xrb_allow_async_pointer, 0,
      :xrb_allow_sync_pointer, 1,
      :xrb_allow_replay_pointer, 2,
      :xrb_allow_async_keyboard, 3,
      :xrb_allow_sync_keyboard, 4,
      :xrb_allow_replay_keyboard, 5,
      :xrb_allow_async_both, 6,
      :xrb_allow_sync_both, 7
  ]
  class XrbTimecoord < FFI::Struct
    layout \
        :time, :xrb_timestamp_t,
        :x, :int16,
        :y, :int16
  end

  class XrbTimecoordIterator < FFI::Struct
    layout \
        :data, :pointer,
        :rem, :int,
        :indent, :int
  end
  attach_function :xcb_timecoord_next, [:pointer], :void
  attach_function :xcb_timecoord_end, [:pointer], XrbGenericIterator
  enum :xrb_input_focus_t, [
      :xrb_input_focus_none, 0,
      :xrb_input_focus_pointer_root, 1,
      :xrb_input_focus_parent, 2,
      :xrb_input_focus_follow_keyboard, 3
  ]
  enum :xrb_font_draw_t, [
      :xrb_font_draw_left_to_right, 0,
      :xrb_font_draw_right_to_left, 1
  ]
  class XrbFontprop < FFI::Struct
    layout \
        :name, :xrb_atom_t,
        :value, :uint32
  end

  class XrbFontpropIterator < FFI::Struct
    layout \
        :data, :pointer,
        :rem, :int,
        :indent, :int
  end
  attach_function :xcb_fontprop_next, [:pointer], :void
  attach_function :xcb_fontprop_end, [:pointer], XrbGenericIterator
  class XrbCharinfo < FFI::Struct
    layout \
        :left_side_bearing, :int16,
        :right_side_bearing, :int16,
        :character_width, :int16,
        :ascent, :int16,
        :descent, :int16,
        :attributes, :uint16
  end

  class XrbCharinfoIterator < FFI::Struct
    layout \
        :data, :pointer,
        :rem, :int,
        :indent, :int
  end
  attach_function :xcb_charinfo_next, [:pointer], :void
  attach_function :xcb_charinfo_end, [:pointer], XrbGenericIterator
  class XrbStr < FFI::Struct
    layout \
        :name_len, :uint8
  end

  class XrbStrIterator < FFI::Struct
    layout \
        :data, :pointer,
        :rem, :int,
        :indent, :int
  end
  attach_function :xcb_str_next, [:pointer], :void
  attach_function :xcb_str_end, [:pointer], XrbGenericIterator
  attach_function :xcb_str_sizeof, [:pointer], :int
  attach_function :xcb_str_name, [:pointer], :pointer
  attach_function :xcb_str_name_length, [:pointer], :int
  enum :xrb_gc_t, [
      :xrb_gc_function, 1 << 0,
      :xrb_gc_plane_mask, 1 << 1,
      :xrb_gc_foreground, 1 << 2,
      :xrb_gc_background, 1 << 3,
      :xrb_gc_line_width, 1 << 4,
      :xrb_gc_line_style, 1 << 5,
      :xrb_gc_cap_style, 1 << 6,
      :xrb_gc_join_style, 1 << 7,
      :xrb_gc_fill_style, 1 << 8,
      :xrb_gc_fill_rule, 1 << 9,
      :xrb_gc_tile, 1 << 10,
      :xrb_gc_stipple, 1 << 11,
      :xrb_gc_tile_stipple_origin_x, 1 << 12,
      :xrb_gc_tile_stipple_origin_y, 1 << 13,
      :xrb_gc_font, 1 << 14,
      :xrb_gc_subwindow_mode, 1 << 15,
      :xrb_gc_graphics_exposures, 1 << 16,
      :xrb_gc_clip_origin_x, 1 << 17,
      :xrb_gc_clip_origin_y, 1 << 18,
      :xrb_gc_clip_mask, 1 << 19,
      :xrb_gc_dash_offset, 1 << 20,
      :xrb_gc_dash_list, 1 << 21,
      :xrb_gc_arc_mode, 1 << 22
  ]
  enum :xrb_gx_t, [
      :xrb_gx_clear, 0,
      :xrb_gx_and, 1,
      :xrb_gx_and_reverse, 2,
      :xrb_gx_copy, 3,
      :xrb_gx_and_inverted, 4,
      :xrb_gx_noop, 5,
      :xrb_gx_xor, 6,
      :xrb_gx_or, 7,
      :xrb_gx_nor, 8,
      :xrb_gx_equiv, 9,
      :xrb_gx_invert, 10,
      :xrb_gx_or_reverse, 11,
      :xrb_gx_copy_inverted, 12,
      :xrb_gx_or_inverted, 13,
      :xrb_gx_nand, 14,
      :xrb_gx_set, 15
  ]
  enum :xrb_line_style_t, [
      :xrb_line_style_solid, 0,
      :xrb_line_style_on_off_dash, 1,
      :xrb_line_style_double_dash, 2
  ]
  enum :xrb_cap_style_t, [
      :xrb_cap_style_not_last, 0,
      :xrb_cap_style_butt, 1,
      :xrb_cap_style_round, 2,
      :xrb_cap_style_projecting, 3
  ]
  enum :xrb_join_style_t, [
      :xrb_join_style_miter, 0,
      :xrb_join_style_round, 1,
      :xrb_join_style_bevel, 2
  ]
  enum :xrb_fill_style_t, [
      :xrb_fill_style_solid, 0,
      :xrb_fill_style_tiled, 1,
      :xrb_fill_style_stippled, 2,
      :xrb_fill_style_opaque_stippled, 3
  ]
  enum :xrb_fill_rule_t, [
      :xrb_fill_rule_even_odd, 0,
      :xrb_fill_rule_winding, 1
  ]
  enum :xrb_subwindow_mode_t, [
      :xrb_subwindow_mode_clip_by_children, 0,
      :xrb_subwindow_mode_include_inferiors, 1
  ]
  enum :xrb_arc_mode_t, [
      :xrb_arc_mode_chord, 0,
      :xrb_arc_mode_pie_slice, 1
  ]
  enum :xrb_clip_ordering_t, [
      :xrb_clip_ordering_unsorted, 0,
      :xrb_clip_ordering_y_sorted, 1,
      :xrb_clip_ordering_yx_sorted, 2,
      :xrb_clip_ordering_yx_banded, 3
  ]
  enum :xrb_coord_mode_t, [
      :xrb_coord_mode_origin, 0,
      :xrb_coord_mode_previous, 1
  ]
  class XrbSegment < FFI::Struct
    layout \
        :x1, :int16,
        :y1, :int16,
        :x2, :int16,
        :y2, :int16
  end

  class XrbSegmentIterator < FFI::Struct
    layout \
        :data, :pointer,
        :rem, :int,
        :indent, :int
  end
  attach_function :xcb_segment_next, [:pointer], :void
  attach_function :xcb_segment_end, [:pointer], XrbGenericIterator
  enum :xrb_poly_shape_t, [
      :xrb_poly_shape_complex, 0,
      :xrb_poly_shape_nonconvex, 1,
      :xrb_poly_shape_convex, 2
  ]
  enum :xrb_image_format_t, [
      :xrb_image_format_xy_bitmap, 0,
      :xrb_image_format_xy_pixmap, 1,
      :xrb_image_format_z_pixmap, 2
  ]
  enum :xrb_colormap_alloc_t, [
      :xrb_colormap_alloc_none, 0,
      :xrb_colormap_alloc_all, 1
  ]
  enum :xrb_color_flag_t, [
      :xrb_color_flag_red, 1 << 0,
      :xrb_color_flag_green, 1 << 1,
      :xrb_color_flag_blue, 1 << 2
  ]
  class XrbColoritem < FFI::Struct
    layout \
        :pixel, :uint32,
        :red, :uint16,
        :green, :uint16,
        :blue, :uint16,
        :flags, :uint8,
        :pad1, [:uint8, 1]
  end

  class XrbColoritemIterator < FFI::Struct
    layout \
        :data, :pointer,
        :rem, :int,
        :indent, :int
  end
  attach_function :xcb_coloritem_next, [:pointer], :void
  attach_function :xcb_coloritem_end, [:pointer], XrbGenericIterator
  class XrbRgb < FFI::Struct
    layout \
        :red, :uint16,
        :green, :uint16,
        :blue, :uint16,
        :pad1, [:uint8, 2]
  end

  class XrbRgbIterator < FFI::Struct
    layout \
        :data, :pointer,
        :rem, :int,
        :indent, :int
  end
  attach_function :xcb_rgb_next, [:pointer], :void
  attach_function :xcb_rgb_end, [:pointer], XrbGenericIterator
  enum :xrb_pixmap_t, [
      :xrb_pixmap_none, 0
  ]
  enum :xrb_font_t, [
      :xrb_font_none, 0
  ]
  enum :xrb_query_shape_of_t, [
      :xrb_query_shape_of_largest_cursor, 0,
      :xrb_query_shape_of_fastest_tile, 1,
      :xrb_query_shape_of_fastest_stipple, 2
  ]
  enum :xrb_kb_t, [
      :xrb_kb_key_click_percent, 1 << 0,
      :xrb_kb_bell_percent, 1 << 1,
      :xrb_kb_bell_pitch, 1 << 2,
      :xrb_kb_bell_duration, 1 << 3,
      :xrb_kb_led, 1 << 4,
      :xrb_kb_led_mode, 1 << 5,
      :xrb_kb_key, 1 << 6,
      :xrb_kb_auto_repeat_mode, 1 << 7
  ]
  enum :xrb_led_mode_t, [
      :xrb_led_mode_off, 0,
      :xrb_led_mode_on, 1
  ]
  enum :xrb_auto_repeat_mode_t, [
      :xrb_auto_repeat_mode_off, 0,
      :xrb_auto_repeat_mode_on, 1,
      :xrb_auto_repeat_mode_default, 2
  ]
  enum :xrb_blanking_t, [
      :xrb_blanking_not_preferred, 0,
      :xrb_blanking_preferred, 1,
      :xrb_blanking_default, 2
  ]
  enum :xrb_exposures_t, [
      :xrb_exposures_not_allowed, 0,
      :xrb_exposures_allowed, 1,
      :xrb_exposures_default, 2
  ]
  enum :xrb_host_mode_t, [
      :xrb_host_mode_insert, 0,
      :xrb_host_mode_delete, 1
  ]
  enum :xrb_family_t, [
      :xrb_family_internet, 0,
      :xrb_family_de_cnet, 1,
      :xrb_family_chaos, 2,
      :xrb_family_server_interpreted, 5,
      :xrb_family_internet_6, 6
  ]
  class XrbHost < FFI::Struct
    layout \
        :family, :uint8,
        :pad1, [:uint8, 1],
        :address_len, :uint16
  end

  class XrbHostIterator < FFI::Struct
    layout \
        :data, :pointer,
        :rem, :int,
        :indent, :int
  end
  attach_function :xcb_host_next, [:pointer], :void
  attach_function :xcb_host_end, [:pointer], XrbGenericIterator
  attach_function :xcb_host_sizeof, [:pointer], :int
  attach_function :xcb_host_address, [:pointer], :pointer
  attach_function :xcb_host_address_length, [:pointer], :int
  enum :xrb_access_control_t, [
      :xrb_access_control_disable, 0,
      :xrb_access_control_enable, 1
  ]
  enum :xrb_close_down_t, [
      :xrb_close_down_destroy_all, 0,
      :xrb_close_down_retain_permanent, 1,
      :xrb_close_down_retain_temporary, 2
  ]
  enum :xrb_kill_t, [
      :xrb_kill_all_temporary, 0
  ]
  enum :xrb_screen_saver_t, [
      :xrb_screen_saver_reset, 0,
      :xrb_screen_saver_active, 1
  ]
  enum :xrb_mapping_status_t, [
      :xrb_mapping_status_success, 0,
      :xrb_mapping_status_busy, 1,
      :xrb_mapping_status_failure, 2
  ]
  enum :xrb_map_index_t, [
      :xrb_map_index_shift, 0,
      :xrb_map_index_lock, 1,
      :xrb_map_index_control, 2,
      :xrb_map_index_1, 3,
      :xrb_map_index_2, 4,
      :xrb_map_index_3, 5,
      :xrb_map_index_4, 6,
      :xrb_map_index_5, 7
  ]
  class XrbKeyPressEvent < FFI::Struct
    layout \
        :response_type, :uint8,
        :detail, :xrb_keycode_t,
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
        :pad1, [:uint8, 1]
  end

  class XrbKeyReleaseEvent < FFI::Struct
    layout \
        :response_type, :uint8,
        :detail, :xrb_keycode_t,
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
        :pad1, [:uint8, 1]
  end

  class XrbButtonPressEvent < FFI::Struct
    layout \
        :response_type, :uint8,
        :detail, :xrb_button_t,
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
        :pad1, [:uint8, 1]
  end

  class XrbButtonReleaseEvent < FFI::Struct
    layout \
        :response_type, :uint8,
        :detail, :xrb_button_t,
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
        :pad1, [:uint8, 1]
  end

  class XrbMotionNotifyEvent < FFI::Struct
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
        :pad1, [:uint8, 1]
  end

  class XrbEnterNotifyEvent < FFI::Struct
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
        :mode, :uint8,
        :same_screen_focus, :uint8
  end

  class XrbLeaveNotifyEvent < FFI::Struct
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
        :mode, :uint8,
        :same_screen_focus, :uint8
  end

  class XrbFocusInEvent < FFI::Struct
    layout \
        :response_type, :uint8,
        :detail, :uint8,
        :event, :xrb_window_t,
        :mode, :uint8,
        :pad1, [:uint8, 3]
  end

  class XrbFocusOutEvent < FFI::Struct
    layout \
        :response_type, :uint8,
        :detail, :uint8,
        :event, :xrb_window_t,
        :mode, :uint8,
        :pad1, [:uint8, 3]
  end

  class XrbKeymapNotifyEvent < FFI::Struct
    layout \
        :response_type, :uint8,
        :keys_len, [:uint32 , 31]
  end

  class XrbExposeEvent < FFI::Struct
    layout \
        :response_type, :uint8,
        :pad1, [:uint8, 1],
        :window, :xrb_window_t,
        :x, :uint16,
        :y, :uint16,
        :width, :uint16,
        :height, :uint16,
        :count, :uint16,
        :pad2, [:uint8, 2]
  end

  class XrbGraphicsExposureEvent < FFI::Struct
    layout \
        :response_type, :uint8,
        :pad1, [:uint8, 1],
        :drawable, :xrb_drawable_t,
        :x, :uint16,
        :y, :uint16,
        :width, :uint16,
        :height, :uint16,
        :minor_opcode, :uint16,
        :count, :uint16,
        :major_opcode, :uint8,
        :pad2, [:uint8, 3]
  end

  class XrbNoExposureEvent < FFI::Struct
    layout \
        :response_type, :uint8,
        :pad1, [:uint8, 1],
        :drawable, :xrb_drawable_t,
        :minor_opcode, :uint16,
        :major_opcode, :uint8,
        :pad2, [:uint8, 1]
  end

  class XrbVisibilityNotifyEvent < FFI::Struct
    layout \
        :response_type, :uint8,
        :pad1, [:uint8, 1],
        :window, :xrb_window_t,
        :state, :uint8,
        :pad2, [:uint8, 3]
  end

  class XrbCreateNotifyEvent < FFI::Struct
    layout \
        :response_type, :uint8,
        :pad1, [:uint8, 1],
        :parent, :xrb_window_t,
        :window, :xrb_window_t,
        :x, :int16,
        :y, :int16,
        :width, :uint16,
        :height, :uint16,
        :border_width, :uint16,
        :override_redirect, :bool,
        :pad2, [:uint8, 1]
  end

  class XrbDestroyNotifyEvent < FFI::Struct
    layout \
        :response_type, :uint8,
        :pad1, [:uint8, 1],
        :event, :xrb_window_t,
        :window, :xrb_window_t
  end

  class XrbUnmapNotifyEvent < FFI::Struct
    layout \
        :response_type, :uint8,
        :pad1, [:uint8, 1],
        :event, :xrb_window_t,
        :window, :xrb_window_t,
        :from_configure, :bool,
        :pad2, [:uint8, 3]
  end

  class XrbMapNotifyEvent < FFI::Struct
    layout \
        :response_type, :uint8,
        :pad1, [:uint8, 1],
        :event, :xrb_window_t,
        :window, :xrb_window_t,
        :override_redirect, :bool,
        :pad2, [:uint8, 3]
  end

  class XrbMapRequestEvent < FFI::Struct
    layout \
        :response_type, :uint8,
        :pad1, [:uint8, 1],
        :parent, :xrb_window_t,
        :window, :xrb_window_t
  end

  class XrbReparentNotifyEvent < FFI::Struct
    layout \
        :response_type, :uint8,
        :pad1, [:uint8, 1],
        :event, :xrb_window_t,
        :window, :xrb_window_t,
        :parent, :xrb_window_t,
        :x, :int16,
        :y, :int16,
        :override_redirect, :bool,
        :pad2, [:uint8, 3]
  end

  class XrbConfigureNotifyEvent < FFI::Struct
    layout \
        :response_type, :uint8,
        :pad1, [:uint8, 1],
        :event, :xrb_window_t,
        :window, :xrb_window_t,
        :above_sibling, :xrb_window_t,
        :x, :int16,
        :y, :int16,
        :width, :uint16,
        :height, :uint16,
        :border_width, :uint16,
        :override_redirect, :bool,
        :pad2, [:uint8, 1]
  end

  class XrbConfigureRequestEvent < FFI::Struct
    layout \
        :response_type, :uint8,
        :stack_mode, :uint8,
        :parent, :xrb_window_t,
        :window, :xrb_window_t,
        :sibling, :xrb_window_t,
        :x, :int16,
        :y, :int16,
        :width, :uint16,
        :height, :uint16,
        :border_width, :uint16,
        :value_mask, :uint16
  end

  class XrbGravityNotifyEvent < FFI::Struct
    layout \
        :response_type, :uint8,
        :pad1, [:uint8, 1],
        :event, :xrb_window_t,
        :window, :xrb_window_t,
        :x, :int16,
        :y, :int16
  end

  class XrbResizeRequestEvent < FFI::Struct
    layout \
        :response_type, :uint8,
        :pad1, [:uint8, 1],
        :window, :xrb_window_t,
        :width, :uint16,
        :height, :uint16
  end

  class XrbCirculateNotifyEvent < FFI::Struct
    layout \
        :response_type, :uint8,
        :pad1, [:uint8, 1],
        :event, :xrb_window_t,
        :window, :xrb_window_t,
        :pad2, [:uint8, 4],
        :place, :uint8,
        :pad3, [:uint8, 3]
  end

  class XrbCirculateRequestEvent < FFI::Struct
    layout \
        :response_type, :uint8,
        :pad1, [:uint8, 1],
        :event, :xrb_window_t,
        :window, :xrb_window_t,
        :pad2, [:uint8, 4],
        :place, :uint8,
        :pad3, [:uint8, 3]
  end

  class XrbPropertyNotifyEvent < FFI::Struct
    layout \
        :response_type, :uint8,
        :pad1, [:uint8, 1],
        :window, :xrb_window_t,
        :atom, :xrb_atom_t,
        :time, :xrb_timestamp_t,
        :state, :uint8,
        :pad2, [:uint8, 3]
  end

  class XrbSelectionClearEvent < FFI::Struct
    layout \
        :response_type, :uint8,
        :pad1, [:uint8, 1],
        :time, :xrb_timestamp_t,
        :owner, :xrb_window_t,
        :selection, :xrb_atom_t
  end

  class XrbSelectionRequestEvent < FFI::Struct
    layout \
        :response_type, :uint8,
        :pad1, [:uint8, 1],
        :time, :xrb_timestamp_t,
        :owner, :xrb_window_t,
        :requestor, :xrb_window_t,
        :selection, :xrb_atom_t,
        :target, :xrb_atom_t,
        :property, :xrb_atom_t
  end

  class XrbSelectionNotifyEvent < FFI::Struct
    layout \
        :response_type, :uint8,
        :pad1, [:uint8, 1],
        :time, :xrb_timestamp_t,
        :requestor, :xrb_window_t,
        :selection, :xrb_atom_t,
        :target, :xrb_atom_t,
        :property, :xrb_atom_t
  end

  class XrbColormapNotifyEvent < FFI::Struct
    layout \
        :response_type, :uint8,
        :pad1, [:uint8, 1],
        :window, :xrb_window_t,
        :colormap, :xrb_colormap_t,
        :new, :bool,
        :state, :uint8,
        :pad2, [:uint8, 2]
  end

  class XrbClientMessageEvent < FFI::Struct
    layout \
        :response_type, :uint8,
        :format, :uint8,
        :window, :xrb_window_t,
        :type, :xrb_atom_t,
        :data, XrbClientMessageData
  end

  class XrbMappingNotifyEvent < FFI::Struct
    layout \
        :response_type, :uint8,
        :pad1, [:uint8, 1],
        :request, :uint8,
        :first_keycode, :xrb_keycode_t,
        :count, :uint8,
        :pad2, [:uint8, 1]
  end

  class XrbRequestError < FFI::Struct
    layout \
        :response_type, :uint8,
        :error_code, :uint8,
        :sequence, :uint16,
        :bad_value, :uint32,
        :minor_opcode, :uint16,
        :major_opcode, :uint8,
        :pad1, [:uint8, 1]
  end

  class XrbMatchError < FFI::Struct
    layout \
        :response_type, :uint8,
        :error_code, :uint8,
        :sequence, :uint16,
        :bad_value, :uint32,
        :minor_opcode, :uint16,
        :major_opcode, :uint8,
        :pad1, [:uint8, 1]
  end

  class XrbAccessError < FFI::Struct
    layout \
        :response_type, :uint8,
        :error_code, :uint8,
        :sequence, :uint16,
        :bad_value, :uint32,
        :minor_opcode, :uint16,
        :major_opcode, :uint8,
        :pad1, [:uint8, 1]
  end

  class XrbAllocError < FFI::Struct
    layout \
        :response_type, :uint8,
        :error_code, :uint8,
        :sequence, :uint16,
        :bad_value, :uint32,
        :minor_opcode, :uint16,
        :major_opcode, :uint8,
        :pad1, [:uint8, 1]
  end

  class XrbNameError < FFI::Struct
    layout \
        :response_type, :uint8,
        :error_code, :uint8,
        :sequence, :uint16,
        :bad_value, :uint32,
        :minor_opcode, :uint16,
        :major_opcode, :uint8,
        :pad1, [:uint8, 1]
  end

  class XrbLengthError < FFI::Struct
    layout \
        :response_type, :uint8,
        :error_code, :uint8,
        :sequence, :uint16,
        :bad_value, :uint32,
        :minor_opcode, :uint16,
        :major_opcode, :uint8,
        :pad1, [:uint8, 1]
  end

  class XrbImplementationError < FFI::Struct
    layout \
        :response_type, :uint8,
        :error_code, :uint8,
        :sequence, :uint16,
        :bad_value, :uint32,
        :minor_opcode, :uint16,
        :major_opcode, :uint8,
        :pad1, [:uint8, 1]
  end

  class XrbValueError < FFI::Struct
    layout \
        :response_type, :uint8,
        :error_code, :uint8,
        :sequence, :uint16,
        :bad_value, :uint32,
        :minor_opcode, :uint16,
        :major_opcode, :uint8,
        :pad1, [:uint8, 1]
  end

  class XrbWindowError < FFI::Struct
    layout \
        :response_type, :uint8,
        :error_code, :uint8,
        :sequence, :uint16,
        :bad_value, :uint32,
        :minor_opcode, :uint16,
        :major_opcode, :uint8,
        :pad1, [:uint8, 1]
  end

  class XrbPixmapError < FFI::Struct
    layout \
        :response_type, :uint8,
        :error_code, :uint8,
        :sequence, :uint16,
        :bad_value, :uint32,
        :minor_opcode, :uint16,
        :major_opcode, :uint8,
        :pad1, [:uint8, 1]
  end

  class XrbAtomError < FFI::Struct
    layout \
        :response_type, :uint8,
        :error_code, :uint8,
        :sequence, :uint16,
        :bad_value, :uint32,
        :minor_opcode, :uint16,
        :major_opcode, :uint8,
        :pad1, [:uint8, 1]
  end

  class XrbCursorError < FFI::Struct
    layout \
        :response_type, :uint8,
        :error_code, :uint8,
        :sequence, :uint16,
        :bad_value, :uint32,
        :minor_opcode, :uint16,
        :major_opcode, :uint8,
        :pad1, [:uint8, 1]
  end

  class XrbFontError < FFI::Struct
    layout \
        :response_type, :uint8,
        :error_code, :uint8,
        :sequence, :uint16,
        :bad_value, :uint32,
        :minor_opcode, :uint16,
        :major_opcode, :uint8,
        :pad1, [:uint8, 1]
  end

  class XrbDrawableError < FFI::Struct
    layout \
        :response_type, :uint8,
        :error_code, :uint8,
        :sequence, :uint16,
        :bad_value, :uint32,
        :minor_opcode, :uint16,
        :major_opcode, :uint8,
        :pad1, [:uint8, 1]
  end

  class XrbColormapError < FFI::Struct
    layout \
        :response_type, :uint8,
        :error_code, :uint8,
        :sequence, :uint16,
        :bad_value, :uint32,
        :minor_opcode, :uint16,
        :major_opcode, :uint8,
        :pad1, [:uint8, 1]
  end

  class XrbGContextError < FFI::Struct
    layout \
        :response_type, :uint8,
        :error_code, :uint8,
        :sequence, :uint16,
        :bad_value, :uint32,
        :minor_opcode, :uint16,
        :major_opcode, :uint8,
        :pad1, [:uint8, 1]
  end

  class XrbIDChoiceError < FFI::Struct
    layout \
        :response_type, :uint8,
        :error_code, :uint8,
        :sequence, :uint16,
        :bad_value, :uint32,
        :minor_opcode, :uint16,
        :major_opcode, :uint8,
        :pad1, [:uint8, 1]
  end

  class XrbBadSegError < FFI::Struct
    layout \
        :response_type, :uint8,
        :error_code, :uint8,
        :sequence, :uint16,
        :bad_value, :uint32,
        :minor_opcode, :uint16,
        :major_opcode, :uint8,
        :pad1, [:uint8, 1]
  end

  class XrbCreateWindowRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :depth, :uint8,
        :length, :uint16,
        :wid, :xrb_window_t,
        :parent, :xrb_window_t,
        :x, :int16,
        :y, :int16,
        :width, :uint16,
        :height, :uint16,
        :border_width, :uint16,
        :class, :uint16,
        :visual, :xrb_visualid_t,
        :value_mask, :uint32
  end

  class XrbCreateWindowCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_create_window_checked, [:pointer,:uint8,:uint8,:uint16,:xrb_window_t,:xrb_window_t,:int16,:int16,:uint16,:uint16,:uint16,:uint16,:xrb_visualid_t,:uint32], XrbCreateWindowCookie
  attach_function :xcb_create_window, [:pointer,:uint8,:uint8,:uint16,:xrb_window_t,:xrb_window_t,:int16,:int16,:uint16,:uint16,:uint16,:uint16,:xrb_visualid_t,:uint32], XrbCreateWindowCookie
  class XrbChangeWindowAttributesRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :pad1, [:uint8, 1],
        :length, :uint16,
        :window, :xrb_window_t,
        :value_mask, :uint32
  end

  class XrbChangeWindowAttributesCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_change_window_attributes_checked, [:pointer,:uint8,:uint16,:xrb_window_t,:uint32], XrbChangeWindowAttributesCookie
  attach_function :xcb_change_window_attributes, [:pointer,:uint8,:uint16,:xrb_window_t,:uint32], XrbChangeWindowAttributesCookie
  class XrbGetWindowAttributesRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :visual, :xrb_visualid_t,
        :length, :uint16,
        :class, :uint16,
        :bit_gravity, :uint8,
        :win_gravity, :uint8,
        :backing_planes, :uint32,
        :backing_pixel, :uint32,
        :save_under, :bool,
        :map_is_installed, :bool,
        :map_state, :uint8,
        :override_redirect, :bool,
        :colormap, :xrb_colormap_t,
        :all_event_masks, :uint32,
        :your_event_mask, :uint32,
        :do_not_propagate_mask, :uint16,
        :pad1, [:uint8, 2]
  end

  class XrbGetWindowAttributesCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_get_window_attributes, [:pointer,:uint8,:xrb_visualid_t,:uint16,:uint16,:uint8,:uint8,:uint32,:uint32,:bool,:bool,:uint8,:bool,:xrb_colormap_t,:uint32,:uint32,:uint16], XrbGetWindowAttributesCookie
  class XrbGetWindowAttributesReply < FFI::Struct
    layout \
        :response_type, :uint8,
        :backing_store, :uint8,
        :sequence, :uint16,
        :length, :uint32,
        :visual, :xrb_visualid_t,
        :class, :uint16,
        :bit_gravity, :uint8,
        :win_gravity, :uint8,
        :backing_planes, :uint32,
        :backing_pixel, :uint32,
        :save_under, :bool,
        :map_is_installed, :bool,
        :map_state, :uint8,
        :override_redirect, :bool,
        :colormap, :xrb_colormap_t,
        :all_event_masks, :uint32,
        :your_event_mask, :uint32,
        :do_not_propagate_mask, :uint16,
        :pad1, [:uint8, 2]
  end

  attach_function :xcb_get_window_attributes_reply, [:pointer, XrbGetWindowAttributesCookie, :pointer], :pointer

        
  class XrbDestroyWindowRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :pad1, [:uint8, 1],
        :length, :uint16,
        :window, :xrb_window_t
  end

  class XrbDestroyWindowCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_destroy_window_checked, [:pointer,:uint8,:uint16,:xrb_window_t], XrbDestroyWindowCookie
  attach_function :xcb_destroy_window, [:pointer,:uint8,:uint16,:xrb_window_t], XrbDestroyWindowCookie
  class XrbDestroySubwindowsRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :pad1, [:uint8, 1],
        :length, :uint16,
        :window, :xrb_window_t
  end

  class XrbDestroySubwindowsCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_destroy_subwindows_checked, [:pointer,:uint8,:uint16,:xrb_window_t], XrbDestroySubwindowsCookie
  attach_function :xcb_destroy_subwindows, [:pointer,:uint8,:uint16,:xrb_window_t], XrbDestroySubwindowsCookie
  class XrbChangeSaveSetRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :mode, :uint8,
        :length, :uint16,
        :window, :xrb_window_t
  end

  class XrbChangeSaveSetCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_change_save_set_checked, [:pointer,:uint8,:uint8,:uint16,:xrb_window_t], XrbChangeSaveSetCookie
  attach_function :xcb_change_save_set, [:pointer,:uint8,:uint8,:uint16,:xrb_window_t], XrbChangeSaveSetCookie
  class XrbReparentWindowRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :pad1, [:uint8, 1],
        :length, :uint16,
        :window, :xrb_window_t,
        :parent, :xrb_window_t,
        :x, :int16,
        :y, :int16
  end

  class XrbReparentWindowCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_reparent_window_checked, [:pointer,:uint8,:uint16,:xrb_window_t,:xrb_window_t,:int16,:int16], XrbReparentWindowCookie
  attach_function :xcb_reparent_window, [:pointer,:uint8,:uint16,:xrb_window_t,:xrb_window_t,:int16,:int16], XrbReparentWindowCookie
  class XrbMapWindowRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :pad1, [:uint8, 1],
        :length, :uint16,
        :window, :xrb_window_t
  end

  class XrbMapWindowCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_map_window_checked, [:pointer,:uint8,:uint16,:xrb_window_t], XrbMapWindowCookie
  attach_function :xcb_map_window, [:pointer,:uint8,:uint16,:xrb_window_t], XrbMapWindowCookie
  class XrbMapSubwindowsRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :pad1, [:uint8, 1],
        :length, :uint16,
        :window, :xrb_window_t
  end

  class XrbMapSubwindowsCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_map_subwindows_checked, [:pointer,:uint8,:uint16,:xrb_window_t], XrbMapSubwindowsCookie
  attach_function :xcb_map_subwindows, [:pointer,:uint8,:uint16,:xrb_window_t], XrbMapSubwindowsCookie
  class XrbUnmapWindowRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :pad1, [:uint8, 1],
        :length, :uint16,
        :window, :xrb_window_t
  end

  class XrbUnmapWindowCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_unmap_window_checked, [:pointer,:uint8,:uint16,:xrb_window_t], XrbUnmapWindowCookie
  attach_function :xcb_unmap_window, [:pointer,:uint8,:uint16,:xrb_window_t], XrbUnmapWindowCookie
  class XrbUnmapSubwindowsRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :pad1, [:uint8, 1],
        :length, :uint16,
        :window, :xrb_window_t
  end

  class XrbUnmapSubwindowsCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_unmap_subwindows_checked, [:pointer,:uint8,:uint16,:xrb_window_t], XrbUnmapSubwindowsCookie
  attach_function :xcb_unmap_subwindows, [:pointer,:uint8,:uint16,:xrb_window_t], XrbUnmapSubwindowsCookie
  class XrbConfigureWindowRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :pad1, [:uint8, 1],
        :length, :uint16,
        :window, :xrb_window_t,
        :value_mask, :uint16,
        :pad2, [:uint8, 2],
        :value_mask, :uint16
  end

  class XrbConfigureWindowCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_configure_window_checked, [:pointer,:uint8,:uint16,:xrb_window_t,:uint16,:uint32], XrbConfigureWindowCookie
  attach_function :xcb_configure_window, [:pointer,:uint8,:uint16,:xrb_window_t,:uint16,:uint32], XrbConfigureWindowCookie
  class XrbCirculateWindowRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :direction, :uint8,
        :length, :uint16,
        :window, :xrb_window_t
  end

  class XrbCirculateWindowCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_circulate_window_checked, [:pointer,:uint8,:uint8,:uint16,:xrb_window_t], XrbCirculateWindowCookie
  attach_function :xcb_circulate_window, [:pointer,:uint8,:uint8,:uint16,:xrb_window_t], XrbCirculateWindowCookie
  class XrbGetGeometryRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :root, :xrb_window_t,
        :length, :uint16,
        :x, :int16,
        :y, :int16,
        :width, :uint16,
        :height, :uint16,
        :border_width, :uint16,
        :pad1, [:uint8, 2]
  end

  class XrbGetGeometryCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_get_geometry, [:pointer,:uint8,:xrb_window_t,:uint16,:int16,:int16,:uint16,:uint16,:uint16], XrbGetGeometryCookie
  class XrbGetGeometryReply < FFI::Struct
    layout \
        :response_type, :uint8,
        :depth, :uint8,
        :sequence, :uint16,
        :length, :uint32,
        :root, :xrb_window_t,
        :x, :int16,
        :y, :int16,
        :width, :uint16,
        :height, :uint16,
        :border_width, :uint16,
        :pad1, [:uint8, 2]
  end

  attach_function :xcb_get_geometry_reply, [:pointer, XrbGetGeometryCookie, :pointer], :pointer

        
  class XrbQueryTreeRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :root, :xrb_window_t,
        :length, :uint16,
        :parent, :xrb_window_t,
        :children_len, :uint16,
        :pad2, [:uint8, 14]
  end

  class XrbQueryTreeCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_query_tree, [:pointer,:uint8,:xrb_window_t,:uint16,:xrb_window_t,:uint16,:uint32], XrbQueryTreeCookie
  class XrbQueryTreeReply < FFI::Struct
    layout \
        :response_type, :uint8,
        :pad1, [:uint8, 1],
        :sequence, :uint16,
        :length, :uint32,
        :root, :xrb_window_t,
        :parent, :xrb_window_t,
        :children_len, :uint16,
        :pad2, [:uint8, 14]
  end

  attach_function :xcb_query_tree_reply, [:pointer, XrbQueryTreeCookie, :pointer], :pointer

        
  class XrbInternAtomRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :atom, :xrb_atom_t,
        :length, :uint16
  end

  class XrbInternAtomCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_intern_atom, [:pointer,:uint8,:xrb_atom_t,:uint16], XrbInternAtomCookie
  class XrbInternAtomReply < FFI::Struct
    layout \
        :response_type, :uint8,
        :pad1, [:uint8, 1],
        :sequence, :uint16,
        :length, :uint32,
        :atom, :xrb_atom_t
  end

  attach_function :xcb_intern_atom_reply, [:pointer, XrbInternAtomCookie, :pointer], :pointer

        
  class XrbGetAtomNameRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :name_len, :uint16,
        :length, :uint16,
        :pad2, [:uint8, 22]
  end

  class XrbGetAtomNameCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_get_atom_name, [:pointer,:uint8,:uint16,:uint16,:uint32], XrbGetAtomNameCookie
  class XrbGetAtomNameReply < FFI::Struct
    layout \
        :response_type, :uint8,
        :pad1, [:uint8, 1],
        :sequence, :uint16,
        :length, :uint32,
        :name_len, :uint16,
        :pad2, [:uint8, 22]
  end

  attach_function :xcb_get_atom_name_reply, [:pointer, XrbGetAtomNameCookie, :pointer], :pointer

        
  class XrbChangePropertyRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :mode, :uint8,
        :length, :uint16,
        :window, :xrb_window_t,
        :property, :xrb_atom_t,
        :type, :xrb_atom_t,
        :format, :uint8,
        :pad1, [:uint8, 3],
        :data_len, :uint32
  end

  class XrbChangePropertyCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_change_property_checked, [:pointer,:uint8,:uint8,:uint16,:xrb_window_t,:xrb_atom_t,:xrb_atom_t,:uint8,:uint32,:uint32], XrbChangePropertyCookie
  attach_function :xcb_change_property, [:pointer,:uint8,:uint8,:uint16,:xrb_window_t,:xrb_atom_t,:xrb_atom_t,:uint8,:uint32,:uint32], XrbChangePropertyCookie
  class XrbDeletePropertyRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :pad1, [:uint8, 1],
        :length, :uint16,
        :window, :xrb_window_t,
        :property, :xrb_atom_t
  end

  class XrbDeletePropertyCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_delete_property_checked, [:pointer,:uint8,:uint16,:xrb_window_t,:xrb_atom_t], XrbDeletePropertyCookie
  attach_function :xcb_delete_property, [:pointer,:uint8,:uint16,:xrb_window_t,:xrb_atom_t], XrbDeletePropertyCookie
  class XrbGetPropertyRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :type, :xrb_atom_t,
        :length, :uint16,
        :bytes_after, :uint32,
        :value_len, :uint32,
        :pad1, [:uint8, 12]
  end

  class XrbGetPropertyCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_get_property, [:pointer,:uint8,:xrb_atom_t,:uint16,:uint32,:uint32,:uint32], XrbGetPropertyCookie
  class XrbGetPropertyReply < FFI::Struct
    layout \
        :response_type, :uint8,
        :format, :uint8,
        :sequence, :uint16,
        :length, :uint32,
        :type, :xrb_atom_t,
        :bytes_after, :uint32,
        :value_len, :uint32,
        :pad1, [:uint8, 12]
  end

  attach_function :xcb_get_property_reply, [:pointer, XrbGetPropertyCookie, :pointer], :pointer

        
  class XrbListPropertiesRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :atoms_len, :uint16,
        :length, :uint16,
        :pad2, [:uint8, 22]
  end

  class XrbListPropertiesCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_list_properties, [:pointer,:uint8,:uint16,:uint16,:uint32], XrbListPropertiesCookie
  class XrbListPropertiesReply < FFI::Struct
    layout \
        :response_type, :uint8,
        :pad1, [:uint8, 1],
        :sequence, :uint16,
        :length, :uint32,
        :atoms_len, :uint16,
        :pad2, [:uint8, 22]
  end

  attach_function :xcb_list_properties_reply, [:pointer, XrbListPropertiesCookie, :pointer], :pointer

        
  class XrbSetSelectionOwnerRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :pad1, [:uint8, 1],
        :length, :uint16,
        :owner, :xrb_window_t,
        :selection, :xrb_atom_t,
        :time, :xrb_timestamp_t
  end

  class XrbSetSelectionOwnerCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_set_selection_owner_checked, [:pointer,:uint8,:uint16,:xrb_window_t,:xrb_atom_t,:xrb_timestamp_t], XrbSetSelectionOwnerCookie
  attach_function :xcb_set_selection_owner, [:pointer,:uint8,:uint16,:xrb_window_t,:xrb_atom_t,:xrb_timestamp_t], XrbSetSelectionOwnerCookie
  class XrbGetSelectionOwnerRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :owner, :xrb_window_t,
        :length, :uint16
  end

  class XrbGetSelectionOwnerCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_get_selection_owner, [:pointer,:uint8,:xrb_window_t,:uint16], XrbGetSelectionOwnerCookie
  class XrbGetSelectionOwnerReply < FFI::Struct
    layout \
        :response_type, :uint8,
        :pad1, [:uint8, 1],
        :sequence, :uint16,
        :length, :uint32,
        :owner, :xrb_window_t
  end

  attach_function :xcb_get_selection_owner_reply, [:pointer, XrbGetSelectionOwnerCookie, :pointer], :pointer

        
  class XrbConvertSelectionRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :pad1, [:uint8, 1],
        :length, :uint16,
        :requestor, :xrb_window_t,
        :selection, :xrb_atom_t,
        :target, :xrb_atom_t,
        :property, :xrb_atom_t,
        :time, :xrb_timestamp_t
  end

  class XrbConvertSelectionCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_convert_selection_checked, [:pointer,:uint8,:uint16,:xrb_window_t,:xrb_atom_t,:xrb_atom_t,:xrb_atom_t,:xrb_timestamp_t], XrbConvertSelectionCookie
  attach_function :xcb_convert_selection, [:pointer,:uint8,:uint16,:xrb_window_t,:xrb_atom_t,:xrb_atom_t,:xrb_atom_t,:xrb_timestamp_t], XrbConvertSelectionCookie
  class XrbSendEventRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :propagate, :bool,
        :length, :uint16,
        :destination, :xrb_window_t,
        :event_mask, :uint32,
        :event_len, [:uint32 , 32]
  end

  class XrbSendEventCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_send_event_checked, [:pointer,:uint8,:bool,:uint16,:xrb_window_t,:uint32,:uint32], XrbSendEventCookie
  attach_function :xcb_send_event, [:pointer,:uint8,:bool,:uint16,:xrb_window_t,:uint32,:uint32], XrbSendEventCookie
  class XrbGrabPointerRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :pad0, [:uint8, 1],
        :length, :uint16
  end

  class XrbGrabPointerCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_grab_pointer, [:pointer,:uint8,:uint16], XrbGrabPointerCookie
  class XrbGrabPointerReply < FFI::Struct
    layout \
        :response_type, :uint8,
        :status, :uint8,
        :sequence, :uint16,
        :length, :uint32
  end

  attach_function :xcb_grab_pointer_reply, [:pointer, XrbGrabPointerCookie, :pointer], :pointer

        
  class XrbUngrabPointerRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :pad1, [:uint8, 1],
        :length, :uint16,
        :time, :xrb_timestamp_t
  end

  class XrbUngrabPointerCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_ungrab_pointer_checked, [:pointer,:uint8,:uint16,:xrb_timestamp_t], XrbUngrabPointerCookie
  attach_function :xcb_ungrab_pointer, [:pointer,:uint8,:uint16,:xrb_timestamp_t], XrbUngrabPointerCookie
  class XrbGrabButtonRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :owner_events, :bool,
        :length, :uint16,
        :grab_window, :xrb_window_t,
        :event_mask, :uint16,
        :pointer_mode, :uint8,
        :keyboard_mode, :uint8,
        :confine_to, :xrb_window_t,
        :cursor, :xrb_cursor_t,
        :button, :uint8,
        :pad1, [:uint8, 1],
        :modifiers, :uint16
  end

  class XrbGrabButtonCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_grab_button_checked, [:pointer,:uint8,:bool,:uint16,:xrb_window_t,:uint16,:uint8,:uint8,:xrb_window_t,:xrb_cursor_t,:uint8,:uint16], XrbGrabButtonCookie
  attach_function :xcb_grab_button, [:pointer,:uint8,:bool,:uint16,:xrb_window_t,:uint16,:uint8,:uint8,:xrb_window_t,:xrb_cursor_t,:uint8,:uint16], XrbGrabButtonCookie
  class XrbUngrabButtonRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :button, :uint8,
        :length, :uint16,
        :grab_window, :xrb_window_t,
        :modifiers, :uint16,
        :pad1, [:uint8, 2]
  end

  class XrbUngrabButtonCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_ungrab_button_checked, [:pointer,:uint8,:uint8,:uint16,:xrb_window_t,:uint16], XrbUngrabButtonCookie
  attach_function :xcb_ungrab_button, [:pointer,:uint8,:uint8,:uint16,:xrb_window_t,:uint16], XrbUngrabButtonCookie
  class XrbChangeActivePointerGrabRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :pad1, [:uint8, 1],
        :length, :uint16,
        :cursor, :xrb_cursor_t,
        :time, :xrb_timestamp_t,
        :event_mask, :uint16,
        :pad2, [:uint8, 2]
  end

  class XrbChangeActivePointerGrabCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_change_active_pointer_grab_checked, [:pointer,:uint8,:uint16,:xrb_cursor_t,:xrb_timestamp_t,:uint16], XrbChangeActivePointerGrabCookie
  attach_function :xcb_change_active_pointer_grab, [:pointer,:uint8,:uint16,:xrb_cursor_t,:xrb_timestamp_t,:uint16], XrbChangeActivePointerGrabCookie
  class XrbGrabKeyboardRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :pad0, [:uint8, 1],
        :length, :uint16
  end

  class XrbGrabKeyboardCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_grab_keyboard, [:pointer,:uint8,:uint16], XrbGrabKeyboardCookie
  class XrbGrabKeyboardReply < FFI::Struct
    layout \
        :response_type, :uint8,
        :status, :uint8,
        :sequence, :uint16,
        :length, :uint32
  end

  attach_function :xcb_grab_keyboard_reply, [:pointer, XrbGrabKeyboardCookie, :pointer], :pointer

        
  class XrbUngrabKeyboardRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :pad1, [:uint8, 1],
        :length, :uint16,
        :time, :xrb_timestamp_t
  end

  class XrbUngrabKeyboardCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_ungrab_keyboard_checked, [:pointer,:uint8,:uint16,:xrb_timestamp_t], XrbUngrabKeyboardCookie
  attach_function :xcb_ungrab_keyboard, [:pointer,:uint8,:uint16,:xrb_timestamp_t], XrbUngrabKeyboardCookie
  class XrbGrabKeyRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :owner_events, :bool,
        :length, :uint16,
        :grab_window, :xrb_window_t,
        :modifiers, :uint16,
        :key, :xrb_keycode_t,
        :pointer_mode, :uint8,
        :keyboard_mode, :uint8,
        :pad1, [:uint8, 3]
  end

  class XrbGrabKeyCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_grab_key_checked, [:pointer,:uint8,:bool,:uint16,:xrb_window_t,:uint16,:xrb_keycode_t,:uint8,:uint8], XrbGrabKeyCookie
  attach_function :xcb_grab_key, [:pointer,:uint8,:bool,:uint16,:xrb_window_t,:uint16,:xrb_keycode_t,:uint8,:uint8], XrbGrabKeyCookie
  class XrbUngrabKeyRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :key, :xrb_keycode_t,
        :length, :uint16,
        :grab_window, :xrb_window_t,
        :modifiers, :uint16,
        :pad1, [:uint8, 2]
  end

  class XrbUngrabKeyCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_ungrab_key_checked, [:pointer,:uint8,:xrb_keycode_t,:uint16,:xrb_window_t,:uint16], XrbUngrabKeyCookie
  attach_function :xcb_ungrab_key, [:pointer,:uint8,:xrb_keycode_t,:uint16,:xrb_window_t,:uint16], XrbUngrabKeyCookie
  class XrbAllowEventsRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :mode, :uint8,
        :length, :uint16,
        :time, :xrb_timestamp_t
  end

  class XrbAllowEventsCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_allow_events_checked, [:pointer,:uint8,:uint8,:uint16,:xrb_timestamp_t], XrbAllowEventsCookie
  attach_function :xcb_allow_events, [:pointer,:uint8,:uint8,:uint16,:xrb_timestamp_t], XrbAllowEventsCookie
  class XrbGrabServerRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :pad0, [:uint8, 1],
        :length, :uint16
  end

  class XrbGrabServerCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_grab_server_checked, [:pointer,:uint8,:uint16], XrbGrabServerCookie
  attach_function :xcb_grab_server, [:pointer,:uint8,:uint16], XrbGrabServerCookie
  class XrbUngrabServerRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :pad0, [:uint8, 1],
        :length, :uint16
  end

  class XrbUngrabServerCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_ungrab_server_checked, [:pointer,:uint8,:uint16], XrbUngrabServerCookie
  attach_function :xcb_ungrab_server, [:pointer,:uint8,:uint16], XrbUngrabServerCookie
  class XrbQueryPointerRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :root, :xrb_window_t,
        :length, :uint16,
        :child, :xrb_window_t,
        :root_x, :int16,
        :root_y, :int16,
        :win_x, :int16,
        :win_y, :int16,
        :mask, :uint16,
        :pad1, [:uint8, 2]
  end

  class XrbQueryPointerCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_query_pointer, [:pointer,:uint8,:xrb_window_t,:uint16,:xrb_window_t,:int16,:int16,:int16,:int16,:uint16], XrbQueryPointerCookie
  class XrbQueryPointerReply < FFI::Struct
    layout \
        :response_type, :uint8,
        :same_screen, :bool,
        :sequence, :uint16,
        :length, :uint32,
        :root, :xrb_window_t,
        :child, :xrb_window_t,
        :root_x, :int16,
        :root_y, :int16,
        :win_x, :int16,
        :win_y, :int16,
        :mask, :uint16,
        :pad1, [:uint8, 2]
  end

  attach_function :xcb_query_pointer_reply, [:pointer, XrbQueryPointerCookie, :pointer], :pointer

        
  class XrbGetMotionEventsRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :events_len, :uint32,
        :length, :uint16,
        :pad2, [:uint8, 20]
  end

  class XrbGetMotionEventsCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_get_motion_events, [:pointer,:uint8,:uint32,:uint16,:uint32], XrbGetMotionEventsCookie
  class XrbGetMotionEventsReply < FFI::Struct
    layout \
        :response_type, :uint8,
        :pad1, [:uint8, 1],
        :sequence, :uint16,
        :length, :uint32,
        :events_len, :uint32,
        :pad2, [:uint8, 20]
  end

  attach_function :xcb_get_motion_events_reply, [:pointer, XrbGetMotionEventsCookie, :pointer], :pointer

        
  class XrbTranslateCoordinatesRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :child, :xrb_window_t,
        :length, :uint16,
        :dst_x, :int16,
        :dst_y, :int16
  end

  class XrbTranslateCoordinatesCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_translate_coordinates, [:pointer,:uint8,:xrb_window_t,:uint16,:int16,:int16], XrbTranslateCoordinatesCookie
  class XrbTranslateCoordinatesReply < FFI::Struct
    layout \
        :response_type, :uint8,
        :same_screen, :bool,
        :sequence, :uint16,
        :length, :uint32,
        :child, :xrb_window_t,
        :dst_x, :int16,
        :dst_y, :int16
  end

  attach_function :xcb_translate_coordinates_reply, [:pointer, XrbTranslateCoordinatesCookie, :pointer], :pointer

        
  class XrbWarpPointerRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :pad1, [:uint8, 1],
        :length, :uint16,
        :src_window, :xrb_window_t,
        :dst_window, :xrb_window_t,
        :src_x, :int16,
        :src_y, :int16,
        :src_width, :uint16,
        :src_height, :uint16,
        :dst_x, :int16,
        :dst_y, :int16
  end

  class XrbWarpPointerCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_warp_pointer_checked, [:pointer,:uint8,:uint16,:xrb_window_t,:xrb_window_t,:int16,:int16,:uint16,:uint16,:int16,:int16], XrbWarpPointerCookie
  attach_function :xcb_warp_pointer, [:pointer,:uint8,:uint16,:xrb_window_t,:xrb_window_t,:int16,:int16,:uint16,:uint16,:int16,:int16], XrbWarpPointerCookie
  class XrbSetInputFocusRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :revert_to, :uint8,
        :length, :uint16,
        :focus, :xrb_window_t,
        :time, :xrb_timestamp_t
  end

  class XrbSetInputFocusCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_set_input_focus_checked, [:pointer,:uint8,:uint8,:uint16,:xrb_window_t,:xrb_timestamp_t], XrbSetInputFocusCookie
  attach_function :xcb_set_input_focus, [:pointer,:uint8,:uint8,:uint16,:xrb_window_t,:xrb_timestamp_t], XrbSetInputFocusCookie
  class XrbGetInputFocusRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :focus, :xrb_window_t,
        :length, :uint16
  end

  class XrbGetInputFocusCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_get_input_focus, [:pointer,:uint8,:xrb_window_t,:uint16], XrbGetInputFocusCookie
  class XrbGetInputFocusReply < FFI::Struct
    layout \
        :response_type, :uint8,
        :revert_to, :uint8,
        :sequence, :uint16,
        :length, :uint32,
        :focus, :xrb_window_t
  end

  attach_function :xcb_get_input_focus_reply, [:pointer, XrbGetInputFocusCookie, :pointer], :pointer

        
  class XrbQueryKeymapRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :keys_len, [:uint32 , 32],
        :length, :uint16
  end

  class XrbQueryKeymapCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_query_keymap, [:pointer,:uint8,:uint32,:uint16], XrbQueryKeymapCookie
  class XrbQueryKeymapReply < FFI::Struct
    layout \
        :response_type, :uint8,
        :pad1, [:uint8, 1],
        :sequence, :uint16,
        :length, :uint32,
        :keys_len, [:uint32 , 32]
  end

  attach_function :xcb_query_keymap_reply, [:pointer, XrbQueryKeymapCookie, :pointer], :pointer

        
  class XrbOpenFontRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :pad1, [:uint8, 1],
        :length, :uint16,
        :fid, :xrb_font_t,
        :name_len, :uint16,
        :pad2, [:uint8, 2]
  end

  class XrbOpenFontCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_open_font_checked, [:pointer,:uint8,:uint16,:xrb_font_t,:uint16,:uint32], XrbOpenFontCookie
  attach_function :xcb_open_font, [:pointer,:uint8,:uint16,:xrb_font_t,:uint16,:uint32], XrbOpenFontCookie
  class XrbCloseFontRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :pad1, [:uint8, 1],
        :length, :uint16,
        :font, :xrb_font_t
  end

  class XrbCloseFontCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_close_font_checked, [:pointer,:uint8,:uint16,:xrb_font_t], XrbCloseFontCookie
  attach_function :xcb_close_font, [:pointer,:uint8,:uint16,:xrb_font_t], XrbCloseFontCookie
  class XrbQueryFontRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :min_bounds, XrbCharinfo,
        :length, :uint16,
        :pad2, [:uint8, 4],
        :max_bounds, XrbCharinfo,
        :pad3, [:uint8, 4],
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
        :char_infos_len, :uint32
  end

  class XrbQueryFontCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_query_font, [:pointer,:uint8,XrbCharinfo,:uint16,XrbCharinfo,:uint16,:uint16,:uint16,:uint16,:uint8,:uint8,:uint8,:bool,:int16,:int16,:uint32,:uint32,:uint32], XrbQueryFontCookie
  class XrbQueryFontReply < FFI::Struct
    layout \
        :response_type, :uint8,
        :pad1, [:uint8, 1],
        :sequence, :uint16,
        :length, :uint32,
        :min_bounds, XrbCharinfo,
        :pad2, [:uint8, 4],
        :max_bounds, XrbCharinfo,
        :pad3, [:uint8, 4],
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
        :char_infos_len, :uint32
  end

  attach_function :xcb_query_font_reply, [:pointer, XrbQueryFontCookie, :pointer], :pointer

        
  class XrbQueryTextExtentsRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :font_ascent, :int16,
        :length, :uint16,
        :font_descent, :int16,
        :overall_ascent, :int16,
        :overall_descent, :int16,
        :overall_width, :int32,
        :overall_left, :int32,
        :overall_right, :int32
  end

  class XrbQueryTextExtentsCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_query_text_extents, [:pointer,:uint8,:int16,:uint16,:int16,:int16,:int16,:int32,:int32,:int32], XrbQueryTextExtentsCookie
  class XrbQueryTextExtentsReply < FFI::Struct
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

  attach_function :xcb_query_text_extents_reply, [:pointer, XrbQueryTextExtentsCookie, :pointer], :pointer

        
  class XrbListFontsRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :names_len, :uint16,
        :length, :uint16,
        :pad2, [:uint8, 22]
  end

  class XrbListFontsCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_list_fonts, [:pointer,:uint8,:uint16,:uint16,:uint32], XrbListFontsCookie
  class XrbListFontsReply < FFI::Struct
    layout \
        :response_type, :uint8,
        :pad1, [:uint8, 1],
        :sequence, :uint16,
        :length, :uint32,
        :names_len, :uint16,
        :pad2, [:uint8, 22]
  end

  attach_function :xcb_list_fonts_reply, [:pointer, XrbListFontsCookie, :pointer], :pointer

        
  class XrbListFontsWithInfoRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :min_bounds, XrbCharinfo,
        :length, :uint16,
        :pad1, [:uint8, 4],
        :max_bounds, XrbCharinfo,
        :pad2, [:uint8, 4],
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
        :replies_hint, :uint32
  end

  class XrbListFontsWithInfoCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_list_fonts_with_info, [:pointer,:uint8,XrbCharinfo,:uint16,XrbCharinfo,:uint16,:uint16,:uint16,:uint16,:uint8,:uint8,:uint8,:bool,:int16,:int16,:uint32,:uint32,:uint32], XrbListFontsWithInfoCookie
  class XrbListFontsWithInfoReply < FFI::Struct
    layout \
        :response_type, :uint8,
        :name_len, :uint8,
        :sequence, :uint16,
        :length, :uint32,
        :min_bounds, XrbCharinfo,
        :pad1, [:uint8, 4],
        :max_bounds, XrbCharinfo,
        :pad2, [:uint8, 4],
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
        :replies_hint, :uint32
  end

  attach_function :xcb_list_fonts_with_info_reply, [:pointer, XrbListFontsWithInfoCookie, :pointer], :pointer

        
  class XrbSetFontPathRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :pad1, [:uint8, 1],
        :length, :uint16,
        :font_qty, :uint16,
        :pad2, [:uint8, 2]
  end

  class XrbSetFontPathCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_set_font_path_checked, [:pointer,:uint8,:uint16,:uint16,:uint32], XrbSetFontPathCookie
  attach_function :xcb_set_font_path, [:pointer,:uint8,:uint16,:uint16,:uint32], XrbSetFontPathCookie
  class XrbGetFontPathRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :path_len, :uint16,
        :length, :uint16,
        :pad2, [:uint8, 22]
  end

  class XrbGetFontPathCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_get_font_path, [:pointer,:uint8,:uint16,:uint16,:uint32], XrbGetFontPathCookie
  class XrbGetFontPathReply < FFI::Struct
    layout \
        :response_type, :uint8,
        :pad1, [:uint8, 1],
        :sequence, :uint16,
        :length, :uint32,
        :path_len, :uint16,
        :pad2, [:uint8, 22]
  end

  attach_function :xcb_get_font_path_reply, [:pointer, XrbGetFontPathCookie, :pointer], :pointer

        
  class XrbCreatePixmapRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :depth, :uint8,
        :length, :uint16,
        :pid, :xrb_pixmap_t,
        :drawable, :xrb_drawable_t,
        :width, :uint16,
        :height, :uint16
  end

  class XrbCreatePixmapCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_create_pixmap_checked, [:pointer,:uint8,:uint8,:uint16,:xrb_pixmap_t,:xrb_drawable_t,:uint16,:uint16], XrbCreatePixmapCookie
  attach_function :xcb_create_pixmap, [:pointer,:uint8,:uint8,:uint16,:xrb_pixmap_t,:xrb_drawable_t,:uint16,:uint16], XrbCreatePixmapCookie
  class XrbFreePixmapRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :pad1, [:uint8, 1],
        :length, :uint16,
        :pixmap, :xrb_pixmap_t
  end

  class XrbFreePixmapCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_free_pixmap_checked, [:pointer,:uint8,:uint16,:xrb_pixmap_t], XrbFreePixmapCookie
  attach_function :xcb_free_pixmap, [:pointer,:uint8,:uint16,:xrb_pixmap_t], XrbFreePixmapCookie
  class XrbCreateGCRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :pad1, [:uint8, 1],
        :length, :uint16,
        :cid, :xrb_gcontext_t,
        :drawable, :xrb_drawable_t,
        :value_mask, :uint32
  end

  class XrbCreateGCCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_create_gc_checked, [:pointer,:uint8,:uint16,:xrb_gcontext_t,:xrb_drawable_t,:uint32], XrbCreateGCCookie
  attach_function :xcb_create_gc, [:pointer,:uint8,:uint16,:xrb_gcontext_t,:xrb_drawable_t,:uint32], XrbCreateGCCookie
  class XrbChangeGCRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :pad1, [:uint8, 1],
        :length, :uint16,
        :gc, :xrb_gcontext_t,
        :value_mask, :uint32
  end

  class XrbChangeGCCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_change_gc_checked, [:pointer,:uint8,:uint16,:xrb_gcontext_t,:uint32], XrbChangeGCCookie
  attach_function :xcb_change_gc, [:pointer,:uint8,:uint16,:xrb_gcontext_t,:uint32], XrbChangeGCCookie
  class XrbCopyGCRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :pad1, [:uint8, 1],
        :length, :uint16,
        :src_gc, :xrb_gcontext_t,
        :dst_gc, :xrb_gcontext_t,
        :value_mask, :uint32
  end

  class XrbCopyGCCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_copy_gc_checked, [:pointer,:uint8,:uint16,:xrb_gcontext_t,:xrb_gcontext_t,:uint32], XrbCopyGCCookie
  attach_function :xcb_copy_gc, [:pointer,:uint8,:uint16,:xrb_gcontext_t,:xrb_gcontext_t,:uint32], XrbCopyGCCookie
  class XrbSetDashesRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :pad1, [:uint8, 1],
        :length, :uint16,
        :gc, :xrb_gcontext_t,
        :dash_offset, :uint16,
        :dashes_len, :uint16
  end

  class XrbSetDashesCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_set_dashes_checked, [:pointer,:uint8,:uint16,:xrb_gcontext_t,:uint16,:uint16,:uint32], XrbSetDashesCookie
  attach_function :xcb_set_dashes, [:pointer,:uint8,:uint16,:xrb_gcontext_t,:uint16,:uint16,:uint32], XrbSetDashesCookie
  class XrbSetClipRectanglesRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :ordering, :uint8,
        :length, :uint16,
        :gc, :xrb_gcontext_t,
        :clip_x_origin, :int16,
        :clip_y_origin, :int16
  end

  class XrbSetClipRectanglesCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_set_clip_rectangles_checked, [:pointer,:uint8,:uint8,:uint16,:xrb_gcontext_t,:int16,:int16,:uint32], XrbSetClipRectanglesCookie
  attach_function :xcb_set_clip_rectangles, [:pointer,:uint8,:uint8,:uint16,:xrb_gcontext_t,:int16,:int16,:uint32], XrbSetClipRectanglesCookie
  class XrbFreeGCRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :pad1, [:uint8, 1],
        :length, :uint16,
        :gc, :xrb_gcontext_t
  end

  class XrbFreeGCCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_free_gc_checked, [:pointer,:uint8,:uint16,:xrb_gcontext_t], XrbFreeGCCookie
  attach_function :xcb_free_gc, [:pointer,:uint8,:uint16,:xrb_gcontext_t], XrbFreeGCCookie
  class XrbClearAreaRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :exposures, :bool,
        :length, :uint16,
        :window, :xrb_window_t,
        :x, :int16,
        :y, :int16,
        :width, :uint16,
        :height, :uint16
  end

  class XrbClearAreaCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_clear_area_checked, [:pointer,:uint8,:bool,:uint16,:xrb_window_t,:int16,:int16,:uint16,:uint16], XrbClearAreaCookie
  attach_function :xcb_clear_area, [:pointer,:uint8,:bool,:uint16,:xrb_window_t,:int16,:int16,:uint16,:uint16], XrbClearAreaCookie
  class XrbCopyAreaRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :pad1, [:uint8, 1],
        :length, :uint16,
        :src_drawable, :xrb_drawable_t,
        :dst_drawable, :xrb_drawable_t,
        :gc, :xrb_gcontext_t,
        :src_x, :int16,
        :src_y, :int16,
        :dst_x, :int16,
        :dst_y, :int16,
        :width, :uint16,
        :height, :uint16
  end

  class XrbCopyAreaCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_copy_area_checked, [:pointer,:uint8,:uint16,:xrb_drawable_t,:xrb_drawable_t,:xrb_gcontext_t,:int16,:int16,:int16,:int16,:uint16,:uint16], XrbCopyAreaCookie
  attach_function :xcb_copy_area, [:pointer,:uint8,:uint16,:xrb_drawable_t,:xrb_drawable_t,:xrb_gcontext_t,:int16,:int16,:int16,:int16,:uint16,:uint16], XrbCopyAreaCookie
  class XrbCopyPlaneRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :pad1, [:uint8, 1],
        :length, :uint16,
        :src_drawable, :xrb_drawable_t,
        :dst_drawable, :xrb_drawable_t,
        :gc, :xrb_gcontext_t,
        :src_x, :int16,
        :src_y, :int16,
        :dst_x, :int16,
        :dst_y, :int16,
        :width, :uint16,
        :height, :uint16,
        :bit_plane, :uint32
  end

  class XrbCopyPlaneCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_copy_plane_checked, [:pointer,:uint8,:uint16,:xrb_drawable_t,:xrb_drawable_t,:xrb_gcontext_t,:int16,:int16,:int16,:int16,:uint16,:uint16,:uint32], XrbCopyPlaneCookie
  attach_function :xcb_copy_plane, [:pointer,:uint8,:uint16,:xrb_drawable_t,:xrb_drawable_t,:xrb_gcontext_t,:int16,:int16,:int16,:int16,:uint16,:uint16,:uint32], XrbCopyPlaneCookie
  class XrbPolyPointRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :coordinate_mode, :uint8,
        :length, :uint16,
        :drawable, :xrb_drawable_t,
        :gc, :xrb_gcontext_t
  end

  class XrbPolyPointCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_poly_point_checked, [:pointer,:uint8,:uint8,:uint16,:xrb_drawable_t,:xrb_gcontext_t,:uint32], XrbPolyPointCookie
  attach_function :xcb_poly_point, [:pointer,:uint8,:uint8,:uint16,:xrb_drawable_t,:xrb_gcontext_t,:uint32], XrbPolyPointCookie
  class XrbPolyLineRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :coordinate_mode, :uint8,
        :length, :uint16,
        :drawable, :xrb_drawable_t,
        :gc, :xrb_gcontext_t
  end

  class XrbPolyLineCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_poly_line_checked, [:pointer,:uint8,:uint8,:uint16,:xrb_drawable_t,:xrb_gcontext_t,:uint32], XrbPolyLineCookie
  attach_function :xcb_poly_line, [:pointer,:uint8,:uint8,:uint16,:xrb_drawable_t,:xrb_gcontext_t,:uint32], XrbPolyLineCookie
  class XrbPolySegmentRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :pad1, [:uint8, 1],
        :length, :uint16,
        :drawable, :xrb_drawable_t,
        :gc, :xrb_gcontext_t
  end

  class XrbPolySegmentCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_poly_segment_checked, [:pointer,:uint8,:uint16,:xrb_drawable_t,:xrb_gcontext_t,:uint32], XrbPolySegmentCookie
  attach_function :xcb_poly_segment, [:pointer,:uint8,:uint16,:xrb_drawable_t,:xrb_gcontext_t,:uint32], XrbPolySegmentCookie
  class XrbPolyRectangleRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :pad1, [:uint8, 1],
        :length, :uint16,
        :drawable, :xrb_drawable_t,
        :gc, :xrb_gcontext_t
  end

  class XrbPolyRectangleCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_poly_rectangle_checked, [:pointer,:uint8,:uint16,:xrb_drawable_t,:xrb_gcontext_t,:uint32], XrbPolyRectangleCookie
  attach_function :xcb_poly_rectangle, [:pointer,:uint8,:uint16,:xrb_drawable_t,:xrb_gcontext_t,:uint32], XrbPolyRectangleCookie
  class XrbPolyArcRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :pad1, [:uint8, 1],
        :length, :uint16,
        :drawable, :xrb_drawable_t,
        :gc, :xrb_gcontext_t
  end

  class XrbPolyArcCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_poly_arc_checked, [:pointer,:uint8,:uint16,:xrb_drawable_t,:xrb_gcontext_t,:uint32], XrbPolyArcCookie
  attach_function :xcb_poly_arc, [:pointer,:uint8,:uint16,:xrb_drawable_t,:xrb_gcontext_t,:uint32], XrbPolyArcCookie
  class XrbFillPolyRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :pad1, [:uint8, 1],
        :length, :uint16,
        :drawable, :xrb_drawable_t,
        :gc, :xrb_gcontext_t,
        :shape, :uint8,
        :coordinate_mode, :uint8,
        :pad2, [:uint8, 2]
  end

  class XrbFillPolyCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_fill_poly_checked, [:pointer,:uint8,:uint16,:xrb_drawable_t,:xrb_gcontext_t,:uint8,:uint8,:uint32], XrbFillPolyCookie
  attach_function :xcb_fill_poly, [:pointer,:uint8,:uint16,:xrb_drawable_t,:xrb_gcontext_t,:uint8,:uint8,:uint32], XrbFillPolyCookie
  class XrbPolyFillRectangleRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :pad1, [:uint8, 1],
        :length, :uint16,
        :drawable, :xrb_drawable_t,
        :gc, :xrb_gcontext_t
  end

  class XrbPolyFillRectangleCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_poly_fill_rectangle_checked, [:pointer,:uint8,:uint16,:xrb_drawable_t,:xrb_gcontext_t,:uint32], XrbPolyFillRectangleCookie
  attach_function :xcb_poly_fill_rectangle, [:pointer,:uint8,:uint16,:xrb_drawable_t,:xrb_gcontext_t,:uint32], XrbPolyFillRectangleCookie
  class XrbPolyFillArcRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :pad1, [:uint8, 1],
        :length, :uint16,
        :drawable, :xrb_drawable_t,
        :gc, :xrb_gcontext_t
  end

  class XrbPolyFillArcCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_poly_fill_arc_checked, [:pointer,:uint8,:uint16,:xrb_drawable_t,:xrb_gcontext_t,:uint32], XrbPolyFillArcCookie
  attach_function :xcb_poly_fill_arc, [:pointer,:uint8,:uint16,:xrb_drawable_t,:xrb_gcontext_t,:uint32], XrbPolyFillArcCookie
  class XrbPutImageRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :format, :uint8,
        :length, :uint16,
        :drawable, :xrb_drawable_t,
        :gc, :xrb_gcontext_t,
        :width, :uint16,
        :height, :uint16,
        :dst_x, :int16,
        :dst_y, :int16,
        :left_pad, :uint8,
        :depth, :uint8,
        :pad1, [:uint8, 2]
  end

  class XrbPutImageCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_put_image_checked, [:pointer,:uint8,:uint8,:uint16,:xrb_drawable_t,:xrb_gcontext_t,:uint16,:uint16,:int16,:int16,:uint8,:uint8,:uint32], XrbPutImageCookie
  attach_function :xcb_put_image, [:pointer,:uint8,:uint8,:uint16,:xrb_drawable_t,:xrb_gcontext_t,:uint16,:uint16,:int16,:int16,:uint8,:uint8,:uint32], XrbPutImageCookie
  class XrbGetImageRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :visual, :xrb_visualid_t,
        :length, :uint16,
        :pad1, [:uint8, 20]
  end

  class XrbGetImageCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_get_image, [:pointer,:uint8,:xrb_visualid_t,:uint16,:uint32], XrbGetImageCookie
  class XrbGetImageReply < FFI::Struct
    layout \
        :response_type, :uint8,
        :depth, :uint8,
        :sequence, :uint16,
        :length, :uint32,
        :visual, :xrb_visualid_t,
        :pad1, [:uint8, 20]
  end

  attach_function :xcb_get_image_reply, [:pointer, XrbGetImageCookie, :pointer], :pointer

        
  class XrbPolyText8Request < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :pad1, [:uint8, 1],
        :length, :uint16,
        :drawable, :xrb_drawable_t,
        :gc, :xrb_gcontext_t,
        :x, :int16,
        :y, :int16
  end

  class XrbPolyText8Cookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_poly_text_8_checked, [:pointer,:uint8,:uint16,:xrb_drawable_t,:xrb_gcontext_t,:int16,:int16,:uint32], XrbPolyText8Cookie
  attach_function :xcb_poly_text_8, [:pointer,:uint8,:uint16,:xrb_drawable_t,:xrb_gcontext_t,:int16,:int16,:uint32], XrbPolyText8Cookie
  class XrbPolyText16Request < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :pad1, [:uint8, 1],
        :length, :uint16,
        :drawable, :xrb_drawable_t,
        :gc, :xrb_gcontext_t,
        :x, :int16,
        :y, :int16
  end

  class XrbPolyText16Cookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_poly_text_16_checked, [:pointer,:uint8,:uint16,:xrb_drawable_t,:xrb_gcontext_t,:int16,:int16,:uint32], XrbPolyText16Cookie
  attach_function :xcb_poly_text_16, [:pointer,:uint8,:uint16,:xrb_drawable_t,:xrb_gcontext_t,:int16,:int16,:uint32], XrbPolyText16Cookie
  class XrbImageText8Request < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :string_len, :uint8,
        :length, :uint16,
        :drawable, :xrb_drawable_t,
        :gc, :xrb_gcontext_t,
        :x, :int16,
        :y, :int16
  end

  class XrbImageText8Cookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_image_text_8_checked, [:pointer,:uint8,:uint8,:uint16,:xrb_drawable_t,:xrb_gcontext_t,:int16,:int16,:uint32], XrbImageText8Cookie
  attach_function :xcb_image_text_8, [:pointer,:uint8,:uint8,:uint16,:xrb_drawable_t,:xrb_gcontext_t,:int16,:int16,:uint32], XrbImageText8Cookie
  class XrbImageText16Request < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :string_len, :uint8,
        :length, :uint16,
        :drawable, :xrb_drawable_t,
        :gc, :xrb_gcontext_t,
        :x, :int16,
        :y, :int16
  end

  class XrbImageText16Cookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_image_text_16_checked, [:pointer,:uint8,:uint8,:uint16,:xrb_drawable_t,:xrb_gcontext_t,:int16,:int16,:uint32], XrbImageText16Cookie
  attach_function :xcb_image_text_16, [:pointer,:uint8,:uint8,:uint16,:xrb_drawable_t,:xrb_gcontext_t,:int16,:int16,:uint32], XrbImageText16Cookie
  class XrbCreateColormapRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :alloc, :uint8,
        :length, :uint16,
        :mid, :xrb_colormap_t,
        :window, :xrb_window_t,
        :visual, :xrb_visualid_t
  end

  class XrbCreateColormapCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_create_colormap_checked, [:pointer,:uint8,:uint8,:uint16,:xrb_colormap_t,:xrb_window_t,:xrb_visualid_t], XrbCreateColormapCookie
  attach_function :xcb_create_colormap, [:pointer,:uint8,:uint8,:uint16,:xrb_colormap_t,:xrb_window_t,:xrb_visualid_t], XrbCreateColormapCookie
  class XrbFreeColormapRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :pad1, [:uint8, 1],
        :length, :uint16,
        :cmap, :xrb_colormap_t
  end

  class XrbFreeColormapCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_free_colormap_checked, [:pointer,:uint8,:uint16,:xrb_colormap_t], XrbFreeColormapCookie
  attach_function :xcb_free_colormap, [:pointer,:uint8,:uint16,:xrb_colormap_t], XrbFreeColormapCookie
  class XrbCopyColormapAndFreeRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :pad1, [:uint8, 1],
        :length, :uint16,
        :mid, :xrb_colormap_t,
        :src_cmap, :xrb_colormap_t
  end

  class XrbCopyColormapAndFreeCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_copy_colormap_and_free_checked, [:pointer,:uint8,:uint16,:xrb_colormap_t,:xrb_colormap_t], XrbCopyColormapAndFreeCookie
  attach_function :xcb_copy_colormap_and_free, [:pointer,:uint8,:uint16,:xrb_colormap_t,:xrb_colormap_t], XrbCopyColormapAndFreeCookie
  class XrbInstallColormapRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :pad1, [:uint8, 1],
        :length, :uint16,
        :cmap, :xrb_colormap_t
  end

  class XrbInstallColormapCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_install_colormap_checked, [:pointer,:uint8,:uint16,:xrb_colormap_t], XrbInstallColormapCookie
  attach_function :xcb_install_colormap, [:pointer,:uint8,:uint16,:xrb_colormap_t], XrbInstallColormapCookie
  class XrbUninstallColormapRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :pad1, [:uint8, 1],
        :length, :uint16,
        :cmap, :xrb_colormap_t
  end

  class XrbUninstallColormapCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_uninstall_colormap_checked, [:pointer,:uint8,:uint16,:xrb_colormap_t], XrbUninstallColormapCookie
  attach_function :xcb_uninstall_colormap, [:pointer,:uint8,:uint16,:xrb_colormap_t], XrbUninstallColormapCookie
  class XrbListInstalledColormapsRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :cmaps_len, :uint16,
        :length, :uint16,
        :pad2, [:uint8, 22]
  end

  class XrbListInstalledColormapsCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_list_installed_colormaps, [:pointer,:uint8,:uint16,:uint16,:uint32], XrbListInstalledColormapsCookie
  class XrbListInstalledColormapsReply < FFI::Struct
    layout \
        :response_type, :uint8,
        :pad1, [:uint8, 1],
        :sequence, :uint16,
        :length, :uint32,
        :cmaps_len, :uint16,
        :pad2, [:uint8, 22]
  end

  attach_function :xcb_list_installed_colormaps_reply, [:pointer, XrbListInstalledColormapsCookie, :pointer], :pointer

        
  class XrbAllocColorRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :red, :uint16,
        :length, :uint16,
        :green, :uint16,
        :blue, :uint16,
        :pad2, [:uint8, 2],
        :pixel, :uint32
  end

  class XrbAllocColorCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_alloc_color, [:pointer,:uint8,:uint16,:uint16,:uint16,:uint16,:uint32], XrbAllocColorCookie
  class XrbAllocColorReply < FFI::Struct
    layout \
        :response_type, :uint8,
        :pad1, [:uint8, 1],
        :sequence, :uint16,
        :length, :uint32,
        :red, :uint16,
        :green, :uint16,
        :blue, :uint16,
        :pad2, [:uint8, 2],
        :pixel, :uint32
  end

  attach_function :xcb_alloc_color_reply, [:pointer, XrbAllocColorCookie, :pointer], :pointer

        
  class XrbAllocNamedColorRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :pixel, :uint32,
        :length, :uint16,
        :exact_red, :uint16,
        :exact_green, :uint16,
        :exact_blue, :uint16,
        :visual_red, :uint16,
        :visual_green, :uint16,
        :visual_blue, :uint16
  end

  class XrbAllocNamedColorCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_alloc_named_color, [:pointer,:uint8,:uint32,:uint16,:uint16,:uint16,:uint16,:uint16,:uint16,:uint16], XrbAllocNamedColorCookie
  class XrbAllocNamedColorReply < FFI::Struct
    layout \
        :response_type, :uint8,
        :pad1, [:uint8, 1],
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

  attach_function :xcb_alloc_named_color_reply, [:pointer, XrbAllocNamedColorCookie, :pointer], :pointer

        
  class XrbAllocColorCellsRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :pixels_len, :uint16,
        :length, :uint16,
        :masks_len, :uint16,
        :pad2, [:uint8, 20]
  end

  class XrbAllocColorCellsCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_alloc_color_cells, [:pointer,:uint8,:uint16,:uint16,:uint16,:uint32,:uint32], XrbAllocColorCellsCookie
  class XrbAllocColorCellsReply < FFI::Struct
    layout \
        :response_type, :uint8,
        :pad1, [:uint8, 1],
        :sequence, :uint16,
        :length, :uint32,
        :pixels_len, :uint16,
        :masks_len, :uint16,
        :pad2, [:uint8, 20]
  end

  attach_function :xcb_alloc_color_cells_reply, [:pointer, XrbAllocColorCellsCookie, :pointer], :pointer

        
  class XrbAllocColorPlanesRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :pixels_len, :uint16,
        :length, :uint16,
        :pad2, [:uint8, 2],
        :red_mask, :uint32,
        :green_mask, :uint32,
        :blue_mask, :uint32,
        :pad3, [:uint8, 8]
  end

  class XrbAllocColorPlanesCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_alloc_color_planes, [:pointer,:uint8,:uint16,:uint16,:uint32,:uint32,:uint32,:uint32], XrbAllocColorPlanesCookie
  class XrbAllocColorPlanesReply < FFI::Struct
    layout \
        :response_type, :uint8,
        :pad1, [:uint8, 1],
        :sequence, :uint16,
        :length, :uint32,
        :pixels_len, :uint16,
        :pad2, [:uint8, 2],
        :red_mask, :uint32,
        :green_mask, :uint32,
        :blue_mask, :uint32,
        :pad3, [:uint8, 8]
  end

  attach_function :xcb_alloc_color_planes_reply, [:pointer, XrbAllocColorPlanesCookie, :pointer], :pointer

        
  class XrbFreeColorsRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :pad1, [:uint8, 1],
        :length, :uint16,
        :cmap, :xrb_colormap_t,
        :plane_mask, :uint32
  end

  class XrbFreeColorsCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_free_colors_checked, [:pointer,:uint8,:uint16,:xrb_colormap_t,:uint32,:uint32], XrbFreeColorsCookie
  attach_function :xcb_free_colors, [:pointer,:uint8,:uint16,:xrb_colormap_t,:uint32,:uint32], XrbFreeColorsCookie
  class XrbStoreColorsRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :pad1, [:uint8, 1],
        :length, :uint16,
        :cmap, :xrb_colormap_t
  end

  class XrbStoreColorsCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_store_colors_checked, [:pointer,:uint8,:uint16,:xrb_colormap_t,:uint32], XrbStoreColorsCookie
  attach_function :xcb_store_colors, [:pointer,:uint8,:uint16,:xrb_colormap_t,:uint32], XrbStoreColorsCookie
  class XrbStoreNamedColorRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :flags, :uint8,
        :length, :uint16,
        :cmap, :xrb_colormap_t,
        :pixel, :uint32,
        :name_len, :uint16,
        :pad1, [:uint8, 2]
  end

  class XrbStoreNamedColorCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_store_named_color_checked, [:pointer,:uint8,:uint8,:uint16,:xrb_colormap_t,:uint32,:uint16,:uint32], XrbStoreNamedColorCookie
  attach_function :xcb_store_named_color, [:pointer,:uint8,:uint8,:uint16,:xrb_colormap_t,:uint32,:uint16,:uint32], XrbStoreNamedColorCookie
  class XrbQueryColorsRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :colors_len, :uint16,
        :length, :uint16,
        :pad2, [:uint8, 22]
  end

  class XrbQueryColorsCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_query_colors, [:pointer,:uint8,:uint16,:uint16,:uint32], XrbQueryColorsCookie
  class XrbQueryColorsReply < FFI::Struct
    layout \
        :response_type, :uint8,
        :pad1, [:uint8, 1],
        :sequence, :uint16,
        :length, :uint32,
        :colors_len, :uint16,
        :pad2, [:uint8, 22]
  end

  attach_function :xcb_query_colors_reply, [:pointer, XrbQueryColorsCookie, :pointer], :pointer

        
  class XrbLookupColorRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :exact_red, :uint16,
        :length, :uint16,
        :exact_green, :uint16,
        :exact_blue, :uint16,
        :visual_red, :uint16,
        :visual_green, :uint16,
        :visual_blue, :uint16
  end

  class XrbLookupColorCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_lookup_color, [:pointer,:uint8,:uint16,:uint16,:uint16,:uint16,:uint16,:uint16,:uint16], XrbLookupColorCookie
  class XrbLookupColorReply < FFI::Struct
    layout \
        :response_type, :uint8,
        :pad1, [:uint8, 1],
        :sequence, :uint16,
        :length, :uint32,
        :exact_red, :uint16,
        :exact_green, :uint16,
        :exact_blue, :uint16,
        :visual_red, :uint16,
        :visual_green, :uint16,
        :visual_blue, :uint16
  end

  attach_function :xcb_lookup_color_reply, [:pointer, XrbLookupColorCookie, :pointer], :pointer

        
  class XrbCreateCursorRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :pad1, [:uint8, 1],
        :length, :uint16,
        :cid, :xrb_cursor_t,
        :source, :xrb_pixmap_t,
        :mask, :xrb_pixmap_t,
        :fore_red, :uint16,
        :fore_green, :uint16,
        :fore_blue, :uint16,
        :back_red, :uint16,
        :back_green, :uint16,
        :back_blue, :uint16,
        :x, :uint16,
        :y, :uint16
  end

  class XrbCreateCursorCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_create_cursor_checked, [:pointer,:uint8,:uint16,:xrb_cursor_t,:xrb_pixmap_t,:xrb_pixmap_t,:uint16,:uint16,:uint16,:uint16,:uint16,:uint16,:uint16,:uint16], XrbCreateCursorCookie
  attach_function :xcb_create_cursor, [:pointer,:uint8,:uint16,:xrb_cursor_t,:xrb_pixmap_t,:xrb_pixmap_t,:uint16,:uint16,:uint16,:uint16,:uint16,:uint16,:uint16,:uint16], XrbCreateCursorCookie
  class XrbCreateGlyphCursorRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :pad1, [:uint8, 1],
        :length, :uint16,
        :cid, :xrb_cursor_t,
        :source_font, :xrb_font_t,
        :mask_font, :xrb_font_t,
        :source_char, :uint16,
        :mask_char, :uint16,
        :fore_red, :uint16,
        :fore_green, :uint16,
        :fore_blue, :uint16,
        :back_red, :uint16,
        :back_green, :uint16,
        :back_blue, :uint16
  end

  class XrbCreateGlyphCursorCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_create_glyph_cursor_checked, [:pointer,:uint8,:uint16,:xrb_cursor_t,:xrb_font_t,:xrb_font_t,:uint16,:uint16,:uint16,:uint16,:uint16,:uint16,:uint16,:uint16], XrbCreateGlyphCursorCookie
  attach_function :xcb_create_glyph_cursor, [:pointer,:uint8,:uint16,:xrb_cursor_t,:xrb_font_t,:xrb_font_t,:uint16,:uint16,:uint16,:uint16,:uint16,:uint16,:uint16,:uint16], XrbCreateGlyphCursorCookie
  class XrbFreeCursorRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :pad1, [:uint8, 1],
        :length, :uint16,
        :cursor, :xrb_cursor_t
  end

  class XrbFreeCursorCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_free_cursor_checked, [:pointer,:uint8,:uint16,:xrb_cursor_t], XrbFreeCursorCookie
  attach_function :xcb_free_cursor, [:pointer,:uint8,:uint16,:xrb_cursor_t], XrbFreeCursorCookie
  class XrbRecolorCursorRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :pad1, [:uint8, 1],
        :length, :uint16,
        :cursor, :xrb_cursor_t,
        :fore_red, :uint16,
        :fore_green, :uint16,
        :fore_blue, :uint16,
        :back_red, :uint16,
        :back_green, :uint16,
        :back_blue, :uint16
  end

  class XrbRecolorCursorCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_recolor_cursor_checked, [:pointer,:uint8,:uint16,:xrb_cursor_t,:uint16,:uint16,:uint16,:uint16,:uint16,:uint16], XrbRecolorCursorCookie
  attach_function :xcb_recolor_cursor, [:pointer,:uint8,:uint16,:xrb_cursor_t,:uint16,:uint16,:uint16,:uint16,:uint16,:uint16], XrbRecolorCursorCookie
  class XrbQueryBestSizeRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :width, :uint16,
        :length, :uint16,
        :height, :uint16
  end

  class XrbQueryBestSizeCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_query_best_size, [:pointer,:uint8,:uint16,:uint16,:uint16], XrbQueryBestSizeCookie
  class XrbQueryBestSizeReply < FFI::Struct
    layout \
        :response_type, :uint8,
        :pad1, [:uint8, 1],
        :sequence, :uint16,
        :length, :uint32,
        :width, :uint16,
        :height, :uint16
  end

  attach_function :xcb_query_best_size_reply, [:pointer, XrbQueryBestSizeCookie, :pointer], :pointer

        
  class XrbQueryExtensionRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :present, :bool,
        :length, :uint16,
        :major_opcode, :uint8,
        :first_event, :uint8,
        :first_error, :uint8
  end

  class XrbQueryExtensionCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_query_extension, [:pointer,:uint8,:bool,:uint16,:uint8,:uint8,:uint8], XrbQueryExtensionCookie
  class XrbQueryExtensionReply < FFI::Struct
    layout \
        :response_type, :uint8,
        :pad1, [:uint8, 1],
        :sequence, :uint16,
        :length, :uint32,
        :present, :bool,
        :major_opcode, :uint8,
        :first_event, :uint8,
        :first_error, :uint8
  end

  attach_function :xcb_query_extension_reply, [:pointer, XrbQueryExtensionCookie, :pointer], :pointer

        
  class XrbListExtensionsRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :pad1, [:uint8, 24],
        :length, :uint16
  end

  class XrbListExtensionsCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_list_extensions, [:pointer,:uint8,:uint16,:uint32], XrbListExtensionsCookie
  class XrbListExtensionsReply < FFI::Struct
    layout \
        :response_type, :uint8,
        :names_len, :uint8,
        :sequence, :uint16,
        :length, :uint32,
        :pad1, [:uint8, 24]
  end

  attach_function :xcb_list_extensions_reply, [:pointer, XrbListExtensionsCookie, :pointer], :pointer

        
  class XrbChangeKeyboardMappingRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :keycode_count, :uint8,
        :length, :uint16,
        :first_keycode, :xrb_keycode_t,
        :keysyms_per_keycode, :uint8,
        :pad1, [:uint8, 2]
  end

  class XrbChangeKeyboardMappingCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_change_keyboard_mapping_checked, [:pointer,:uint8,:uint8,:uint16,:xrb_keycode_t,:uint8,:uint32], XrbChangeKeyboardMappingCookie
  attach_function :xcb_change_keyboard_mapping, [:pointer,:uint8,:uint8,:uint16,:xrb_keycode_t,:uint8,:uint32], XrbChangeKeyboardMappingCookie
  class XrbGetKeyboardMappingRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :pad1, [:uint8, 24],
        :length, :uint16
  end

  class XrbGetKeyboardMappingCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_get_keyboard_mapping, [:pointer,:uint8,:uint16,:uint32], XrbGetKeyboardMappingCookie
  class XrbGetKeyboardMappingReply < FFI::Struct
    layout \
        :response_type, :uint8,
        :keysyms_per_keycode, :uint8,
        :sequence, :uint16,
        :length, :uint32,
        :pad1, [:uint8, 24]
  end

  attach_function :xcb_get_keyboard_mapping_reply, [:pointer, XrbGetKeyboardMappingCookie, :pointer], :pointer

        
  class XrbChangeKeyboardControlRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :pad1, [:uint8, 1],
        :length, :uint16,
        :value_mask, :uint32
  end

  class XrbChangeKeyboardControlCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_change_keyboard_control_checked, [:pointer,:uint8,:uint16,:uint32], XrbChangeKeyboardControlCookie
  attach_function :xcb_change_keyboard_control, [:pointer,:uint8,:uint16,:uint32], XrbChangeKeyboardControlCookie
  class XrbGetKeyboardControlRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :led_mask, :uint32,
        :length, :uint16,
        :key_click_percent, :uint8,
        :bell_percent, :uint8,
        :bell_pitch, :uint16,
        :bell_duration, :uint16,
        :pad1, [:uint8, 2],
        :auto_repeats_len, [:uint32 , 32]
  end

  class XrbGetKeyboardControlCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_get_keyboard_control, [:pointer,:uint8,:uint32,:uint16,:uint8,:uint8,:uint16,:uint16,:uint32], XrbGetKeyboardControlCookie
  class XrbGetKeyboardControlReply < FFI::Struct
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
        :pad1, [:uint8, 2],
        :auto_repeats_len, [:uint32 , 32]
  end

  attach_function :xcb_get_keyboard_control_reply, [:pointer, XrbGetKeyboardControlCookie, :pointer], :pointer

        
  class XrbBellRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :percent, :int8,
        :length, :uint16
  end

  class XrbBellCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_bell_checked, [:pointer,:uint8,:int8,:uint16], XrbBellCookie
  attach_function :xcb_bell, [:pointer,:uint8,:int8,:uint16], XrbBellCookie
  class XrbChangePointerControlRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :pad1, [:uint8, 1],
        :length, :uint16,
        :acceleration_numerator, :int16,
        :acceleration_denominator, :int16,
        :threshold, :int16,
        :do_acceleration, :bool,
        :do_threshold, :bool
  end

  class XrbChangePointerControlCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_change_pointer_control_checked, [:pointer,:uint8,:uint16,:int16,:int16,:int16,:bool,:bool], XrbChangePointerControlCookie
  attach_function :xcb_change_pointer_control, [:pointer,:uint8,:uint16,:int16,:int16,:int16,:bool,:bool], XrbChangePointerControlCookie
  class XrbGetPointerControlRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :acceleration_numerator, :uint16,
        :length, :uint16,
        :acceleration_denominator, :uint16,
        :threshold, :uint16,
        :pad2, [:uint8, 18]
  end

  class XrbGetPointerControlCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_get_pointer_control, [:pointer,:uint8,:uint16,:uint16,:uint16,:uint16], XrbGetPointerControlCookie
  class XrbGetPointerControlReply < FFI::Struct
    layout \
        :response_type, :uint8,
        :pad1, [:uint8, 1],
        :sequence, :uint16,
        :length, :uint32,
        :acceleration_numerator, :uint16,
        :acceleration_denominator, :uint16,
        :threshold, :uint16,
        :pad2, [:uint8, 18]
  end

  attach_function :xcb_get_pointer_control_reply, [:pointer, XrbGetPointerControlCookie, :pointer], :pointer

        
  class XrbSetScreenSaverRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :pad1, [:uint8, 1],
        :length, :uint16,
        :timeout, :int16,
        :interval, :int16,
        :prefer_blanking, :uint8,
        :allow_exposures, :uint8
  end

  class XrbSetScreenSaverCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_set_screen_saver_checked, [:pointer,:uint8,:uint16,:int16,:int16,:uint8,:uint8], XrbSetScreenSaverCookie
  attach_function :xcb_set_screen_saver, [:pointer,:uint8,:uint16,:int16,:int16,:uint8,:uint8], XrbSetScreenSaverCookie
  class XrbGetScreenSaverRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :timeout, :uint16,
        :length, :uint16,
        :interval, :uint16,
        :prefer_blanking, :uint8,
        :allow_exposures, :uint8,
        :pad2, [:uint8, 18]
  end

  class XrbGetScreenSaverCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_get_screen_saver, [:pointer,:uint8,:uint16,:uint16,:uint16,:uint8,:uint8], XrbGetScreenSaverCookie
  class XrbGetScreenSaverReply < FFI::Struct
    layout \
        :response_type, :uint8,
        :pad1, [:uint8, 1],
        :sequence, :uint16,
        :length, :uint32,
        :timeout, :uint16,
        :interval, :uint16,
        :prefer_blanking, :uint8,
        :allow_exposures, :uint8,
        :pad2, [:uint8, 18]
  end

  attach_function :xcb_get_screen_saver_reply, [:pointer, XrbGetScreenSaverCookie, :pointer], :pointer

        
  class XrbChangeHostsRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :mode, :uint8,
        :length, :uint16,
        :family, :uint8,
        :pad1, [:uint8, 1],
        :address_len, :uint16
  end

  class XrbChangeHostsCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_change_hosts_checked, [:pointer,:uint8,:uint8,:uint16,:uint8,:uint16,:uint32], XrbChangeHostsCookie
  attach_function :xcb_change_hosts, [:pointer,:uint8,:uint8,:uint16,:uint8,:uint16,:uint32], XrbChangeHostsCookie
  class XrbListHostsRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :hosts_len, :uint16,
        :length, :uint16,
        :pad1, [:uint8, 22]
  end

  class XrbListHostsCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_list_hosts, [:pointer,:uint8,:uint16,:uint16,:uint32], XrbListHostsCookie
  class XrbListHostsReply < FFI::Struct
    layout \
        :response_type, :uint8,
        :mode, :uint8,
        :sequence, :uint16,
        :length, :uint32,
        :hosts_len, :uint16,
        :pad1, [:uint8, 22]
  end

  attach_function :xcb_list_hosts_reply, [:pointer, XrbListHostsCookie, :pointer], :pointer

        
  class XrbSetAccessControlRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :mode, :uint8,
        :length, :uint16
  end

  class XrbSetAccessControlCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_set_access_control_checked, [:pointer,:uint8,:uint8,:uint16], XrbSetAccessControlCookie
  attach_function :xcb_set_access_control, [:pointer,:uint8,:uint8,:uint16], XrbSetAccessControlCookie
  class XrbSetCloseDownModeRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :mode, :uint8,
        :length, :uint16
  end

  class XrbSetCloseDownModeCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_set_close_down_mode_checked, [:pointer,:uint8,:uint8,:uint16], XrbSetCloseDownModeCookie
  attach_function :xcb_set_close_down_mode, [:pointer,:uint8,:uint8,:uint16], XrbSetCloseDownModeCookie
  class XrbKillClientRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :pad1, [:uint8, 1],
        :length, :uint16,
        :resource, :uint32
  end

  class XrbKillClientCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_kill_client_checked, [:pointer,:uint8,:uint16,:uint32], XrbKillClientCookie
  attach_function :xcb_kill_client, [:pointer,:uint8,:uint16,:uint32], XrbKillClientCookie
  class XrbRotatePropertiesRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :pad1, [:uint8, 1],
        :length, :uint16,
        :window, :xrb_window_t,
        :atoms_len, :uint16,
        :delta, :int16
  end

  class XrbRotatePropertiesCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_rotate_properties_checked, [:pointer,:uint8,:uint16,:xrb_window_t,:uint16,:int16,:uint32], XrbRotatePropertiesCookie
  attach_function :xcb_rotate_properties, [:pointer,:uint8,:uint16,:xrb_window_t,:uint16,:int16,:uint32], XrbRotatePropertiesCookie
  class XrbForceScreenSaverRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :mode, :uint8,
        :length, :uint16
  end

  class XrbForceScreenSaverCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_force_screen_saver_checked, [:pointer,:uint8,:uint8,:uint16], XrbForceScreenSaverCookie
  attach_function :xcb_force_screen_saver, [:pointer,:uint8,:uint8,:uint16], XrbForceScreenSaverCookie
  class XrbSetPointerMappingRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :pad0, [:uint8, 1],
        :length, :uint16
  end

  class XrbSetPointerMappingCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_set_pointer_mapping, [:pointer,:uint8,:uint16], XrbSetPointerMappingCookie
  class XrbSetPointerMappingReply < FFI::Struct
    layout \
        :response_type, :uint8,
        :status, :uint8,
        :sequence, :uint16,
        :length, :uint32
  end

  attach_function :xcb_set_pointer_mapping_reply, [:pointer, XrbSetPointerMappingCookie, :pointer], :pointer

        
  class XrbGetPointerMappingRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :pad1, [:uint8, 24],
        :length, :uint16
  end

  class XrbGetPointerMappingCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_get_pointer_mapping, [:pointer,:uint8,:uint16,:uint32], XrbGetPointerMappingCookie
  class XrbGetPointerMappingReply < FFI::Struct
    layout \
        :response_type, :uint8,
        :map_len, :uint8,
        :sequence, :uint16,
        :length, :uint32,
        :pad1, [:uint8, 24]
  end

  attach_function :xcb_get_pointer_mapping_reply, [:pointer, XrbGetPointerMappingCookie, :pointer], :pointer

        
  class XrbSetModifierMappingRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :pad0, [:uint8, 1],
        :length, :uint16
  end

  class XrbSetModifierMappingCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_set_modifier_mapping, [:pointer,:uint8,:uint16], XrbSetModifierMappingCookie
  class XrbSetModifierMappingReply < FFI::Struct
    layout \
        :response_type, :uint8,
        :status, :uint8,
        :sequence, :uint16,
        :length, :uint32
  end

  attach_function :xcb_set_modifier_mapping_reply, [:pointer, XrbSetModifierMappingCookie, :pointer], :pointer

        
  class XrbGetModifierMappingRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :pad1, [:uint8, 24],
        :length, :uint16
  end

  class XrbGetModifierMappingCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_get_modifier_mapping, [:pointer,:uint8,:uint16,:uint32], XrbGetModifierMappingCookie
  class XrbGetModifierMappingReply < FFI::Struct
    layout \
        :response_type, :uint8,
        :keycodes_per_modifier, :uint8,
        :sequence, :uint16,
        :length, :uint32,
        :pad1, [:uint8, 24]
  end

  attach_function :xcb_get_modifier_mapping_reply, [:pointer, XrbGetModifierMappingCookie, :pointer], :pointer

        
  class XrbNoOperationRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :pad0, [:uint8, 1],
        :length, :uint16
  end

  class XrbNoOperationCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_no_operation_checked, [:pointer,:uint8,:uint16], XrbNoOperationCookie
  attach_function :xcb_no_operation, [:pointer,:uint8,:uint16], XrbNoOperationCookie
end
