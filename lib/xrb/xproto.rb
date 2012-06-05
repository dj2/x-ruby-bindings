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
  XRB_VISUAL_CLASS_STATIC_GRAY = 0
  XRB_VISUAL_CLASS_GRAY_SCALE = 1
  XRB_VISUAL_CLASS_STATIC_COLOR = 2
  XRB_VISUAL_CLASS_PSEUDO_COLOR = 3
  XRB_VISUAL_CLASS_TRUE_COLOR = 4
  XRB_VISUAL_CLASS_DIRECT_COLOR = 5
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
  attach_function :xcb_depth_visuals_iterator, [:pointer], XrbDepthIterator
  attach_function :xcb_depth_visuals_length, [:pointer], :int
  XRB_EVENT_MASK_NO_EVENT = 0
  XRB_EVENT_MASK_KEY_PRESS = 1 << 0
  XRB_EVENT_MASK_KEY_RELEASE = 1 << 1
  XRB_EVENT_MASK_BUTTON_PRESS = 1 << 2
  XRB_EVENT_MASK_BUTTON_RELEASE = 1 << 3
  XRB_EVENT_MASK_ENTER_WINDOW = 1 << 4
  XRB_EVENT_MASK_LEAVE_WINDOW = 1 << 5
  XRB_EVENT_MASK_POINTER_MOTION = 1 << 6
  XRB_EVENT_MASK_POINTER_MOTION_HINT = 1 << 7
  XRB_EVENT_MASK_BUTTON_1MOTION = 1 << 8
  XRB_EVENT_MASK_BUTTON_2MOTION = 1 << 9
  XRB_EVENT_MASK_BUTTON_3MOTION = 1 << 10
  XRB_EVENT_MASK_BUTTON_4MOTION = 1 << 11
  XRB_EVENT_MASK_BUTTON_5MOTION = 1 << 12
  XRB_EVENT_MASK_BUTTON_MOTION = 1 << 13
  XRB_EVENT_MASK_KEYMAP_STATE = 1 << 14
  XRB_EVENT_MASK_EXPOSURE = 1 << 15
  XRB_EVENT_MASK_VISIBILITY_CHANGE = 1 << 16
  XRB_EVENT_MASK_STRUCTURE_NOTIFY = 1 << 17
  XRB_EVENT_MASK_RESIZE_REDIRECT = 1 << 18
  XRB_EVENT_MASK_SUBSTRUCTURE_NOTIFY = 1 << 19
  XRB_EVENT_MASK_SUBSTRUCTURE_REDIRECT = 1 << 20
  XRB_EVENT_MASK_FOCUS_CHANGE = 1 << 21
  XRB_EVENT_MASK_PROPERTY_CHANGE = 1 << 22
  XRB_EVENT_MASK_COLOR_MAP_CHANGE = 1 << 23
  XRB_EVENT_MASK_OWNER_GRAB_BUTTON = 1 << 24
  XRB_BACKING_STORE_NOT_USEFUL = 0
  XRB_BACKING_STORE_WHEN_MAPPED = 1
  XRB_BACKING_STORE_ALWAYS = 2
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
  attach_function :xcb_screen_allowed_depths_iterator, [:pointer], XrbScreenIterator
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
  XRB_IMAGE_ORDER_LSB_FIRST = 0
  XRB_IMAGE_ORDER_MSB_FIRST = 1
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
  attach_function :xcb_setup_pixmap_formats_iterator, [:pointer], XrbSetupIterator
  attach_function :xcb_setup_pixmap_formats_length, [:pointer], :int
  attach_function :xcb_setup_roots_iterator, [:pointer], XrbSetupIterator
  attach_function :xcb_setup_roots_length, [:pointer], :int
  XRB_MOD_MASK_SHIFT = 1 << 0
  XRB_MOD_MASK_LOCK = 1 << 1
  XRB_MOD_MASK_CONTROL = 1 << 2
  XRB_MOD_MASK_1 = 1 << 3
  XRB_MOD_MASK_2 = 1 << 4
  XRB_MOD_MASK_3 = 1 << 5
  XRB_MOD_MASK_4 = 1 << 6
  XRB_MOD_MASK_5 = 1 << 7
  XRB_MOD_MASK_ANY = 1 << 15
  XRB_KEY_BUT_MASK_SHIFT = 1 << 0
  XRB_KEY_BUT_MASK_LOCK = 1 << 1
  XRB_KEY_BUT_MASK_CONTROL = 1 << 2
  XRB_KEY_BUT_MASK_MOD_1 = 1 << 3
  XRB_KEY_BUT_MASK_MOD_2 = 1 << 4
  XRB_KEY_BUT_MASK_MOD_3 = 1 << 5
  XRB_KEY_BUT_MASK_MOD_4 = 1 << 6
  XRB_KEY_BUT_MASK_MOD_5 = 1 << 7
  XRB_KEY_BUT_MASK_BUTTON_1 = 1 << 8
  XRB_KEY_BUT_MASK_BUTTON_2 = 1 << 9
  XRB_KEY_BUT_MASK_BUTTON_3 = 1 << 10
  XRB_KEY_BUT_MASK_BUTTON_4 = 1 << 11
  XRB_KEY_BUT_MASK_BUTTON_5 = 1 << 12
  XRB_WINDOW_NONE = 0
  XRB_BUTTON_MASK_1 = 1 << 8
  XRB_BUTTON_MASK_2 = 1 << 9
  XRB_BUTTON_MASK_3 = 1 << 10
  XRB_BUTTON_MASK_4 = 1 << 11
  XRB_BUTTON_MASK_5 = 1 << 12
  XRB_BUTTON_MASK_ANY = 1 << 15
  XRB_MOTION_NORMAL = 0
  XRB_MOTION_HINT = 1
  XRB_NOTIFY_DETAIL_ANCESTOR = 0
  XRB_NOTIFY_DETAIL_VIRTUAL = 1
  XRB_NOTIFY_DETAIL_INFERIOR = 2
  XRB_NOTIFY_DETAIL_NONLINEAR = 3
  XRB_NOTIFY_DETAIL_NONLINEAR_VIRTUAL = 4
  XRB_NOTIFY_DETAIL_POINTER = 5
  XRB_NOTIFY_DETAIL_POINTER_ROOT = 6
  XRB_NOTIFY_DETAIL_NONE = 7
  XRB_NOTIFY_MODE_NORMAL = 0
  XRB_NOTIFY_MODE_GRAB = 1
  XRB_NOTIFY_MODE_UNGRAB = 2
  XRB_NOTIFY_MODE_WHILE_GRABBED = 3
  XRB_VISIBILITY_UNOBSCURED = 0
  XRB_VISIBILITY_PARTIALLY_OBSCURED = 1
  XRB_VISIBILITY_FULLY_OBSCURED = 2
  XRB_PLACE_ON_TOP = 0
  XRB_PLACE_ON_BOTTOM = 1
  XRB_PROPERTY_NEW_VALUE = 0
  XRB_PROPERTY_DELETE = 1
  XRB_TIME_CURRENT_TIME = 0
  XRB_ATOM_NONE = 0
  XRB_ATOM_ANY = 0
  XRB_ATOM_PRIMARY = 1
  XRB_ATOM_SECONDARY = 2
  XRB_ATOM_ARC = 3
  XRB_ATOM_ATOM = 4
  XRB_ATOM_BITMAP = 5
  XRB_ATOM_CARDINAL = 6
  XRB_ATOM_COLORMAP = 7
  XRB_ATOM_CURSOR = 8
  XRB_ATOM_CUT_BUFFER0 = 9
  XRB_ATOM_CUT_BUFFER1 = 10
  XRB_ATOM_CUT_BUFFER2 = 11
  XRB_ATOM_CUT_BUFFER3 = 12
  XRB_ATOM_CUT_BUFFER4 = 13
  XRB_ATOM_CUT_BUFFER5 = 14
  XRB_ATOM_CUT_BUFFER6 = 15
  XRB_ATOM_CUT_BUFFER7 = 16
  XRB_ATOM_DRAWABLE = 17
  XRB_ATOM_FONT = 18
  XRB_ATOM_INTEGER = 19
  XRB_ATOM_PIXMAP = 20
  XRB_ATOM_POINT = 21
  XRB_ATOM_RECTANGLE = 22
  XRB_ATOM_RESOURCE_MANAGER = 23
  XRB_ATOM_RGB_COLOR_MAP = 24
  XRB_ATOM_RGB_BEST_MAP = 25
  XRB_ATOM_RGB_BLUE_MAP = 26
  XRB_ATOM_RGB_DEFAULT_MAP = 27
  XRB_ATOM_RGB_GRAY_MAP = 28
  XRB_ATOM_RGB_GREEN_MAP = 29
  XRB_ATOM_RGB_RED_MAP = 30
  XRB_ATOM_STRING = 31
  XRB_ATOM_VISUALID = 32
  XRB_ATOM_WINDOW = 33
  XRB_ATOM_WM_COMMAND = 34
  XRB_ATOM_WM_HINTS = 35
  XRB_ATOM_WM_CLIENT_MACHINE = 36
  XRB_ATOM_WM_ICON_NAME = 37
  XRB_ATOM_WM_ICON_SIZE = 38
  XRB_ATOM_WM_NAME = 39
  XRB_ATOM_WM_NORMAL_HINTS = 40
  XRB_ATOM_WM_SIZE_HINTS = 41
  XRB_ATOM_WM_ZOOM_HINTS = 42
  XRB_ATOM_MIN_SPACE = 43
  XRB_ATOM_NORM_SPACE = 44
  XRB_ATOM_MAX_SPACE = 45
  XRB_ATOM_END_SPACE = 46
  XRB_ATOM_SUPERSCRIPT_X = 47
  XRB_ATOM_SUPERSCRIPT_Y = 48
  XRB_ATOM_SUBSCRIPT_X = 49
  XRB_ATOM_SUBSCRIPT_Y = 50
  XRB_ATOM_UNDERLINE_POSITION = 51
  XRB_ATOM_UNDERLINE_THICKNESS = 52
  XRB_ATOM_STRIKEOUT_ASCENT = 53
  XRB_ATOM_STRIKEOUT_DESCENT = 54
  XRB_ATOM_ITALIC_ANGLE = 55
  XRB_ATOM_X_HEIGHT = 56
  XRB_ATOM_QUAD_WIDTH = 57
  XRB_ATOM_WEIGHT = 58
  XRB_ATOM_POINT_SIZE = 59
  XRB_ATOM_RESOLUTION = 60
  XRB_ATOM_COPYRIGHT = 61
  XRB_ATOM_NOTICE = 62
  XRB_ATOM_FONT_NAME = 63
  XRB_ATOM_FAMILY_NAME = 64
  XRB_ATOM_FULL_NAME = 65
  XRB_ATOM_CAP_HEIGHT = 66
  XRB_ATOM_WM_CLASS = 67
  XRB_ATOM_WM_TRANSIENT_FOR = 68
  XRB_COLORMAP_STATE_UNINSTALLED = 0
  XRB_COLORMAP_STATE_INSTALLED = 1
  XRB_COLORMAP_NONE = 0
  class XrbClientMessageData < FFI::Union
    layout \
        :data8_len, [:uint32 , 20],
        :data16_len, [:uint32 , 10],
        :data32_len, [:uint32 , 5]
  end

  XRB_MAPPING_MODIFIER = 0
  XRB_MAPPING_KEYBOARD = 1
  XRB_MAPPING_POINTER = 2
  XRB_WINDOW_CLASS_COPY_FROM_PARENT = 0
  XRB_WINDOW_CLASS_INPUT_OUTPUT = 1
  XRB_WINDOW_CLASS_INPUT_ONLY = 2
  XRB_CW_BACK_PIXMAP = 1 << 0
  XRB_CW_BACK_PIXEL = 1 << 1
  XRB_CW_BORDER_PIXMAP = 1 << 2
  XRB_CW_BORDER_PIXEL = 1 << 3
  XRB_CW_BIT_GRAVITY = 1 << 4
  XRB_CW_WIN_GRAVITY = 1 << 5
  XRB_CW_BACKING_STORE = 1 << 6
  XRB_CW_BACKING_PLANES = 1 << 7
  XRB_CW_BACKING_PIXEL = 1 << 8
  XRB_CW_OVERRIDE_REDIRECT = 1 << 9
  XRB_CW_SAVE_UNDER = 1 << 10
  XRB_CW_EVENT_MASK = 1 << 11
  XRB_CW_DONT_PROPAGATE = 1 << 12
  XRB_CW_COLORMAP = 1 << 13
  XRB_CW_CURSOR = 1 << 14
  XRB_BACK_PIXMAP_NONE = 0
  XRB_BACK_PIXMAP_PARENT_RELATIVE = 1
  XRB_GRAVITY_BIT_FORGET = 0
  XRB_GRAVITY_WIN_UNMAP = 0
  XRB_GRAVITY_NORTH_WEST = 1
  XRB_GRAVITY_NORTH = 2
  XRB_GRAVITY_NORTH_EAST = 3
  XRB_GRAVITY_WEST = 4
  XRB_GRAVITY_CENTER = 5
  XRB_GRAVITY_EAST = 6
  XRB_GRAVITY_SOUTH_WEST = 7
  XRB_GRAVITY_SOUTH = 8
  XRB_GRAVITY_SOUTH_EAST = 9
  XRB_GRAVITY_STATIC = 10
  XRB_MAP_STATE_UNMAPPED = 0
  XRB_MAP_STATE_UNVIEWABLE = 1
  XRB_MAP_STATE_VIEWABLE = 2
  XRB_SET_MODE_INSERT = 0
  XRB_SET_MODE_DELETE = 1
  XRB_CONFIG_WINDOW_X = 1 << 0
  XRB_CONFIG_WINDOW_Y = 1 << 1
  XRB_CONFIG_WINDOW_WIDTH = 1 << 2
  XRB_CONFIG_WINDOW_HEIGHT = 1 << 3
  XRB_CONFIG_WINDOW_BORDER_WIDTH = 1 << 4
  XRB_CONFIG_WINDOW_SIBLING = 1 << 5
  XRB_CONFIG_WINDOW_STACK_MODE = 1 << 6
  XRB_STACK_MODE_ABOVE = 0
  XRB_STACK_MODE_BELOW = 1
  XRB_STACK_MODE_TOP_IF = 2
  XRB_STACK_MODE_BOTTOM_IF = 3
  XRB_STACK_MODE_OPPOSITE = 4
  XRB_CIRCULATE_RAISE_LOWEST = 0
  XRB_CIRCULATE_LOWER_HIGHEST = 1
  XRB_PROP_MODE_REPLACE = 0
  XRB_PROP_MODE_PREPEND = 1
  XRB_PROP_MODE_APPEND = 2
  XRB_GET_PROPERTY_TYPE_ANY = 0
  XRB_SEND_EVENT_DEST_POINTER_WINDOW = 0
  XRB_SEND_EVENT_DEST_ITEM_FOCUS = 1
  XRB_GRAB_MODE_SYNC = 0
  XRB_GRAB_MODE_ASYNC = 1
  XRB_GRAB_STATUS_SUCCESS = 0
  XRB_GRAB_STATUS_ALREADY_GRABBED = 1
  XRB_GRAB_STATUS_INVALID_TIME = 2
  XRB_GRAB_STATUS_NOT_VIEWABLE = 3
  XRB_GRAB_STATUS_FROZEN = 4
  XRB_CURSOR_NONE = 0
  XRB_BUTTON_INDEX_ANY = 0
  XRB_BUTTON_INDEX_1 = 1
  XRB_BUTTON_INDEX_2 = 2
  XRB_BUTTON_INDEX_3 = 3
  XRB_BUTTON_INDEX_4 = 4
  XRB_BUTTON_INDEX_5 = 5
  XRB_GRAB_ANY = 0
  XRB_ALLOW_ASYNC_POINTER = 0
  XRB_ALLOW_SYNC_POINTER = 1
  XRB_ALLOW_REPLAY_POINTER = 2
  XRB_ALLOW_ASYNC_KEYBOARD = 3
  XRB_ALLOW_SYNC_KEYBOARD = 4
  XRB_ALLOW_REPLAY_KEYBOARD = 5
  XRB_ALLOW_ASYNC_BOTH = 6
  XRB_ALLOW_SYNC_BOTH = 7
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
  XRB_INPUT_FOCUS_NONE = 0
  XRB_INPUT_FOCUS_POINTER_ROOT = 1
  XRB_INPUT_FOCUS_PARENT = 2
  XRB_INPUT_FOCUS_FOLLOW_KEYBOARD = 3
  XRB_FONT_DRAW_LEFT_TO_RIGHT = 0
  XRB_FONT_DRAW_RIGHT_TO_LEFT = 1
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
  XRB_GC_FUNCTION = 1 << 0
  XRB_GC_PLANE_MASK = 1 << 1
  XRB_GC_FOREGROUND = 1 << 2
  XRB_GC_BACKGROUND = 1 << 3
  XRB_GC_LINE_WIDTH = 1 << 4
  XRB_GC_LINE_STYLE = 1 << 5
  XRB_GC_CAP_STYLE = 1 << 6
  XRB_GC_JOIN_STYLE = 1 << 7
  XRB_GC_FILL_STYLE = 1 << 8
  XRB_GC_FILL_RULE = 1 << 9
  XRB_GC_TILE = 1 << 10
  XRB_GC_STIPPLE = 1 << 11
  XRB_GC_TILE_STIPPLE_ORIGIN_X = 1 << 12
  XRB_GC_TILE_STIPPLE_ORIGIN_Y = 1 << 13
  XRB_GC_FONT = 1 << 14
  XRB_GC_SUBWINDOW_MODE = 1 << 15
  XRB_GC_GRAPHICS_EXPOSURES = 1 << 16
  XRB_GC_CLIP_ORIGIN_X = 1 << 17
  XRB_GC_CLIP_ORIGIN_Y = 1 << 18
  XRB_GC_CLIP_MASK = 1 << 19
  XRB_GC_DASH_OFFSET = 1 << 20
  XRB_GC_DASH_LIST = 1 << 21
  XRB_GC_ARC_MODE = 1 << 22
  XRB_GX_CLEAR = 0
  XRB_GX_AND = 1
  XRB_GX_AND_REVERSE = 2
  XRB_GX_COPY = 3
  XRB_GX_AND_INVERTED = 4
  XRB_GX_NOOP = 5
  XRB_GX_XOR = 6
  XRB_GX_OR = 7
  XRB_GX_NOR = 8
  XRB_GX_EQUIV = 9
  XRB_GX_INVERT = 10
  XRB_GX_OR_REVERSE = 11
  XRB_GX_COPY_INVERTED = 12
  XRB_GX_OR_INVERTED = 13
  XRB_GX_NAND = 14
  XRB_GX_SET = 15
  XRB_LINE_STYLE_SOLID = 0
  XRB_LINE_STYLE_ON_OFF_DASH = 1
  XRB_LINE_STYLE_DOUBLE_DASH = 2
  XRB_CAP_STYLE_NOT_LAST = 0
  XRB_CAP_STYLE_BUTT = 1
  XRB_CAP_STYLE_ROUND = 2
  XRB_CAP_STYLE_PROJECTING = 3
  XRB_JOIN_STYLE_MITER = 0
  XRB_JOIN_STYLE_ROUND = 1
  XRB_JOIN_STYLE_BEVEL = 2
  XRB_FILL_STYLE_SOLID = 0
  XRB_FILL_STYLE_TILED = 1
  XRB_FILL_STYLE_STIPPLED = 2
  XRB_FILL_STYLE_OPAQUE_STIPPLED = 3
  XRB_FILL_RULE_EVEN_ODD = 0
  XRB_FILL_RULE_WINDING = 1
  XRB_SUBWINDOW_MODE_CLIP_BY_CHILDREN = 0
  XRB_SUBWINDOW_MODE_INCLUDE_INFERIORS = 1
  XRB_ARC_MODE_CHORD = 0
  XRB_ARC_MODE_PIE_SLICE = 1
  XRB_CLIP_ORDERING_UNSORTED = 0
  XRB_CLIP_ORDERING_Y_SORTED = 1
  XRB_CLIP_ORDERING_YX_SORTED = 2
  XRB_CLIP_ORDERING_YX_BANDED = 3
  XRB_COORD_MODE_ORIGIN = 0
  XRB_COORD_MODE_PREVIOUS = 1
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
  XRB_POLY_SHAPE_COMPLEX = 0
  XRB_POLY_SHAPE_NONCONVEX = 1
  XRB_POLY_SHAPE_CONVEX = 2
  XRB_IMAGE_FORMAT_XY_BITMAP = 0
  XRB_IMAGE_FORMAT_XY_PIXMAP = 1
  XRB_IMAGE_FORMAT_Z_PIXMAP = 2
  XRB_COLORMAP_ALLOC_NONE = 0
  XRB_COLORMAP_ALLOC_ALL = 1
  XRB_COLOR_FLAG_RED = 1 << 0
  XRB_COLOR_FLAG_GREEN = 1 << 1
  XRB_COLOR_FLAG_BLUE = 1 << 2
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
  XRB_PIXMAP_NONE = 0
  XRB_FONT_NONE = 0
  XRB_QUERY_SHAPE_OF_LARGEST_CURSOR = 0
  XRB_QUERY_SHAPE_OF_FASTEST_TILE = 1
  XRB_QUERY_SHAPE_OF_FASTEST_STIPPLE = 2
  XRB_KB_KEY_CLICK_PERCENT = 1 << 0
  XRB_KB_BELL_PERCENT = 1 << 1
  XRB_KB_BELL_PITCH = 1 << 2
  XRB_KB_BELL_DURATION = 1 << 3
  XRB_KB_LED = 1 << 4
  XRB_KB_LED_MODE = 1 << 5
  XRB_KB_KEY = 1 << 6
  XRB_KB_AUTO_REPEAT_MODE = 1 << 7
  XRB_LED_MODE_OFF = 0
  XRB_LED_MODE_ON = 1
  XRB_AUTO_REPEAT_MODE_OFF = 0
  XRB_AUTO_REPEAT_MODE_ON = 1
  XRB_AUTO_REPEAT_MODE_DEFAULT = 2
  XRB_BLANKING_NOT_PREFERRED = 0
  XRB_BLANKING_PREFERRED = 1
  XRB_BLANKING_DEFAULT = 2
  XRB_EXPOSURES_NOT_ALLOWED = 0
  XRB_EXPOSURES_ALLOWED = 1
  XRB_EXPOSURES_DEFAULT = 2
  XRB_HOST_MODE_INSERT = 0
  XRB_HOST_MODE_DELETE = 1
  XRB_FAMILY_INTERNET = 0
  XRB_FAMILY_DE_CNET = 1
  XRB_FAMILY_CHAOS = 2
  XRB_FAMILY_SERVER_INTERPRETED = 5
  XRB_FAMILY_INTERNET_6 = 6
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
  XRB_ACCESS_CONTROL_DISABLE = 0
  XRB_ACCESS_CONTROL_ENABLE = 1
  XRB_CLOSE_DOWN_DESTROY_ALL = 0
  XRB_CLOSE_DOWN_RETAIN_PERMANENT = 1
  XRB_CLOSE_DOWN_RETAIN_TEMPORARY = 2
  XRB_KILL_ALL_TEMPORARY = 0
  XRB_SCREEN_SAVER_RESET = 0
  XRB_SCREEN_SAVER_ACTIVE = 1
  XRB_MAPPING_STATUS_SUCCESS = 0
  XRB_MAPPING_STATUS_BUSY = 1
  XRB_MAPPING_STATUS_FAILURE = 2
  XRB_MAP_INDEX_SHIFT = 0
  XRB_MAP_INDEX_LOCK = 1
  XRB_MAP_INDEX_CONTROL = 2
  XRB_MAP_INDEX_1 = 3
  XRB_MAP_INDEX_2 = 4
  XRB_MAP_INDEX_3 = 5
  XRB_MAP_INDEX_4 = 6
  XRB_MAP_INDEX_5 = 7
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
  attach_function :xcb_create_window_checked, [:pointer,:uint8,:xrb_window_t,:xrb_window_t,:int16,:int16,:uint16,:uint16,:uint16,:uint16,:xrb_visualid_t,:uint32,:pointer], XrbCreateWindowCookie
  attach_function :xcb_create_window, [:pointer,:uint8,:xrb_window_t,:xrb_window_t,:int16,:int16,:uint16,:uint16,:uint16,:uint16,:xrb_visualid_t,:uint32,:pointer], XrbCreateWindowCookie
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
  attach_function :xcb_change_window_attributes_checked, [:pointer,:xrb_window_t,:uint32,:pointer], XrbChangeWindowAttributesCookie
  attach_function :xcb_change_window_attributes, [:pointer,:xrb_window_t,:uint32,:pointer], XrbChangeWindowAttributesCookie
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
  attach_function :xcb_get_window_attributes, [:pointer,:xrb_visualid_t,:uint16,:uint8,:uint8,:uint32,:uint32,:bool,:bool,:uint8,:bool,:xrb_colormap_t,:uint32,:uint32,:uint16], XrbGetWindowAttributesCookie
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
  attach_function :xcb_destroy_window_checked, [:pointer,:xrb_window_t], XrbDestroyWindowCookie
  attach_function :xcb_destroy_window, [:pointer,:xrb_window_t], XrbDestroyWindowCookie
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
  attach_function :xcb_destroy_subwindows_checked, [:pointer,:xrb_window_t], XrbDestroySubwindowsCookie
  attach_function :xcb_destroy_subwindows, [:pointer,:xrb_window_t], XrbDestroySubwindowsCookie
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
  attach_function :xcb_change_save_set_checked, [:pointer,:uint8,:xrb_window_t], XrbChangeSaveSetCookie
  attach_function :xcb_change_save_set, [:pointer,:uint8,:xrb_window_t], XrbChangeSaveSetCookie
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
  attach_function :xcb_reparent_window_checked, [:pointer,:xrb_window_t,:xrb_window_t,:int16,:int16], XrbReparentWindowCookie
  attach_function :xcb_reparent_window, [:pointer,:xrb_window_t,:xrb_window_t,:int16,:int16], XrbReparentWindowCookie
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
  attach_function :xcb_map_window_checked, [:pointer,:xrb_window_t], XrbMapWindowCookie
  attach_function :xcb_map_window, [:pointer,:xrb_window_t], XrbMapWindowCookie
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
  attach_function :xcb_map_subwindows_checked, [:pointer,:xrb_window_t], XrbMapSubwindowsCookie
  attach_function :xcb_map_subwindows, [:pointer,:xrb_window_t], XrbMapSubwindowsCookie
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
  attach_function :xcb_unmap_window_checked, [:pointer,:xrb_window_t], XrbUnmapWindowCookie
  attach_function :xcb_unmap_window, [:pointer,:xrb_window_t], XrbUnmapWindowCookie
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
  attach_function :xcb_unmap_subwindows_checked, [:pointer,:xrb_window_t], XrbUnmapSubwindowsCookie
  attach_function :xcb_unmap_subwindows, [:pointer,:xrb_window_t], XrbUnmapSubwindowsCookie
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
  attach_function :xcb_configure_window_checked, [:pointer,:xrb_window_t,:uint16,:uint32,:pointer], XrbConfigureWindowCookie
  attach_function :xcb_configure_window, [:pointer,:xrb_window_t,:uint16,:uint32,:pointer], XrbConfigureWindowCookie
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
  attach_function :xcb_circulate_window_checked, [:pointer,:uint8,:xrb_window_t], XrbCirculateWindowCookie
  attach_function :xcb_circulate_window, [:pointer,:uint8,:xrb_window_t], XrbCirculateWindowCookie
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
  attach_function :xcb_get_geometry, [:pointer,:xrb_window_t,:int16,:int16,:uint16,:uint16,:uint16], XrbGetGeometryCookie
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
  attach_function :xcb_query_tree, [:pointer,:xrb_window_t,:xrb_window_t,:uint16,:uint32], XrbQueryTreeCookie
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
  attach_function :xcb_intern_atom, [:pointer,:xrb_atom_t], XrbInternAtomCookie
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
  attach_function :xcb_get_atom_name, [:pointer,:uint16,:uint32], XrbGetAtomNameCookie
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
  attach_function :xcb_change_property_checked, [:pointer,:uint8,:xrb_window_t,:xrb_atom_t,:xrb_atom_t,:uint8,:uint32,:uint32], XrbChangePropertyCookie
  attach_function :xcb_change_property, [:pointer,:uint8,:xrb_window_t,:xrb_atom_t,:xrb_atom_t,:uint8,:uint32,:uint32], XrbChangePropertyCookie
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
  attach_function :xcb_delete_property_checked, [:pointer,:xrb_window_t,:xrb_atom_t], XrbDeletePropertyCookie
  attach_function :xcb_delete_property, [:pointer,:xrb_window_t,:xrb_atom_t], XrbDeletePropertyCookie
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
  attach_function :xcb_get_property, [:pointer,:xrb_atom_t,:uint32,:uint32,:uint32], XrbGetPropertyCookie
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
  attach_function :xcb_list_properties, [:pointer,:uint16,:uint32], XrbListPropertiesCookie
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
  attach_function :xcb_set_selection_owner_checked, [:pointer,:xrb_window_t,:xrb_atom_t,:xrb_timestamp_t], XrbSetSelectionOwnerCookie
  attach_function :xcb_set_selection_owner, [:pointer,:xrb_window_t,:xrb_atom_t,:xrb_timestamp_t], XrbSetSelectionOwnerCookie
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
  attach_function :xcb_get_selection_owner, [:pointer,:xrb_window_t], XrbGetSelectionOwnerCookie
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
  attach_function :xcb_convert_selection_checked, [:pointer,:xrb_window_t,:xrb_atom_t,:xrb_atom_t,:xrb_atom_t,:xrb_timestamp_t], XrbConvertSelectionCookie
  attach_function :xcb_convert_selection, [:pointer,:xrb_window_t,:xrb_atom_t,:xrb_atom_t,:xrb_atom_t,:xrb_timestamp_t], XrbConvertSelectionCookie
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
  attach_function :xcb_send_event_checked, [:pointer,:bool,:xrb_window_t,:uint32,:uint32], XrbSendEventCookie
  attach_function :xcb_send_event, [:pointer,:bool,:xrb_window_t,:uint32,:uint32], XrbSendEventCookie
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
  attach_function :xcb_grab_pointer, [:pointer], XrbGrabPointerCookie
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
  attach_function :xcb_ungrab_pointer_checked, [:pointer,:xrb_timestamp_t], XrbUngrabPointerCookie
  attach_function :xcb_ungrab_pointer, [:pointer,:xrb_timestamp_t], XrbUngrabPointerCookie
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
  attach_function :xcb_grab_button_checked, [:pointer,:bool,:xrb_window_t,:uint16,:uint8,:uint8,:xrb_window_t,:xrb_cursor_t,:uint8,:uint16], XrbGrabButtonCookie
  attach_function :xcb_grab_button, [:pointer,:bool,:xrb_window_t,:uint16,:uint8,:uint8,:xrb_window_t,:xrb_cursor_t,:uint8,:uint16], XrbGrabButtonCookie
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
  attach_function :xcb_ungrab_button_checked, [:pointer,:uint8,:xrb_window_t,:uint16], XrbUngrabButtonCookie
  attach_function :xcb_ungrab_button, [:pointer,:uint8,:xrb_window_t,:uint16], XrbUngrabButtonCookie
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
  attach_function :xcb_change_active_pointer_grab_checked, [:pointer,:xrb_cursor_t,:xrb_timestamp_t,:uint16], XrbChangeActivePointerGrabCookie
  attach_function :xcb_change_active_pointer_grab, [:pointer,:xrb_cursor_t,:xrb_timestamp_t,:uint16], XrbChangeActivePointerGrabCookie
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
  attach_function :xcb_grab_keyboard, [:pointer], XrbGrabKeyboardCookie
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
  attach_function :xcb_ungrab_keyboard_checked, [:pointer,:xrb_timestamp_t], XrbUngrabKeyboardCookie
  attach_function :xcb_ungrab_keyboard, [:pointer,:xrb_timestamp_t], XrbUngrabKeyboardCookie
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
  attach_function :xcb_grab_key_checked, [:pointer,:bool,:xrb_window_t,:uint16,:xrb_keycode_t,:uint8,:uint8], XrbGrabKeyCookie
  attach_function :xcb_grab_key, [:pointer,:bool,:xrb_window_t,:uint16,:xrb_keycode_t,:uint8,:uint8], XrbGrabKeyCookie
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
  attach_function :xcb_ungrab_key_checked, [:pointer,:xrb_keycode_t,:xrb_window_t,:uint16], XrbUngrabKeyCookie
  attach_function :xcb_ungrab_key, [:pointer,:xrb_keycode_t,:xrb_window_t,:uint16], XrbUngrabKeyCookie
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
  attach_function :xcb_allow_events_checked, [:pointer,:uint8,:xrb_timestamp_t], XrbAllowEventsCookie
  attach_function :xcb_allow_events, [:pointer,:uint8,:xrb_timestamp_t], XrbAllowEventsCookie
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
  attach_function :xcb_grab_server_checked, [:pointer], XrbGrabServerCookie
  attach_function :xcb_grab_server, [:pointer], XrbGrabServerCookie
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
  attach_function :xcb_ungrab_server_checked, [:pointer], XrbUngrabServerCookie
  attach_function :xcb_ungrab_server, [:pointer], XrbUngrabServerCookie
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
  attach_function :xcb_query_pointer, [:pointer,:xrb_window_t,:xrb_window_t,:int16,:int16,:int16,:int16,:uint16], XrbQueryPointerCookie
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
  attach_function :xcb_get_motion_events, [:pointer,:uint32,:uint32], XrbGetMotionEventsCookie
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
  attach_function :xcb_translate_coordinates, [:pointer,:xrb_window_t,:int16,:int16], XrbTranslateCoordinatesCookie
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
  attach_function :xcb_warp_pointer_checked, [:pointer,:xrb_window_t,:xrb_window_t,:int16,:int16,:uint16,:uint16,:int16,:int16], XrbWarpPointerCookie
  attach_function :xcb_warp_pointer, [:pointer,:xrb_window_t,:xrb_window_t,:int16,:int16,:uint16,:uint16,:int16,:int16], XrbWarpPointerCookie
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
  attach_function :xcb_set_input_focus_checked, [:pointer,:uint8,:xrb_window_t,:xrb_timestamp_t], XrbSetInputFocusCookie
  attach_function :xcb_set_input_focus, [:pointer,:uint8,:xrb_window_t,:xrb_timestamp_t], XrbSetInputFocusCookie
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
  attach_function :xcb_get_input_focus, [:pointer,:xrb_window_t], XrbGetInputFocusCookie
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
  attach_function :xcb_query_keymap, [:pointer,:uint32], XrbQueryKeymapCookie
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
  attach_function :xcb_open_font_checked, [:pointer,:xrb_font_t,:uint16,:uint32], XrbOpenFontCookie
  attach_function :xcb_open_font, [:pointer,:xrb_font_t,:uint16,:uint32], XrbOpenFontCookie
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
  attach_function :xcb_close_font_checked, [:pointer,:xrb_font_t], XrbCloseFontCookie
  attach_function :xcb_close_font, [:pointer,:xrb_font_t], XrbCloseFontCookie
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
  attach_function :xcb_query_font, [:pointer,XrbCharinfo,XrbCharinfo,:uint16,:uint16,:uint16,:uint16,:uint8,:uint8,:uint8,:bool,:int16,:int16,:uint32,:uint32,:uint32], XrbQueryFontCookie
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
  attach_function :xcb_query_text_extents, [:pointer,:int16,:int16,:int16,:int16,:int32,:int32,:int32], XrbQueryTextExtentsCookie
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
  attach_function :xcb_list_fonts, [:pointer,:uint16,:uint32], XrbListFontsCookie
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
  attach_function :xcb_list_fonts_with_info, [:pointer,XrbCharinfo,XrbCharinfo,:uint16,:uint16,:uint16,:uint16,:uint8,:uint8,:uint8,:bool,:int16,:int16,:uint32,:uint32,:uint32], XrbListFontsWithInfoCookie
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
  attach_function :xcb_set_font_path_checked, [:pointer,:uint16,:uint32], XrbSetFontPathCookie
  attach_function :xcb_set_font_path, [:pointer,:uint16,:uint32], XrbSetFontPathCookie
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
  attach_function :xcb_get_font_path, [:pointer,:uint16,:uint32], XrbGetFontPathCookie
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
  attach_function :xcb_create_pixmap_checked, [:pointer,:uint8,:xrb_pixmap_t,:xrb_drawable_t,:uint16,:uint16], XrbCreatePixmapCookie
  attach_function :xcb_create_pixmap, [:pointer,:uint8,:xrb_pixmap_t,:xrb_drawable_t,:uint16,:uint16], XrbCreatePixmapCookie
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
  attach_function :xcb_free_pixmap_checked, [:pointer,:xrb_pixmap_t], XrbFreePixmapCookie
  attach_function :xcb_free_pixmap, [:pointer,:xrb_pixmap_t], XrbFreePixmapCookie
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
  attach_function :xcb_create_gc_checked, [:pointer,:xrb_gcontext_t,:xrb_drawable_t,:uint32,:pointer], XrbCreateGCCookie
  attach_function :xcb_create_gc, [:pointer,:xrb_gcontext_t,:xrb_drawable_t,:uint32,:pointer], XrbCreateGCCookie
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
  attach_function :xcb_change_gc_checked, [:pointer,:xrb_gcontext_t,:uint32,:pointer], XrbChangeGCCookie
  attach_function :xcb_change_gc, [:pointer,:xrb_gcontext_t,:uint32,:pointer], XrbChangeGCCookie
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
  attach_function :xcb_copy_gc_checked, [:pointer,:xrb_gcontext_t,:xrb_gcontext_t,:uint32], XrbCopyGCCookie
  attach_function :xcb_copy_gc, [:pointer,:xrb_gcontext_t,:xrb_gcontext_t,:uint32], XrbCopyGCCookie
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
  attach_function :xcb_set_dashes_checked, [:pointer,:xrb_gcontext_t,:uint16,:uint16,:uint32], XrbSetDashesCookie
  attach_function :xcb_set_dashes, [:pointer,:xrb_gcontext_t,:uint16,:uint16,:uint32], XrbSetDashesCookie
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
  attach_function :xcb_set_clip_rectangles_checked, [:pointer,:uint8,:xrb_gcontext_t,:int16,:int16,:uint32], XrbSetClipRectanglesCookie
  attach_function :xcb_set_clip_rectangles, [:pointer,:uint8,:xrb_gcontext_t,:int16,:int16,:uint32], XrbSetClipRectanglesCookie
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
  attach_function :xcb_free_gc_checked, [:pointer,:xrb_gcontext_t], XrbFreeGCCookie
  attach_function :xcb_free_gc, [:pointer,:xrb_gcontext_t], XrbFreeGCCookie
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
  attach_function :xcb_clear_area_checked, [:pointer,:bool,:xrb_window_t,:int16,:int16,:uint16,:uint16], XrbClearAreaCookie
  attach_function :xcb_clear_area, [:pointer,:bool,:xrb_window_t,:int16,:int16,:uint16,:uint16], XrbClearAreaCookie
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
  attach_function :xcb_copy_area_checked, [:pointer,:xrb_drawable_t,:xrb_drawable_t,:xrb_gcontext_t,:int16,:int16,:int16,:int16,:uint16,:uint16], XrbCopyAreaCookie
  attach_function :xcb_copy_area, [:pointer,:xrb_drawable_t,:xrb_drawable_t,:xrb_gcontext_t,:int16,:int16,:int16,:int16,:uint16,:uint16], XrbCopyAreaCookie
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
  attach_function :xcb_copy_plane_checked, [:pointer,:xrb_drawable_t,:xrb_drawable_t,:xrb_gcontext_t,:int16,:int16,:int16,:int16,:uint16,:uint16,:uint32], XrbCopyPlaneCookie
  attach_function :xcb_copy_plane, [:pointer,:xrb_drawable_t,:xrb_drawable_t,:xrb_gcontext_t,:int16,:int16,:int16,:int16,:uint16,:uint16,:uint32], XrbCopyPlaneCookie
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
  attach_function :xcb_poly_point_checked, [:pointer,:uint8,:xrb_drawable_t,:xrb_gcontext_t,:uint32], XrbPolyPointCookie
  attach_function :xcb_poly_point, [:pointer,:uint8,:xrb_drawable_t,:xrb_gcontext_t,:uint32], XrbPolyPointCookie
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
  attach_function :xcb_poly_line_checked, [:pointer,:uint8,:xrb_drawable_t,:xrb_gcontext_t,:uint32], XrbPolyLineCookie
  attach_function :xcb_poly_line, [:pointer,:uint8,:xrb_drawable_t,:xrb_gcontext_t,:uint32], XrbPolyLineCookie
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
  attach_function :xcb_poly_segment_checked, [:pointer,:xrb_drawable_t,:xrb_gcontext_t,:uint32], XrbPolySegmentCookie
  attach_function :xcb_poly_segment, [:pointer,:xrb_drawable_t,:xrb_gcontext_t,:uint32], XrbPolySegmentCookie
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
  attach_function :xcb_poly_rectangle_checked, [:pointer,:xrb_drawable_t,:xrb_gcontext_t,:uint32], XrbPolyRectangleCookie
  attach_function :xcb_poly_rectangle, [:pointer,:xrb_drawable_t,:xrb_gcontext_t,:uint32], XrbPolyRectangleCookie
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
  attach_function :xcb_poly_arc_checked, [:pointer,:xrb_drawable_t,:xrb_gcontext_t,:uint32], XrbPolyArcCookie
  attach_function :xcb_poly_arc, [:pointer,:xrb_drawable_t,:xrb_gcontext_t,:uint32], XrbPolyArcCookie
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
  attach_function :xcb_fill_poly_checked, [:pointer,:xrb_drawable_t,:xrb_gcontext_t,:uint8,:uint8,:uint32], XrbFillPolyCookie
  attach_function :xcb_fill_poly, [:pointer,:xrb_drawable_t,:xrb_gcontext_t,:uint8,:uint8,:uint32], XrbFillPolyCookie
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
  attach_function :xcb_poly_fill_rectangle_checked, [:pointer,:xrb_drawable_t,:xrb_gcontext_t,:uint32], XrbPolyFillRectangleCookie
  attach_function :xcb_poly_fill_rectangle, [:pointer,:xrb_drawable_t,:xrb_gcontext_t,:uint32], XrbPolyFillRectangleCookie
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
  attach_function :xcb_poly_fill_arc_checked, [:pointer,:xrb_drawable_t,:xrb_gcontext_t,:uint32], XrbPolyFillArcCookie
  attach_function :xcb_poly_fill_arc, [:pointer,:xrb_drawable_t,:xrb_gcontext_t,:uint32], XrbPolyFillArcCookie
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
  attach_function :xcb_put_image_checked, [:pointer,:uint8,:xrb_drawable_t,:xrb_gcontext_t,:uint16,:uint16,:int16,:int16,:uint8,:uint8,:uint32], XrbPutImageCookie
  attach_function :xcb_put_image, [:pointer,:uint8,:xrb_drawable_t,:xrb_gcontext_t,:uint16,:uint16,:int16,:int16,:uint8,:uint8,:uint32], XrbPutImageCookie
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
  attach_function :xcb_get_image, [:pointer,:xrb_visualid_t,:uint32], XrbGetImageCookie
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
  attach_function :xcb_poly_text_8_checked, [:pointer,:xrb_drawable_t,:xrb_gcontext_t,:int16,:int16,:uint32], XrbPolyText8Cookie
  attach_function :xcb_poly_text_8, [:pointer,:xrb_drawable_t,:xrb_gcontext_t,:int16,:int16,:uint32], XrbPolyText8Cookie
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
  attach_function :xcb_poly_text_16_checked, [:pointer,:xrb_drawable_t,:xrb_gcontext_t,:int16,:int16,:uint32], XrbPolyText16Cookie
  attach_function :xcb_poly_text_16, [:pointer,:xrb_drawable_t,:xrb_gcontext_t,:int16,:int16,:uint32], XrbPolyText16Cookie
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
  attach_function :xcb_image_text_8_checked, [:pointer,:uint8,:xrb_drawable_t,:xrb_gcontext_t,:int16,:int16,:uint32], XrbImageText8Cookie
  attach_function :xcb_image_text_8, [:pointer,:uint8,:xrb_drawable_t,:xrb_gcontext_t,:int16,:int16,:uint32], XrbImageText8Cookie
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
  attach_function :xcb_image_text_16_checked, [:pointer,:uint8,:xrb_drawable_t,:xrb_gcontext_t,:int16,:int16,:uint32], XrbImageText16Cookie
  attach_function :xcb_image_text_16, [:pointer,:uint8,:xrb_drawable_t,:xrb_gcontext_t,:int16,:int16,:uint32], XrbImageText16Cookie
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
  attach_function :xcb_create_colormap_checked, [:pointer,:uint8,:xrb_colormap_t,:xrb_window_t,:xrb_visualid_t], XrbCreateColormapCookie
  attach_function :xcb_create_colormap, [:pointer,:uint8,:xrb_colormap_t,:xrb_window_t,:xrb_visualid_t], XrbCreateColormapCookie
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
  attach_function :xcb_free_colormap_checked, [:pointer,:xrb_colormap_t], XrbFreeColormapCookie
  attach_function :xcb_free_colormap, [:pointer,:xrb_colormap_t], XrbFreeColormapCookie
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
  attach_function :xcb_copy_colormap_and_free_checked, [:pointer,:xrb_colormap_t,:xrb_colormap_t], XrbCopyColormapAndFreeCookie
  attach_function :xcb_copy_colormap_and_free, [:pointer,:xrb_colormap_t,:xrb_colormap_t], XrbCopyColormapAndFreeCookie
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
  attach_function :xcb_install_colormap_checked, [:pointer,:xrb_colormap_t], XrbInstallColormapCookie
  attach_function :xcb_install_colormap, [:pointer,:xrb_colormap_t], XrbInstallColormapCookie
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
  attach_function :xcb_uninstall_colormap_checked, [:pointer,:xrb_colormap_t], XrbUninstallColormapCookie
  attach_function :xcb_uninstall_colormap, [:pointer,:xrb_colormap_t], XrbUninstallColormapCookie
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
  attach_function :xcb_list_installed_colormaps, [:pointer,:uint16,:uint32], XrbListInstalledColormapsCookie
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
  attach_function :xcb_alloc_color, [:pointer,:uint16,:uint16,:uint16,:uint32], XrbAllocColorCookie
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
  attach_function :xcb_alloc_named_color, [:pointer,:uint32,:uint16,:uint16,:uint16,:uint16,:uint16,:uint16], XrbAllocNamedColorCookie
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
  attach_function :xcb_alloc_color_cells, [:pointer,:uint16,:uint16,:uint32,:uint32], XrbAllocColorCellsCookie
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
  attach_function :xcb_alloc_color_planes, [:pointer,:uint16,:uint32,:uint32,:uint32,:uint32], XrbAllocColorPlanesCookie
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
  attach_function :xcb_free_colors_checked, [:pointer,:xrb_colormap_t,:uint32,:uint32], XrbFreeColorsCookie
  attach_function :xcb_free_colors, [:pointer,:xrb_colormap_t,:uint32,:uint32], XrbFreeColorsCookie
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
  attach_function :xcb_store_colors_checked, [:pointer,:xrb_colormap_t,:uint32], XrbStoreColorsCookie
  attach_function :xcb_store_colors, [:pointer,:xrb_colormap_t,:uint32], XrbStoreColorsCookie
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
  attach_function :xcb_store_named_color_checked, [:pointer,:uint8,:xrb_colormap_t,:uint32,:uint16,:uint32], XrbStoreNamedColorCookie
  attach_function :xcb_store_named_color, [:pointer,:uint8,:xrb_colormap_t,:uint32,:uint16,:uint32], XrbStoreNamedColorCookie
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
  attach_function :xcb_query_colors, [:pointer,:uint16,:uint32], XrbQueryColorsCookie
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
  attach_function :xcb_lookup_color, [:pointer,:uint16,:uint16,:uint16,:uint16,:uint16,:uint16], XrbLookupColorCookie
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
  attach_function :xcb_create_cursor_checked, [:pointer,:xrb_cursor_t,:xrb_pixmap_t,:xrb_pixmap_t,:uint16,:uint16,:uint16,:uint16,:uint16,:uint16,:uint16,:uint16], XrbCreateCursorCookie
  attach_function :xcb_create_cursor, [:pointer,:xrb_cursor_t,:xrb_pixmap_t,:xrb_pixmap_t,:uint16,:uint16,:uint16,:uint16,:uint16,:uint16,:uint16,:uint16], XrbCreateCursorCookie
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
  attach_function :xcb_create_glyph_cursor_checked, [:pointer,:xrb_cursor_t,:xrb_font_t,:xrb_font_t,:uint16,:uint16,:uint16,:uint16,:uint16,:uint16,:uint16,:uint16], XrbCreateGlyphCursorCookie
  attach_function :xcb_create_glyph_cursor, [:pointer,:xrb_cursor_t,:xrb_font_t,:xrb_font_t,:uint16,:uint16,:uint16,:uint16,:uint16,:uint16,:uint16,:uint16], XrbCreateGlyphCursorCookie
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
  attach_function :xcb_free_cursor_checked, [:pointer,:xrb_cursor_t], XrbFreeCursorCookie
  attach_function :xcb_free_cursor, [:pointer,:xrb_cursor_t], XrbFreeCursorCookie
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
  attach_function :xcb_recolor_cursor_checked, [:pointer,:xrb_cursor_t,:uint16,:uint16,:uint16,:uint16,:uint16,:uint16], XrbRecolorCursorCookie
  attach_function :xcb_recolor_cursor, [:pointer,:xrb_cursor_t,:uint16,:uint16,:uint16,:uint16,:uint16,:uint16], XrbRecolorCursorCookie
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
  attach_function :xcb_query_best_size, [:pointer,:uint16,:uint16], XrbQueryBestSizeCookie
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
  attach_function :xcb_query_extension, [:pointer,:bool,:uint8,:uint8,:uint8], XrbQueryExtensionCookie
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
  attach_function :xcb_list_extensions, [:pointer,:uint32], XrbListExtensionsCookie
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
  attach_function :xcb_change_keyboard_mapping_checked, [:pointer,:uint8,:xrb_keycode_t,:uint8,:uint32], XrbChangeKeyboardMappingCookie
  attach_function :xcb_change_keyboard_mapping, [:pointer,:uint8,:xrb_keycode_t,:uint8,:uint32], XrbChangeKeyboardMappingCookie
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
  attach_function :xcb_get_keyboard_mapping, [:pointer,:uint32], XrbGetKeyboardMappingCookie
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
  attach_function :xcb_change_keyboard_control_checked, [:pointer,:uint32,:pointer], XrbChangeKeyboardControlCookie
  attach_function :xcb_change_keyboard_control, [:pointer,:uint32,:pointer], XrbChangeKeyboardControlCookie
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
  attach_function :xcb_get_keyboard_control, [:pointer,:uint32,:uint8,:uint8,:uint16,:uint16,:uint32], XrbGetKeyboardControlCookie
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
  attach_function :xcb_bell_checked, [:pointer,:int8], XrbBellCookie
  attach_function :xcb_bell, [:pointer,:int8], XrbBellCookie
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
  attach_function :xcb_change_pointer_control_checked, [:pointer,:int16,:int16,:int16,:bool,:bool], XrbChangePointerControlCookie
  attach_function :xcb_change_pointer_control, [:pointer,:int16,:int16,:int16,:bool,:bool], XrbChangePointerControlCookie
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
  attach_function :xcb_get_pointer_control, [:pointer,:uint16,:uint16,:uint16], XrbGetPointerControlCookie
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
  attach_function :xcb_set_screen_saver_checked, [:pointer,:int16,:int16,:uint8,:uint8], XrbSetScreenSaverCookie
  attach_function :xcb_set_screen_saver, [:pointer,:int16,:int16,:uint8,:uint8], XrbSetScreenSaverCookie
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
  attach_function :xcb_get_screen_saver, [:pointer,:uint16,:uint16,:uint8,:uint8], XrbGetScreenSaverCookie
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
  attach_function :xcb_change_hosts_checked, [:pointer,:uint8,:uint8,:uint16,:uint32], XrbChangeHostsCookie
  attach_function :xcb_change_hosts, [:pointer,:uint8,:uint8,:uint16,:uint32], XrbChangeHostsCookie
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
  attach_function :xcb_list_hosts, [:pointer,:uint16,:uint32], XrbListHostsCookie
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
  attach_function :xcb_set_access_control_checked, [:pointer,:uint8], XrbSetAccessControlCookie
  attach_function :xcb_set_access_control, [:pointer,:uint8], XrbSetAccessControlCookie
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
  attach_function :xcb_set_close_down_mode_checked, [:pointer,:uint8], XrbSetCloseDownModeCookie
  attach_function :xcb_set_close_down_mode, [:pointer,:uint8], XrbSetCloseDownModeCookie
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
  attach_function :xcb_kill_client_checked, [:pointer,:uint32], XrbKillClientCookie
  attach_function :xcb_kill_client, [:pointer,:uint32], XrbKillClientCookie
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
  attach_function :xcb_rotate_properties_checked, [:pointer,:xrb_window_t,:uint16,:int16,:uint32], XrbRotatePropertiesCookie
  attach_function :xcb_rotate_properties, [:pointer,:xrb_window_t,:uint16,:int16,:uint32], XrbRotatePropertiesCookie
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
  attach_function :xcb_force_screen_saver_checked, [:pointer,:uint8], XrbForceScreenSaverCookie
  attach_function :xcb_force_screen_saver, [:pointer,:uint8], XrbForceScreenSaverCookie
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
  attach_function :xcb_set_pointer_mapping, [:pointer], XrbSetPointerMappingCookie
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
  attach_function :xcb_get_pointer_mapping, [:pointer,:uint32], XrbGetPointerMappingCookie
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
  attach_function :xcb_set_modifier_mapping, [:pointer], XrbSetModifierMappingCookie
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
  attach_function :xcb_get_modifier_mapping, [:pointer,:uint32], XrbGetModifierMappingCookie
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
  attach_function :xcb_no_operation_checked, [:pointer], XrbNoOperationCookie
  attach_function :xcb_no_operation, [:pointer], XrbNoOperationCookie
end
