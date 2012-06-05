#
# This file auto-generated. Do not edit.
#

require 'ffi'
class Xrb
  extend FFI::Library
  ffi_lib 'xcb'
  class Char2b < FFI::Struct
    layout \
        :byte1, :uint8,
        :byte2, :uint8
  end

  class Char2bIterator < FFI::Struct
    layout \
        :data, :pointer,
        :rem, :int,
        :indent, :int
  end
  attach_function :xcb_char2b_next, [:pointer], :void
  attach_function :xcb_char2b_end, [:pointer], GenericIterator
  typedef :uint32, :window_t
  class WindowIterator < FFI::Struct
    layout \
        :data, :window_t,
        :rem, :int,
        :indent, :int
  end
  attach_function :xcb_window_next, [:pointer], :void
  attach_function :xcb_window_end, [:pointer], GenericIterator
  typedef :uint32, :pixmap_t
  class PixmapIterator < FFI::Struct
    layout \
        :data, :window_t,
        :rem, :int,
        :indent, :int
  end
  attach_function :xcb_pixmap_next, [:pointer], :void
  attach_function :xcb_pixmap_end, [:pointer], GenericIterator
  typedef :uint32, :cursor_t
  class CursorIterator < FFI::Struct
    layout \
        :data, :window_t,
        :rem, :int,
        :indent, :int
  end
  attach_function :xcb_cursor_next, [:pointer], :void
  attach_function :xcb_cursor_end, [:pointer], GenericIterator
  typedef :uint32, :font_t
  class FontIterator < FFI::Struct
    layout \
        :data, :window_t,
        :rem, :int,
        :indent, :int
  end
  attach_function :xcb_font_next, [:pointer], :void
  attach_function :xcb_font_end, [:pointer], GenericIterator
  typedef :uint32, :gcontext_t
  class GcontextIterator < FFI::Struct
    layout \
        :data, :window_t,
        :rem, :int,
        :indent, :int
  end
  attach_function :xcb_gcontext_next, [:pointer], :void
  attach_function :xcb_gcontext_end, [:pointer], GenericIterator
  typedef :uint32, :colormap_t
  class ColormapIterator < FFI::Struct
    layout \
        :data, :window_t,
        :rem, :int,
        :indent, :int
  end
  attach_function :xcb_colormap_next, [:pointer], :void
  attach_function :xcb_colormap_end, [:pointer], GenericIterator
  typedef :uint32, :atom_t
  class AtomIterator < FFI::Struct
    layout \
        :data, :window_t,
        :rem, :int,
        :indent, :int
  end
  attach_function :xcb_atom_next, [:pointer], :void
  attach_function :xcb_atom_end, [:pointer], GenericIterator
  typedef :uint32, :drawable_t
  class DrawableIterator < FFI::Struct
    layout \
        :data, :window_t,
        :rem, :int,
        :indent, :int
  end
  attach_function :xcb_drawable_next, [:pointer], :void
  attach_function :xcb_drawable_end, [:pointer], GenericIterator
  typedef :uint32, :fontable_t
  class FontableIterator < FFI::Struct
    layout \
        :data, :window_t,
        :rem, :int,
        :indent, :int
  end
  attach_function :xcb_fontable_next, [:pointer], :void
  attach_function :xcb_fontable_end, [:pointer], GenericIterator
  typedef :uint32, :visualid_t
  class VisualidIterator < FFI::Struct
    layout \
        :data, :window_t,
        :rem, :int,
        :indent, :int
  end
  attach_function :xcb_visualid_next, [:pointer], :void
  attach_function :xcb_visualid_end, [:pointer], GenericIterator
  typedef :uint32, :timestamp_t
  class TimestampIterator < FFI::Struct
    layout \
        :data, :window_t,
        :rem, :int,
        :indent, :int
  end
  attach_function :xcb_timestamp_next, [:pointer], :void
  attach_function :xcb_timestamp_end, [:pointer], GenericIterator
  typedef :uint32, :keysym_t
  class KeysymIterator < FFI::Struct
    layout \
        :data, :window_t,
        :rem, :int,
        :indent, :int
  end
  attach_function :xcb_keysym_next, [:pointer], :void
  attach_function :xcb_keysym_end, [:pointer], GenericIterator
  typedef :uint8, :keycode_t
  class KeycodeIterator < FFI::Struct
    layout \
        :data, :window_t,
        :rem, :int,
        :indent, :int
  end
  attach_function :xcb_keycode_next, [:pointer], :void
  attach_function :xcb_keycode_end, [:pointer], GenericIterator
  typedef :uint8, :button_t
  class ButtonIterator < FFI::Struct
    layout \
        :data, :window_t,
        :rem, :int,
        :indent, :int
  end
  attach_function :xcb_button_next, [:pointer], :void
  attach_function :xcb_button_end, [:pointer], GenericIterator
  class Point < FFI::Struct
    layout \
        :x, :int16,
        :y, :int16
  end

  class PointIterator < FFI::Struct
    layout \
        :data, :pointer,
        :rem, :int,
        :indent, :int
  end
  attach_function :xcb_point_next, [:pointer], :void
  attach_function :xcb_point_end, [:pointer], GenericIterator
  class Rectangle < FFI::Struct
    layout \
        :x, :int16,
        :y, :int16,
        :width, :uint16,
        :height, :uint16
  end

  class RectangleIterator < FFI::Struct
    layout \
        :data, :pointer,
        :rem, :int,
        :indent, :int
  end
  attach_function :xcb_rectangle_next, [:pointer], :void
  attach_function :xcb_rectangle_end, [:pointer], GenericIterator
  class Arc < FFI::Struct
    layout \
        :x, :int16,
        :y, :int16,
        :width, :uint16,
        :height, :uint16,
        :angle1, :int16,
        :angle2, :int16
  end

  class ArcIterator < FFI::Struct
    layout \
        :data, :pointer,
        :rem, :int,
        :indent, :int
  end
  attach_function :xcb_arc_next, [:pointer], :void
  attach_function :xcb_arc_end, [:pointer], GenericIterator
  class Format < FFI::Struct
    layout \
        :depth, :uint8,
        :bits_per_pixel, :uint8,
        :scanline_pad, :uint8,
        :pad1, [:uint8, 5]
  end

  class FormatIterator < FFI::Struct
    layout \
        :data, :pointer,
        :rem, :int,
        :indent, :int
  end
  attach_function :xcb_format_next, [:pointer], :void
  attach_function :xcb_format_end, [:pointer], GenericIterator
  VISUAL_CLASS_STATIC_GRAY = 0
  VISUAL_CLASS_GRAY_SCALE = 1
  VISUAL_CLASS_STATIC_COLOR = 2
  VISUAL_CLASS_PSEUDO_COLOR = 3
  VISUAL_CLASS_TRUE_COLOR = 4
  VISUAL_CLASS_DIRECT_COLOR = 5
  class Visualtype < FFI::Struct
    layout \
        :visual_id, :visualid_t,
        :class, :uint8,
        :bits_per_rgb_value, :uint8,
        :colormap_entries, :uint16,
        :red_mask, :uint32,
        :green_mask, :uint32,
        :blue_mask, :uint32,
        :pad1, [:uint8, 4]
  end

  class VisualtypeIterator < FFI::Struct
    layout \
        :data, :pointer,
        :rem, :int,
        :indent, :int
  end
  attach_function :xcb_visualtype_next, [:pointer], :void
  attach_function :xcb_visualtype_end, [:pointer], GenericIterator
  class Depth < FFI::Struct
    layout \
        :depth, :uint8,
        :pad1, [:uint8, 1],
        :visuals_len, :uint16,
        :pad2, [:uint8, 4]
  end

  class DepthIterator < FFI::Struct
    layout \
        :data, :pointer,
        :rem, :int,
        :indent, :int
  end
  attach_function :xcb_depth_next, [:pointer], :void
  attach_function :xcb_depth_end, [:pointer], GenericIterator
  attach_function :xcb_depth_sizeof, [:pointer], :int
  attach_function :xcb_depth_visuals_iterator, [:pointer], DepthIterator
  attach_function :xcb_depth_visuals_length, [:pointer], :int
  EVENT_MASK_NO_EVENT = 0
  EVENT_MASK_KEY_PRESS = 1 << 0
  EVENT_MASK_KEY_RELEASE = 1 << 1
  EVENT_MASK_BUTTON_PRESS = 1 << 2
  EVENT_MASK_BUTTON_RELEASE = 1 << 3
  EVENT_MASK_ENTER_WINDOW = 1 << 4
  EVENT_MASK_LEAVE_WINDOW = 1 << 5
  EVENT_MASK_POINTER_MOTION = 1 << 6
  EVENT_MASK_POINTER_MOTION_HINT = 1 << 7
  EVENT_MASK_BUTTON_1MOTION = 1 << 8
  EVENT_MASK_BUTTON_2MOTION = 1 << 9
  EVENT_MASK_BUTTON_3MOTION = 1 << 10
  EVENT_MASK_BUTTON_4MOTION = 1 << 11
  EVENT_MASK_BUTTON_5MOTION = 1 << 12
  EVENT_MASK_BUTTON_MOTION = 1 << 13
  EVENT_MASK_KEYMAP_STATE = 1 << 14
  EVENT_MASK_EXPOSURE = 1 << 15
  EVENT_MASK_VISIBILITY_CHANGE = 1 << 16
  EVENT_MASK_STRUCTURE_NOTIFY = 1 << 17
  EVENT_MASK_RESIZE_REDIRECT = 1 << 18
  EVENT_MASK_SUBSTRUCTURE_NOTIFY = 1 << 19
  EVENT_MASK_SUBSTRUCTURE_REDIRECT = 1 << 20
  EVENT_MASK_FOCUS_CHANGE = 1 << 21
  EVENT_MASK_PROPERTY_CHANGE = 1 << 22
  EVENT_MASK_COLOR_MAP_CHANGE = 1 << 23
  EVENT_MASK_OWNER_GRAB_BUTTON = 1 << 24
  BACKING_STORE_NOT_USEFUL = 0
  BACKING_STORE_WHEN_MAPPED = 1
  BACKING_STORE_ALWAYS = 2
  class Screen < FFI::Struct
    layout \
        :root, :window_t,
        :default_colormap, :colormap_t,
        :white_pixel, :uint32,
        :black_pixel, :uint32,
        :current_input_masks, :uint32,
        :width_in_pixels, :uint16,
        :height_in_pixels, :uint16,
        :width_in_millimeters, :uint16,
        :height_in_millimeters, :uint16,
        :min_installed_maps, :uint16,
        :max_installed_maps, :uint16,
        :root_visual, :visualid_t,
        :backing_stores, :uint8,
        :save_unders, :bool,
        :root_depth, :uint8,
        :allowed_depths_len, :uint8
  end

  class ScreenIterator < FFI::Struct
    layout \
        :data, :pointer,
        :rem, :int,
        :indent, :int
  end
  attach_function :xcb_screen_next, [:pointer], :void
  attach_function :xcb_screen_end, [:pointer], GenericIterator
  attach_function :xcb_screen_sizeof, [:pointer], :int
  attach_function :xcb_screen_allowed_depths_iterator, [:pointer], ScreenIterator
  attach_function :xcb_screen_allowed_depths_length, [:pointer], :int
  class SetupRequest < FFI::Struct
    layout \
        :byte_order, :uint8,
        :pad1, [:uint8, 1],
        :protocol_major_version, :uint16,
        :protocol_minor_version, :uint16,
        :authorization_protocol_name_len, :uint16,
        :authorization_protocol_data_len, :uint16,
        :pad2, [:uint8, 2]
  end

  class SetupRequestIterator < FFI::Struct
    layout \
        :data, :pointer,
        :rem, :int,
        :indent, :int
  end
  attach_function :xcb_setup_request_next, [:pointer], :void
  attach_function :xcb_setup_request_end, [:pointer], GenericIterator
  attach_function :xcb_setup_request_sizeof, [:pointer], :int
  attach_function :xcb_setup_request_authorization_protocol_name, [:pointer], :pointer
  attach_function :xcb_setup_request_authorization_protocol_name_length, [:pointer], :int
  attach_function :xcb_setup_request_authorization_protocol_data, [:pointer], :pointer
  attach_function :xcb_setup_request_authorization_protocol_data_length, [:pointer], :int
  class SetupFailed < FFI::Struct
    layout \
        :status, :uint8,
        :reason_len, :uint8,
        :protocol_major_version, :uint16,
        :protocol_minor_version, :uint16,
        :length, :uint16
  end

  class SetupFailedIterator < FFI::Struct
    layout \
        :data, :pointer,
        :rem, :int,
        :indent, :int
  end
  attach_function :xcb_setup_failed_next, [:pointer], :void
  attach_function :xcb_setup_failed_end, [:pointer], GenericIterator
  attach_function :xcb_setup_failed_sizeof, [:pointer], :int
  attach_function :xcb_setup_failed_reason, [:pointer], :pointer
  attach_function :xcb_setup_failed_reason_length, [:pointer], :int
  class SetupAuthenticate < FFI::Struct
    layout \
        :status, :uint8,
        :pad1, [:uint8, 5],
        :length, :uint16
  end

  class SetupAuthenticateIterator < FFI::Struct
    layout \
        :data, :pointer,
        :rem, :int,
        :indent, :int
  end
  attach_function :xcb_setup_authenticate_next, [:pointer], :void
  attach_function :xcb_setup_authenticate_end, [:pointer], GenericIterator
  attach_function :xcb_setup_authenticate_sizeof, [:pointer], :int
  attach_function :xcb_setup_authenticate_reason, [:pointer], :pointer
  attach_function :xcb_setup_authenticate_reason_length, [:pointer], :int
  IMAGE_ORDER_LSB_FIRST = 0
  IMAGE_ORDER_MSB_FIRST = 1
  class Setup < FFI::Struct
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
        :min_keycode, :keycode_t,
        :max_keycode, :keycode_t,
        :pad2, [:uint8, 4]
  end

  class SetupIterator < FFI::Struct
    layout \
        :data, :pointer,
        :rem, :int,
        :indent, :int
  end
  attach_function :xcb_setup_next, [:pointer], :void
  attach_function :xcb_setup_end, [:pointer], GenericIterator
  attach_function :xcb_setup_sizeof, [:pointer], :int
  attach_function :xcb_setup_vendor, [:pointer], :pointer
  attach_function :xcb_setup_vendor_length, [:pointer], :int
  attach_function :xcb_setup_pixmap_formats_iterator, [:pointer], SetupIterator
  attach_function :xcb_setup_pixmap_formats_length, [:pointer], :int
  attach_function :xcb_setup_roots_iterator, [:pointer], SetupIterator
  attach_function :xcb_setup_roots_length, [:pointer], :int
  MOD_MASK_SHIFT = 1 << 0
  MOD_MASK_LOCK = 1 << 1
  MOD_MASK_CONTROL = 1 << 2
  MOD_MASK_1 = 1 << 3
  MOD_MASK_2 = 1 << 4
  MOD_MASK_3 = 1 << 5
  MOD_MASK_4 = 1 << 6
  MOD_MASK_5 = 1 << 7
  MOD_MASK_ANY = 1 << 15
  KEY_BUT_MASK_SHIFT = 1 << 0
  KEY_BUT_MASK_LOCK = 1 << 1
  KEY_BUT_MASK_CONTROL = 1 << 2
  KEY_BUT_MASK_MOD_1 = 1 << 3
  KEY_BUT_MASK_MOD_2 = 1 << 4
  KEY_BUT_MASK_MOD_3 = 1 << 5
  KEY_BUT_MASK_MOD_4 = 1 << 6
  KEY_BUT_MASK_MOD_5 = 1 << 7
  KEY_BUT_MASK_BUTTON_1 = 1 << 8
  KEY_BUT_MASK_BUTTON_2 = 1 << 9
  KEY_BUT_MASK_BUTTON_3 = 1 << 10
  KEY_BUT_MASK_BUTTON_4 = 1 << 11
  KEY_BUT_MASK_BUTTON_5 = 1 << 12
  WINDOW_NONE = 0
  BUTTON_MASK_1 = 1 << 8
  BUTTON_MASK_2 = 1 << 9
  BUTTON_MASK_3 = 1 << 10
  BUTTON_MASK_4 = 1 << 11
  BUTTON_MASK_5 = 1 << 12
  BUTTON_MASK_ANY = 1 << 15
  MOTION_NORMAL = 0
  MOTION_HINT = 1
  NOTIFY_DETAIL_ANCESTOR = 0
  NOTIFY_DETAIL_VIRTUAL = 1
  NOTIFY_DETAIL_INFERIOR = 2
  NOTIFY_DETAIL_NONLINEAR = 3
  NOTIFY_DETAIL_NONLINEAR_VIRTUAL = 4
  NOTIFY_DETAIL_POINTER = 5
  NOTIFY_DETAIL_POINTER_ROOT = 6
  NOTIFY_DETAIL_NONE = 7
  NOTIFY_MODE_NORMAL = 0
  NOTIFY_MODE_GRAB = 1
  NOTIFY_MODE_UNGRAB = 2
  NOTIFY_MODE_WHILE_GRABBED = 3
  VISIBILITY_UNOBSCURED = 0
  VISIBILITY_PARTIALLY_OBSCURED = 1
  VISIBILITY_FULLY_OBSCURED = 2
  PLACE_ON_TOP = 0
  PLACE_ON_BOTTOM = 1
  PROPERTY_NEW_VALUE = 0
  PROPERTY_DELETE = 1
  TIME_CURRENT_TIME = 0
  ATOM_NONE = 0
  ATOM_ANY = 0
  ATOM_PRIMARY = 1
  ATOM_SECONDARY = 2
  ATOM_ARC = 3
  ATOM_ATOM = 4
  ATOM_BITMAP = 5
  ATOM_CARDINAL = 6
  ATOM_COLORMAP = 7
  ATOM_CURSOR = 8
  ATOM_CUT_BUFFER0 = 9
  ATOM_CUT_BUFFER1 = 10
  ATOM_CUT_BUFFER2 = 11
  ATOM_CUT_BUFFER3 = 12
  ATOM_CUT_BUFFER4 = 13
  ATOM_CUT_BUFFER5 = 14
  ATOM_CUT_BUFFER6 = 15
  ATOM_CUT_BUFFER7 = 16
  ATOM_DRAWABLE = 17
  ATOM_FONT = 18
  ATOM_INTEGER = 19
  ATOM_PIXMAP = 20
  ATOM_POINT = 21
  ATOM_RECTANGLE = 22
  ATOM_RESOURCE_MANAGER = 23
  ATOM_RGB_COLOR_MAP = 24
  ATOM_RGB_BEST_MAP = 25
  ATOM_RGB_BLUE_MAP = 26
  ATOM_RGB_DEFAULT_MAP = 27
  ATOM_RGB_GRAY_MAP = 28
  ATOM_RGB_GREEN_MAP = 29
  ATOM_RGB_RED_MAP = 30
  ATOM_STRING = 31
  ATOM_VISUALID = 32
  ATOM_WINDOW = 33
  ATOM_WM_COMMAND = 34
  ATOM_WM_HINTS = 35
  ATOM_WM_CLIENT_MACHINE = 36
  ATOM_WM_ICON_NAME = 37
  ATOM_WM_ICON_SIZE = 38
  ATOM_WM_NAME = 39
  ATOM_WM_NORMAL_HINTS = 40
  ATOM_WM_SIZE_HINTS = 41
  ATOM_WM_ZOOM_HINTS = 42
  ATOM_MIN_SPACE = 43
  ATOM_NORM_SPACE = 44
  ATOM_MAX_SPACE = 45
  ATOM_END_SPACE = 46
  ATOM_SUPERSCRIPT_X = 47
  ATOM_SUPERSCRIPT_Y = 48
  ATOM_SUBSCRIPT_X = 49
  ATOM_SUBSCRIPT_Y = 50
  ATOM_UNDERLINE_POSITION = 51
  ATOM_UNDERLINE_THICKNESS = 52
  ATOM_STRIKEOUT_ASCENT = 53
  ATOM_STRIKEOUT_DESCENT = 54
  ATOM_ITALIC_ANGLE = 55
  ATOM_X_HEIGHT = 56
  ATOM_QUAD_WIDTH = 57
  ATOM_WEIGHT = 58
  ATOM_POINT_SIZE = 59
  ATOM_RESOLUTION = 60
  ATOM_COPYRIGHT = 61
  ATOM_NOTICE = 62
  ATOM_FONT_NAME = 63
  ATOM_FAMILY_NAME = 64
  ATOM_FULL_NAME = 65
  ATOM_CAP_HEIGHT = 66
  ATOM_WM_CLASS = 67
  ATOM_WM_TRANSIENT_FOR = 68
  COLORMAP_STATE_UNINSTALLED = 0
  COLORMAP_STATE_INSTALLED = 1
  COLORMAP_NONE = 0
  class ClientMessageData < FFI::Union
    layout \
        :data8_len, [:uint32 , 20],
        :data16_len, [:uint32 , 10],
        :data32_len, [:uint32 , 5]
  end

  MAPPING_MODIFIER = 0
  MAPPING_KEYBOARD = 1
  MAPPING_POINTER = 2
  WINDOW_CLASS_COPY_FROM_PARENT = 0
  WINDOW_CLASS_INPUT_OUTPUT = 1
  WINDOW_CLASS_INPUT_ONLY = 2
  CW_BACK_PIXMAP = 1 << 0
  CW_BACK_PIXEL = 1 << 1
  CW_BORDER_PIXMAP = 1 << 2
  CW_BORDER_PIXEL = 1 << 3
  CW_BIT_GRAVITY = 1 << 4
  CW_WIN_GRAVITY = 1 << 5
  CW_BACKING_STORE = 1 << 6
  CW_BACKING_PLANES = 1 << 7
  CW_BACKING_PIXEL = 1 << 8
  CW_OVERRIDE_REDIRECT = 1 << 9
  CW_SAVE_UNDER = 1 << 10
  CW_EVENT_MASK = 1 << 11
  CW_DONT_PROPAGATE = 1 << 12
  CW_COLORMAP = 1 << 13
  CW_CURSOR = 1 << 14
  BACK_PIXMAP_NONE = 0
  BACK_PIXMAP_PARENT_RELATIVE = 1
  GRAVITY_BIT_FORGET = 0
  GRAVITY_WIN_UNMAP = 0
  GRAVITY_NORTH_WEST = 1
  GRAVITY_NORTH = 2
  GRAVITY_NORTH_EAST = 3
  GRAVITY_WEST = 4
  GRAVITY_CENTER = 5
  GRAVITY_EAST = 6
  GRAVITY_SOUTH_WEST = 7
  GRAVITY_SOUTH = 8
  GRAVITY_SOUTH_EAST = 9
  GRAVITY_STATIC = 10
  MAP_STATE_UNMAPPED = 0
  MAP_STATE_UNVIEWABLE = 1
  MAP_STATE_VIEWABLE = 2
  SET_MODE_INSERT = 0
  SET_MODE_DELETE = 1
  CONFIG_WINDOW_X = 1 << 0
  CONFIG_WINDOW_Y = 1 << 1
  CONFIG_WINDOW_WIDTH = 1 << 2
  CONFIG_WINDOW_HEIGHT = 1 << 3
  CONFIG_WINDOW_BORDER_WIDTH = 1 << 4
  CONFIG_WINDOW_SIBLING = 1 << 5
  CONFIG_WINDOW_STACK_MODE = 1 << 6
  STACK_MODE_ABOVE = 0
  STACK_MODE_BELOW = 1
  STACK_MODE_TOP_IF = 2
  STACK_MODE_BOTTOM_IF = 3
  STACK_MODE_OPPOSITE = 4
  CIRCULATE_RAISE_LOWEST = 0
  CIRCULATE_LOWER_HIGHEST = 1
  PROP_MODE_REPLACE = 0
  PROP_MODE_PREPEND = 1
  PROP_MODE_APPEND = 2
  GET_PROPERTY_TYPE_ANY = 0
  SEND_EVENT_DEST_POINTER_WINDOW = 0
  SEND_EVENT_DEST_ITEM_FOCUS = 1
  GRAB_MODE_SYNC = 0
  GRAB_MODE_ASYNC = 1
  GRAB_STATUS_SUCCESS = 0
  GRAB_STATUS_ALREADY_GRABBED = 1
  GRAB_STATUS_INVALID_TIME = 2
  GRAB_STATUS_NOT_VIEWABLE = 3
  GRAB_STATUS_FROZEN = 4
  CURSOR_NONE = 0
  BUTTON_INDEX_ANY = 0
  BUTTON_INDEX_1 = 1
  BUTTON_INDEX_2 = 2
  BUTTON_INDEX_3 = 3
  BUTTON_INDEX_4 = 4
  BUTTON_INDEX_5 = 5
  GRAB_ANY = 0
  ALLOW_ASYNC_POINTER = 0
  ALLOW_SYNC_POINTER = 1
  ALLOW_REPLAY_POINTER = 2
  ALLOW_ASYNC_KEYBOARD = 3
  ALLOW_SYNC_KEYBOARD = 4
  ALLOW_REPLAY_KEYBOARD = 5
  ALLOW_ASYNC_BOTH = 6
  ALLOW_SYNC_BOTH = 7
  class Timecoord < FFI::Struct
    layout \
        :time, :timestamp_t,
        :x, :int16,
        :y, :int16
  end

  class TimecoordIterator < FFI::Struct
    layout \
        :data, :pointer,
        :rem, :int,
        :indent, :int
  end
  attach_function :xcb_timecoord_next, [:pointer], :void
  attach_function :xcb_timecoord_end, [:pointer], GenericIterator
  INPUT_FOCUS_NONE = 0
  INPUT_FOCUS_POINTER_ROOT = 1
  INPUT_FOCUS_PARENT = 2
  INPUT_FOCUS_FOLLOW_KEYBOARD = 3
  FONT_DRAW_LEFT_TO_RIGHT = 0
  FONT_DRAW_RIGHT_TO_LEFT = 1
  class Fontprop < FFI::Struct
    layout \
        :name, :atom_t,
        :value, :uint32
  end

  class FontpropIterator < FFI::Struct
    layout \
        :data, :pointer,
        :rem, :int,
        :indent, :int
  end
  attach_function :xcb_fontprop_next, [:pointer], :void
  attach_function :xcb_fontprop_end, [:pointer], GenericIterator
  class Charinfo < FFI::Struct
    layout \
        :left_side_bearing, :int16,
        :right_side_bearing, :int16,
        :character_width, :int16,
        :ascent, :int16,
        :descent, :int16,
        :attributes, :uint16
  end

  class CharinfoIterator < FFI::Struct
    layout \
        :data, :pointer,
        :rem, :int,
        :indent, :int
  end
  attach_function :xcb_charinfo_next, [:pointer], :void
  attach_function :xcb_charinfo_end, [:pointer], GenericIterator
  class Str < FFI::Struct
    layout \
        :name_len, :uint8
  end

  class StrIterator < FFI::Struct
    layout \
        :data, :pointer,
        :rem, :int,
        :indent, :int
  end
  attach_function :xcb_str_next, [:pointer], :void
  attach_function :xcb_str_end, [:pointer], GenericIterator
  attach_function :xcb_str_sizeof, [:pointer], :int
  attach_function :xcb_str_name, [:pointer], :pointer
  attach_function :xcb_str_name_length, [:pointer], :int
  GC_FUNCTION = 1 << 0
  GC_PLANE_MASK = 1 << 1
  GC_FOREGROUND = 1 << 2
  GC_BACKGROUND = 1 << 3
  GC_LINE_WIDTH = 1 << 4
  GC_LINE_STYLE = 1 << 5
  GC_CAP_STYLE = 1 << 6
  GC_JOIN_STYLE = 1 << 7
  GC_FILL_STYLE = 1 << 8
  GC_FILL_RULE = 1 << 9
  GC_TILE = 1 << 10
  GC_STIPPLE = 1 << 11
  GC_TILE_STIPPLE_ORIGIN_X = 1 << 12
  GC_TILE_STIPPLE_ORIGIN_Y = 1 << 13
  GC_FONT = 1 << 14
  GC_SUBWINDOW_MODE = 1 << 15
  GC_GRAPHICS_EXPOSURES = 1 << 16
  GC_CLIP_ORIGIN_X = 1 << 17
  GC_CLIP_ORIGIN_Y = 1 << 18
  GC_CLIP_MASK = 1 << 19
  GC_DASH_OFFSET = 1 << 20
  GC_DASH_LIST = 1 << 21
  GC_ARC_MODE = 1 << 22
  GX_CLEAR = 0
  GX_AND = 1
  GX_AND_REVERSE = 2
  GX_COPY = 3
  GX_AND_INVERTED = 4
  GX_NOOP = 5
  GX_XOR = 6
  GX_OR = 7
  GX_NOR = 8
  GX_EQUIV = 9
  GX_INVERT = 10
  GX_OR_REVERSE = 11
  GX_COPY_INVERTED = 12
  GX_OR_INVERTED = 13
  GX_NAND = 14
  GX_SET = 15
  LINE_STYLE_SOLID = 0
  LINE_STYLE_ON_OFF_DASH = 1
  LINE_STYLE_DOUBLE_DASH = 2
  CAP_STYLE_NOT_LAST = 0
  CAP_STYLE_BUTT = 1
  CAP_STYLE_ROUND = 2
  CAP_STYLE_PROJECTING = 3
  JOIN_STYLE_MITER = 0
  JOIN_STYLE_ROUND = 1
  JOIN_STYLE_BEVEL = 2
  FILL_STYLE_SOLID = 0
  FILL_STYLE_TILED = 1
  FILL_STYLE_STIPPLED = 2
  FILL_STYLE_OPAQUE_STIPPLED = 3
  FILL_RULE_EVEN_ODD = 0
  FILL_RULE_WINDING = 1
  SUBWINDOW_MODE_CLIP_BY_CHILDREN = 0
  SUBWINDOW_MODE_INCLUDE_INFERIORS = 1
  ARC_MODE_CHORD = 0
  ARC_MODE_PIE_SLICE = 1
  CLIP_ORDERING_UNSORTED = 0
  CLIP_ORDERING_Y_SORTED = 1
  CLIP_ORDERING_YX_SORTED = 2
  CLIP_ORDERING_YX_BANDED = 3
  COORD_MODE_ORIGIN = 0
  COORD_MODE_PREVIOUS = 1
  class Segment < FFI::Struct
    layout \
        :x1, :int16,
        :y1, :int16,
        :x2, :int16,
        :y2, :int16
  end

  class SegmentIterator < FFI::Struct
    layout \
        :data, :pointer,
        :rem, :int,
        :indent, :int
  end
  attach_function :xcb_segment_next, [:pointer], :void
  attach_function :xcb_segment_end, [:pointer], GenericIterator
  POLY_SHAPE_COMPLEX = 0
  POLY_SHAPE_NONCONVEX = 1
  POLY_SHAPE_CONVEX = 2
  IMAGE_FORMAT_XY_BITMAP = 0
  IMAGE_FORMAT_XY_PIXMAP = 1
  IMAGE_FORMAT_Z_PIXMAP = 2
  COLORMAP_ALLOC_NONE = 0
  COLORMAP_ALLOC_ALL = 1
  COLOR_FLAG_RED = 1 << 0
  COLOR_FLAG_GREEN = 1 << 1
  COLOR_FLAG_BLUE = 1 << 2
  class Coloritem < FFI::Struct
    layout \
        :pixel, :uint32,
        :red, :uint16,
        :green, :uint16,
        :blue, :uint16,
        :flags, :uint8,
        :pad1, [:uint8, 1]
  end

  class ColoritemIterator < FFI::Struct
    layout \
        :data, :pointer,
        :rem, :int,
        :indent, :int
  end
  attach_function :xcb_coloritem_next, [:pointer], :void
  attach_function :xcb_coloritem_end, [:pointer], GenericIterator
  class Rgb < FFI::Struct
    layout \
        :red, :uint16,
        :green, :uint16,
        :blue, :uint16,
        :pad1, [:uint8, 2]
  end

  class RgbIterator < FFI::Struct
    layout \
        :data, :pointer,
        :rem, :int,
        :indent, :int
  end
  attach_function :xcb_rgb_next, [:pointer], :void
  attach_function :xcb_rgb_end, [:pointer], GenericIterator
  PIXMAP_NONE = 0
  FONT_NONE = 0
  QUERY_SHAPE_OF_LARGEST_CURSOR = 0
  QUERY_SHAPE_OF_FASTEST_TILE = 1
  QUERY_SHAPE_OF_FASTEST_STIPPLE = 2
  KB_KEY_CLICK_PERCENT = 1 << 0
  KB_BELL_PERCENT = 1 << 1
  KB_BELL_PITCH = 1 << 2
  KB_BELL_DURATION = 1 << 3
  KB_LED = 1 << 4
  KB_LED_MODE = 1 << 5
  KB_KEY = 1 << 6
  KB_AUTO_REPEAT_MODE = 1 << 7
  LED_MODE_OFF = 0
  LED_MODE_ON = 1
  AUTO_REPEAT_MODE_OFF = 0
  AUTO_REPEAT_MODE_ON = 1
  AUTO_REPEAT_MODE_DEFAULT = 2
  BLANKING_NOT_PREFERRED = 0
  BLANKING_PREFERRED = 1
  BLANKING_DEFAULT = 2
  EXPOSURES_NOT_ALLOWED = 0
  EXPOSURES_ALLOWED = 1
  EXPOSURES_DEFAULT = 2
  HOST_MODE_INSERT = 0
  HOST_MODE_DELETE = 1
  FAMILY_INTERNET = 0
  FAMILY_DE_CNET = 1
  FAMILY_CHAOS = 2
  FAMILY_SERVER_INTERPRETED = 5
  FAMILY_INTERNET_6 = 6
  class Host < FFI::Struct
    layout \
        :family, :uint8,
        :pad1, [:uint8, 1],
        :address_len, :uint16
  end

  class HostIterator < FFI::Struct
    layout \
        :data, :pointer,
        :rem, :int,
        :indent, :int
  end
  attach_function :xcb_host_next, [:pointer], :void
  attach_function :xcb_host_end, [:pointer], GenericIterator
  attach_function :xcb_host_sizeof, [:pointer], :int
  attach_function :xcb_host_address, [:pointer], :pointer
  attach_function :xcb_host_address_length, [:pointer], :int
  ACCESS_CONTROL_DISABLE = 0
  ACCESS_CONTROL_ENABLE = 1
  CLOSE_DOWN_DESTROY_ALL = 0
  CLOSE_DOWN_RETAIN_PERMANENT = 1
  CLOSE_DOWN_RETAIN_TEMPORARY = 2
  KILL_ALL_TEMPORARY = 0
  SCREEN_SAVER_RESET = 0
  SCREEN_SAVER_ACTIVE = 1
  MAPPING_STATUS_SUCCESS = 0
  MAPPING_STATUS_BUSY = 1
  MAPPING_STATUS_FAILURE = 2
  MAP_INDEX_SHIFT = 0
  MAP_INDEX_LOCK = 1
  MAP_INDEX_CONTROL = 2
  MAP_INDEX_1 = 3
  MAP_INDEX_2 = 4
  MAP_INDEX_3 = 5
  MAP_INDEX_4 = 6
  MAP_INDEX_5 = 7
  class KeyPressEvent < FFI::Struct
    layout \
        :response_type, :uint8,
        :detail, :keycode_t,
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
        :pad1, [:uint8, 1]
  end

  class KeyReleaseEvent < FFI::Struct
    layout \
        :response_type, :uint8,
        :detail, :keycode_t,
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
        :pad1, [:uint8, 1]
  end

  class ButtonPressEvent < FFI::Struct
    layout \
        :response_type, :uint8,
        :detail, :button_t,
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
        :pad1, [:uint8, 1]
  end

  class ButtonReleaseEvent < FFI::Struct
    layout \
        :response_type, :uint8,
        :detail, :button_t,
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
        :pad1, [:uint8, 1]
  end

  class MotionNotifyEvent < FFI::Struct
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
        :pad1, [:uint8, 1]
  end

  class EnterNotifyEvent < FFI::Struct
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
        :mode, :uint8,
        :same_screen_focus, :uint8
  end

  class LeaveNotifyEvent < FFI::Struct
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
        :mode, :uint8,
        :same_screen_focus, :uint8
  end

  class FocusInEvent < FFI::Struct
    layout \
        :response_type, :uint8,
        :detail, :uint8,
        :event, :window_t,
        :mode, :uint8,
        :pad1, [:uint8, 3]
  end

  class FocusOutEvent < FFI::Struct
    layout \
        :response_type, :uint8,
        :detail, :uint8,
        :event, :window_t,
        :mode, :uint8,
        :pad1, [:uint8, 3]
  end

  class KeymapNotifyEvent < FFI::Struct
    layout \
        :response_type, :uint8,
        :keys_len, [:uint32 , 31]
  end

  class ExposeEvent < FFI::Struct
    layout \
        :response_type, :uint8,
        :pad1, [:uint8, 1],
        :window, :window_t,
        :x, :uint16,
        :y, :uint16,
        :width, :uint16,
        :height, :uint16,
        :count, :uint16,
        :pad2, [:uint8, 2]
  end

  class GraphicsExposureEvent < FFI::Struct
    layout \
        :response_type, :uint8,
        :pad1, [:uint8, 1],
        :drawable, :drawable_t,
        :x, :uint16,
        :y, :uint16,
        :width, :uint16,
        :height, :uint16,
        :minor_opcode, :uint16,
        :count, :uint16,
        :major_opcode, :uint8,
        :pad2, [:uint8, 3]
  end

  class NoExposureEvent < FFI::Struct
    layout \
        :response_type, :uint8,
        :pad1, [:uint8, 1],
        :drawable, :drawable_t,
        :minor_opcode, :uint16,
        :major_opcode, :uint8,
        :pad2, [:uint8, 1]
  end

  class VisibilityNotifyEvent < FFI::Struct
    layout \
        :response_type, :uint8,
        :pad1, [:uint8, 1],
        :window, :window_t,
        :state, :uint8,
        :pad2, [:uint8, 3]
  end

  class CreateNotifyEvent < FFI::Struct
    layout \
        :response_type, :uint8,
        :pad1, [:uint8, 1],
        :parent, :window_t,
        :window, :window_t,
        :x, :int16,
        :y, :int16,
        :width, :uint16,
        :height, :uint16,
        :border_width, :uint16,
        :override_redirect, :bool,
        :pad2, [:uint8, 1]
  end

  class DestroyNotifyEvent < FFI::Struct
    layout \
        :response_type, :uint8,
        :pad1, [:uint8, 1],
        :event, :window_t,
        :window, :window_t
  end

  class UnmapNotifyEvent < FFI::Struct
    layout \
        :response_type, :uint8,
        :pad1, [:uint8, 1],
        :event, :window_t,
        :window, :window_t,
        :from_configure, :bool,
        :pad2, [:uint8, 3]
  end

  class MapNotifyEvent < FFI::Struct
    layout \
        :response_type, :uint8,
        :pad1, [:uint8, 1],
        :event, :window_t,
        :window, :window_t,
        :override_redirect, :bool,
        :pad2, [:uint8, 3]
  end

  class MapRequestEvent < FFI::Struct
    layout \
        :response_type, :uint8,
        :pad1, [:uint8, 1],
        :parent, :window_t,
        :window, :window_t
  end

  class ReparentNotifyEvent < FFI::Struct
    layout \
        :response_type, :uint8,
        :pad1, [:uint8, 1],
        :event, :window_t,
        :window, :window_t,
        :parent, :window_t,
        :x, :int16,
        :y, :int16,
        :override_redirect, :bool,
        :pad2, [:uint8, 3]
  end

  class ConfigureNotifyEvent < FFI::Struct
    layout \
        :response_type, :uint8,
        :pad1, [:uint8, 1],
        :event, :window_t,
        :window, :window_t,
        :above_sibling, :window_t,
        :x, :int16,
        :y, :int16,
        :width, :uint16,
        :height, :uint16,
        :border_width, :uint16,
        :override_redirect, :bool,
        :pad2, [:uint8, 1]
  end

  class ConfigureRequestEvent < FFI::Struct
    layout \
        :response_type, :uint8,
        :stack_mode, :uint8,
        :parent, :window_t,
        :window, :window_t,
        :sibling, :window_t,
        :x, :int16,
        :y, :int16,
        :width, :uint16,
        :height, :uint16,
        :border_width, :uint16,
        :value_mask, :uint16
  end

  class GravityNotifyEvent < FFI::Struct
    layout \
        :response_type, :uint8,
        :pad1, [:uint8, 1],
        :event, :window_t,
        :window, :window_t,
        :x, :int16,
        :y, :int16
  end

  class ResizeRequestEvent < FFI::Struct
    layout \
        :response_type, :uint8,
        :pad1, [:uint8, 1],
        :window, :window_t,
        :width, :uint16,
        :height, :uint16
  end

  class CirculateNotifyEvent < FFI::Struct
    layout \
        :response_type, :uint8,
        :pad1, [:uint8, 1],
        :event, :window_t,
        :window, :window_t,
        :pad2, [:uint8, 4],
        :place, :uint8,
        :pad3, [:uint8, 3]
  end

  class CirculateRequestEvent < FFI::Struct
    layout \
        :response_type, :uint8,
        :pad1, [:uint8, 1],
        :event, :window_t,
        :window, :window_t,
        :pad2, [:uint8, 4],
        :place, :uint8,
        :pad3, [:uint8, 3]
  end

  class PropertyNotifyEvent < FFI::Struct
    layout \
        :response_type, :uint8,
        :pad1, [:uint8, 1],
        :window, :window_t,
        :atom, :atom_t,
        :time, :timestamp_t,
        :state, :uint8,
        :pad2, [:uint8, 3]
  end

  class SelectionClearEvent < FFI::Struct
    layout \
        :response_type, :uint8,
        :pad1, [:uint8, 1],
        :time, :timestamp_t,
        :owner, :window_t,
        :selection, :atom_t
  end

  class SelectionRequestEvent < FFI::Struct
    layout \
        :response_type, :uint8,
        :pad1, [:uint8, 1],
        :time, :timestamp_t,
        :owner, :window_t,
        :requestor, :window_t,
        :selection, :atom_t,
        :target, :atom_t,
        :property, :atom_t
  end

  class SelectionNotifyEvent < FFI::Struct
    layout \
        :response_type, :uint8,
        :pad1, [:uint8, 1],
        :time, :timestamp_t,
        :requestor, :window_t,
        :selection, :atom_t,
        :target, :atom_t,
        :property, :atom_t
  end

  class ColormapNotifyEvent < FFI::Struct
    layout \
        :response_type, :uint8,
        :pad1, [:uint8, 1],
        :window, :window_t,
        :colormap, :colormap_t,
        :new, :bool,
        :state, :uint8,
        :pad2, [:uint8, 2]
  end

  class ClientMessageEvent < FFI::Struct
    layout \
        :response_type, :uint8,
        :format, :uint8,
        :window, :window_t,
        :type, :atom_t,
        :data, ClientMessageData
  end

  class MappingNotifyEvent < FFI::Struct
    layout \
        :response_type, :uint8,
        :pad1, [:uint8, 1],
        :request, :uint8,
        :first_keycode, :keycode_t,
        :count, :uint8,
        :pad2, [:uint8, 1]
  end

  class RequestError < FFI::Struct
    layout \
        :response_type, :uint8,
        :error_code, :uint8,
        :sequence, :uint16,
        :bad_value, :uint32,
        :minor_opcode, :uint16,
        :major_opcode, :uint8,
        :pad1, [:uint8, 1]
  end

  class MatchError < FFI::Struct
    layout \
        :response_type, :uint8,
        :error_code, :uint8,
        :sequence, :uint16,
        :bad_value, :uint32,
        :minor_opcode, :uint16,
        :major_opcode, :uint8,
        :pad1, [:uint8, 1]
  end

  class AccessError < FFI::Struct
    layout \
        :response_type, :uint8,
        :error_code, :uint8,
        :sequence, :uint16,
        :bad_value, :uint32,
        :minor_opcode, :uint16,
        :major_opcode, :uint8,
        :pad1, [:uint8, 1]
  end

  class AllocError < FFI::Struct
    layout \
        :response_type, :uint8,
        :error_code, :uint8,
        :sequence, :uint16,
        :bad_value, :uint32,
        :minor_opcode, :uint16,
        :major_opcode, :uint8,
        :pad1, [:uint8, 1]
  end

  class NameError < FFI::Struct
    layout \
        :response_type, :uint8,
        :error_code, :uint8,
        :sequence, :uint16,
        :bad_value, :uint32,
        :minor_opcode, :uint16,
        :major_opcode, :uint8,
        :pad1, [:uint8, 1]
  end

  class LengthError < FFI::Struct
    layout \
        :response_type, :uint8,
        :error_code, :uint8,
        :sequence, :uint16,
        :bad_value, :uint32,
        :minor_opcode, :uint16,
        :major_opcode, :uint8,
        :pad1, [:uint8, 1]
  end

  class ImplementationError < FFI::Struct
    layout \
        :response_type, :uint8,
        :error_code, :uint8,
        :sequence, :uint16,
        :bad_value, :uint32,
        :minor_opcode, :uint16,
        :major_opcode, :uint8,
        :pad1, [:uint8, 1]
  end

  class ValueError < FFI::Struct
    layout \
        :response_type, :uint8,
        :error_code, :uint8,
        :sequence, :uint16,
        :bad_value, :uint32,
        :minor_opcode, :uint16,
        :major_opcode, :uint8,
        :pad1, [:uint8, 1]
  end

  class WindowError < FFI::Struct
    layout \
        :response_type, :uint8,
        :error_code, :uint8,
        :sequence, :uint16,
        :bad_value, :uint32,
        :minor_opcode, :uint16,
        :major_opcode, :uint8,
        :pad1, [:uint8, 1]
  end

  class PixmapError < FFI::Struct
    layout \
        :response_type, :uint8,
        :error_code, :uint8,
        :sequence, :uint16,
        :bad_value, :uint32,
        :minor_opcode, :uint16,
        :major_opcode, :uint8,
        :pad1, [:uint8, 1]
  end

  class AtomError < FFI::Struct
    layout \
        :response_type, :uint8,
        :error_code, :uint8,
        :sequence, :uint16,
        :bad_value, :uint32,
        :minor_opcode, :uint16,
        :major_opcode, :uint8,
        :pad1, [:uint8, 1]
  end

  class CursorError < FFI::Struct
    layout \
        :response_type, :uint8,
        :error_code, :uint8,
        :sequence, :uint16,
        :bad_value, :uint32,
        :minor_opcode, :uint16,
        :major_opcode, :uint8,
        :pad1, [:uint8, 1]
  end

  class FontError < FFI::Struct
    layout \
        :response_type, :uint8,
        :error_code, :uint8,
        :sequence, :uint16,
        :bad_value, :uint32,
        :minor_opcode, :uint16,
        :major_opcode, :uint8,
        :pad1, [:uint8, 1]
  end

  class DrawableError < FFI::Struct
    layout \
        :response_type, :uint8,
        :error_code, :uint8,
        :sequence, :uint16,
        :bad_value, :uint32,
        :minor_opcode, :uint16,
        :major_opcode, :uint8,
        :pad1, [:uint8, 1]
  end

  class ColormapError < FFI::Struct
    layout \
        :response_type, :uint8,
        :error_code, :uint8,
        :sequence, :uint16,
        :bad_value, :uint32,
        :minor_opcode, :uint16,
        :major_opcode, :uint8,
        :pad1, [:uint8, 1]
  end

  class GContextError < FFI::Struct
    layout \
        :response_type, :uint8,
        :error_code, :uint8,
        :sequence, :uint16,
        :bad_value, :uint32,
        :minor_opcode, :uint16,
        :major_opcode, :uint8,
        :pad1, [:uint8, 1]
  end

  class IDChoiceError < FFI::Struct
    layout \
        :response_type, :uint8,
        :error_code, :uint8,
        :sequence, :uint16,
        :bad_value, :uint32,
        :minor_opcode, :uint16,
        :major_opcode, :uint8,
        :pad1, [:uint8, 1]
  end

  class BadSegError < FFI::Struct
    layout \
        :response_type, :uint8,
        :error_code, :uint8,
        :sequence, :uint16,
        :bad_value, :uint32,
        :minor_opcode, :uint16,
        :major_opcode, :uint8,
        :pad1, [:uint8, 1]
  end

  class CreateWindowRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :depth, :uint8,
        :length, :uint16,
        :wid, :window_t,
        :parent, :window_t,
        :x, :int16,
        :y, :int16,
        :width, :uint16,
        :height, :uint16,
        :border_width, :uint16,
        :class, :uint16,
        :visual, :visualid_t,
        :value_mask, :uint32
  end

  class CreateWindowCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_create_window_checked, [:pointer,:uint8,:window_t,:window_t,:int16,:int16,:uint16,:uint16,:uint16,:uint16,:visualid_t,:uint32,:pointer], CreateWindowCookie
  attach_function :xcb_create_window, [:pointer,:uint8,:window_t,:window_t,:int16,:int16,:uint16,:uint16,:uint16,:uint16,:visualid_t,:uint32,:pointer], CreateWindowCookie
  class ChangeWindowAttributesRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :pad1, [:uint8, 1],
        :length, :uint16,
        :window, :window_t,
        :value_mask, :uint32
  end

  class ChangeWindowAttributesCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_change_window_attributes_checked, [:pointer,:window_t,:uint32,:pointer], ChangeWindowAttributesCookie
  attach_function :xcb_change_window_attributes, [:pointer,:window_t,:uint32,:pointer], ChangeWindowAttributesCookie
  class GetWindowAttributesRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :visual, :visualid_t,
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
        :colormap, :colormap_t,
        :all_event_masks, :uint32,
        :your_event_mask, :uint32,
        :do_not_propagate_mask, :uint16,
        :pad1, [:uint8, 2]
  end

  class GetWindowAttributesCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_get_window_attributes, [:pointer,:visualid_t,:uint16,:uint8,:uint8,:uint32,:uint32,:bool,:bool,:uint8,:bool,:colormap_t,:uint32,:uint32,:uint16], GetWindowAttributesCookie
  class GetWindowAttributesReply < FFI::Struct
    layout \
        :response_type, :uint8,
        :backing_store, :uint8,
        :sequence, :uint16,
        :length, :uint32,
        :visual, :visualid_t,
        :class, :uint16,
        :bit_gravity, :uint8,
        :win_gravity, :uint8,
        :backing_planes, :uint32,
        :backing_pixel, :uint32,
        :save_under, :bool,
        :map_is_installed, :bool,
        :map_state, :uint8,
        :override_redirect, :bool,
        :colormap, :colormap_t,
        :all_event_masks, :uint32,
        :your_event_mask, :uint32,
        :do_not_propagate_mask, :uint16,
        :pad1, [:uint8, 2]
  end

  attach_function :xcb_get_window_attributes_reply, [:pointer, GetWindowAttributesCookie, :pointer], :pointer

        
  class DestroyWindowRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :pad1, [:uint8, 1],
        :length, :uint16,
        :window, :window_t
  end

  class DestroyWindowCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_destroy_window_checked, [:pointer,:window_t], DestroyWindowCookie
  attach_function :xcb_destroy_window, [:pointer,:window_t], DestroyWindowCookie
  class DestroySubwindowsRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :pad1, [:uint8, 1],
        :length, :uint16,
        :window, :window_t
  end

  class DestroySubwindowsCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_destroy_subwindows_checked, [:pointer,:window_t], DestroySubwindowsCookie
  attach_function :xcb_destroy_subwindows, [:pointer,:window_t], DestroySubwindowsCookie
  class ChangeSaveSetRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :mode, :uint8,
        :length, :uint16,
        :window, :window_t
  end

  class ChangeSaveSetCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_change_save_set_checked, [:pointer,:uint8,:window_t], ChangeSaveSetCookie
  attach_function :xcb_change_save_set, [:pointer,:uint8,:window_t], ChangeSaveSetCookie
  class ReparentWindowRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :pad1, [:uint8, 1],
        :length, :uint16,
        :window, :window_t,
        :parent, :window_t,
        :x, :int16,
        :y, :int16
  end

  class ReparentWindowCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_reparent_window_checked, [:pointer,:window_t,:window_t,:int16,:int16], ReparentWindowCookie
  attach_function :xcb_reparent_window, [:pointer,:window_t,:window_t,:int16,:int16], ReparentWindowCookie
  class MapWindowRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :pad1, [:uint8, 1],
        :length, :uint16,
        :window, :window_t
  end

  class MapWindowCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_map_window_checked, [:pointer,:window_t], MapWindowCookie
  attach_function :xcb_map_window, [:pointer,:window_t], MapWindowCookie
  class MapSubwindowsRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :pad1, [:uint8, 1],
        :length, :uint16,
        :window, :window_t
  end

  class MapSubwindowsCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_map_subwindows_checked, [:pointer,:window_t], MapSubwindowsCookie
  attach_function :xcb_map_subwindows, [:pointer,:window_t], MapSubwindowsCookie
  class UnmapWindowRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :pad1, [:uint8, 1],
        :length, :uint16,
        :window, :window_t
  end

  class UnmapWindowCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_unmap_window_checked, [:pointer,:window_t], UnmapWindowCookie
  attach_function :xcb_unmap_window, [:pointer,:window_t], UnmapWindowCookie
  class UnmapSubwindowsRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :pad1, [:uint8, 1],
        :length, :uint16,
        :window, :window_t
  end

  class UnmapSubwindowsCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_unmap_subwindows_checked, [:pointer,:window_t], UnmapSubwindowsCookie
  attach_function :xcb_unmap_subwindows, [:pointer,:window_t], UnmapSubwindowsCookie
  class ConfigureWindowRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :pad1, [:uint8, 1],
        :length, :uint16,
        :window, :window_t,
        :value_mask, :uint16,
        :pad2, [:uint8, 2],
        :value_mask, :uint16
  end

  class ConfigureWindowCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_configure_window_checked, [:pointer,:window_t,:uint16,:uint32,:pointer], ConfigureWindowCookie
  attach_function :xcb_configure_window, [:pointer,:window_t,:uint16,:uint32,:pointer], ConfigureWindowCookie
  class CirculateWindowRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :direction, :uint8,
        :length, :uint16,
        :window, :window_t
  end

  class CirculateWindowCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_circulate_window_checked, [:pointer,:uint8,:window_t], CirculateWindowCookie
  attach_function :xcb_circulate_window, [:pointer,:uint8,:window_t], CirculateWindowCookie
  class GetGeometryRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :root, :window_t,
        :length, :uint16,
        :x, :int16,
        :y, :int16,
        :width, :uint16,
        :height, :uint16,
        :border_width, :uint16,
        :pad1, [:uint8, 2]
  end

  class GetGeometryCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_get_geometry, [:pointer,:window_t,:int16,:int16,:uint16,:uint16,:uint16], GetGeometryCookie
  class GetGeometryReply < FFI::Struct
    layout \
        :response_type, :uint8,
        :depth, :uint8,
        :sequence, :uint16,
        :length, :uint32,
        :root, :window_t,
        :x, :int16,
        :y, :int16,
        :width, :uint16,
        :height, :uint16,
        :border_width, :uint16,
        :pad1, [:uint8, 2]
  end

  attach_function :xcb_get_geometry_reply, [:pointer, GetGeometryCookie, :pointer], :pointer

        
  class QueryTreeRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :root, :window_t,
        :length, :uint16,
        :parent, :window_t,
        :children_len, :uint16,
        :pad2, [:uint8, 14]
  end

  class QueryTreeCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_query_tree, [:pointer,:window_t,:window_t,:uint16,:uint32], QueryTreeCookie
  class QueryTreeReply < FFI::Struct
    layout \
        :response_type, :uint8,
        :pad1, [:uint8, 1],
        :sequence, :uint16,
        :length, :uint32,
        :root, :window_t,
        :parent, :window_t,
        :children_len, :uint16,
        :pad2, [:uint8, 14]
  end

  attach_function :xcb_query_tree_reply, [:pointer, QueryTreeCookie, :pointer], :pointer

        
  class InternAtomRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :atom, :atom_t,
        :length, :uint16
  end

  class InternAtomCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_intern_atom, [:pointer,:atom_t], InternAtomCookie
  class InternAtomReply < FFI::Struct
    layout \
        :response_type, :uint8,
        :pad1, [:uint8, 1],
        :sequence, :uint16,
        :length, :uint32,
        :atom, :atom_t
  end

  attach_function :xcb_intern_atom_reply, [:pointer, InternAtomCookie, :pointer], :pointer

        
  class GetAtomNameRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :name_len, :uint16,
        :length, :uint16,
        :pad2, [:uint8, 22]
  end

  class GetAtomNameCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_get_atom_name, [:pointer,:uint16,:uint32], GetAtomNameCookie
  class GetAtomNameReply < FFI::Struct
    layout \
        :response_type, :uint8,
        :pad1, [:uint8, 1],
        :sequence, :uint16,
        :length, :uint32,
        :name_len, :uint16,
        :pad2, [:uint8, 22]
  end

  attach_function :xcb_get_atom_name_reply, [:pointer, GetAtomNameCookie, :pointer], :pointer

        
  class ChangePropertyRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :mode, :uint8,
        :length, :uint16,
        :window, :window_t,
        :property, :atom_t,
        :type, :atom_t,
        :format, :uint8,
        :pad1, [:uint8, 3],
        :data_len, :uint32
  end

  class ChangePropertyCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_change_property_checked, [:pointer,:uint8,:window_t,:atom_t,:atom_t,:uint8,:uint32,:uint32], ChangePropertyCookie
  attach_function :xcb_change_property, [:pointer,:uint8,:window_t,:atom_t,:atom_t,:uint8,:uint32,:uint32], ChangePropertyCookie
  class DeletePropertyRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :pad1, [:uint8, 1],
        :length, :uint16,
        :window, :window_t,
        :property, :atom_t
  end

  class DeletePropertyCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_delete_property_checked, [:pointer,:window_t,:atom_t], DeletePropertyCookie
  attach_function :xcb_delete_property, [:pointer,:window_t,:atom_t], DeletePropertyCookie
  class GetPropertyRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :type, :atom_t,
        :length, :uint16,
        :bytes_after, :uint32,
        :value_len, :uint32,
        :pad1, [:uint8, 12]
  end

  class GetPropertyCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_get_property, [:pointer,:atom_t,:uint32,:uint32,:uint32], GetPropertyCookie
  class GetPropertyReply < FFI::Struct
    layout \
        :response_type, :uint8,
        :format, :uint8,
        :sequence, :uint16,
        :length, :uint32,
        :type, :atom_t,
        :bytes_after, :uint32,
        :value_len, :uint32,
        :pad1, [:uint8, 12]
  end

  attach_function :xcb_get_property_reply, [:pointer, GetPropertyCookie, :pointer], :pointer

        
  class ListPropertiesRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :atoms_len, :uint16,
        :length, :uint16,
        :pad2, [:uint8, 22]
  end

  class ListPropertiesCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_list_properties, [:pointer,:uint16,:uint32], ListPropertiesCookie
  class ListPropertiesReply < FFI::Struct
    layout \
        :response_type, :uint8,
        :pad1, [:uint8, 1],
        :sequence, :uint16,
        :length, :uint32,
        :atoms_len, :uint16,
        :pad2, [:uint8, 22]
  end

  attach_function :xcb_list_properties_reply, [:pointer, ListPropertiesCookie, :pointer], :pointer

        
  class SetSelectionOwnerRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :pad1, [:uint8, 1],
        :length, :uint16,
        :owner, :window_t,
        :selection, :atom_t,
        :time, :timestamp_t
  end

  class SetSelectionOwnerCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_set_selection_owner_checked, [:pointer,:window_t,:atom_t,:timestamp_t], SetSelectionOwnerCookie
  attach_function :xcb_set_selection_owner, [:pointer,:window_t,:atom_t,:timestamp_t], SetSelectionOwnerCookie
  class GetSelectionOwnerRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :owner, :window_t,
        :length, :uint16
  end

  class GetSelectionOwnerCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_get_selection_owner, [:pointer,:window_t], GetSelectionOwnerCookie
  class GetSelectionOwnerReply < FFI::Struct
    layout \
        :response_type, :uint8,
        :pad1, [:uint8, 1],
        :sequence, :uint16,
        :length, :uint32,
        :owner, :window_t
  end

  attach_function :xcb_get_selection_owner_reply, [:pointer, GetSelectionOwnerCookie, :pointer], :pointer

        
  class ConvertSelectionRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :pad1, [:uint8, 1],
        :length, :uint16,
        :requestor, :window_t,
        :selection, :atom_t,
        :target, :atom_t,
        :property, :atom_t,
        :time, :timestamp_t
  end

  class ConvertSelectionCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_convert_selection_checked, [:pointer,:window_t,:atom_t,:atom_t,:atom_t,:timestamp_t], ConvertSelectionCookie
  attach_function :xcb_convert_selection, [:pointer,:window_t,:atom_t,:atom_t,:atom_t,:timestamp_t], ConvertSelectionCookie
  class SendEventRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :propagate, :bool,
        :length, :uint16,
        :destination, :window_t,
        :event_mask, :uint32,
        :event_len, [:uint32 , 32]
  end

  class SendEventCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_send_event_checked, [:pointer,:bool,:window_t,:uint32,:uint32], SendEventCookie
  attach_function :xcb_send_event, [:pointer,:bool,:window_t,:uint32,:uint32], SendEventCookie
  class GrabPointerRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :pad0, [:uint8, 1],
        :length, :uint16
  end

  class GrabPointerCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_grab_pointer, [:pointer], GrabPointerCookie
  class GrabPointerReply < FFI::Struct
    layout \
        :response_type, :uint8,
        :status, :uint8,
        :sequence, :uint16,
        :length, :uint32
  end

  attach_function :xcb_grab_pointer_reply, [:pointer, GrabPointerCookie, :pointer], :pointer

        
  class UngrabPointerRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :pad1, [:uint8, 1],
        :length, :uint16,
        :time, :timestamp_t
  end

  class UngrabPointerCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_ungrab_pointer_checked, [:pointer,:timestamp_t], UngrabPointerCookie
  attach_function :xcb_ungrab_pointer, [:pointer,:timestamp_t], UngrabPointerCookie
  class GrabButtonRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :owner_events, :bool,
        :length, :uint16,
        :grab_window, :window_t,
        :event_mask, :uint16,
        :pointer_mode, :uint8,
        :keyboard_mode, :uint8,
        :confine_to, :window_t,
        :cursor, :cursor_t,
        :button, :uint8,
        :pad1, [:uint8, 1],
        :modifiers, :uint16
  end

  class GrabButtonCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_grab_button_checked, [:pointer,:bool,:window_t,:uint16,:uint8,:uint8,:window_t,:cursor_t,:uint8,:uint16], GrabButtonCookie
  attach_function :xcb_grab_button, [:pointer,:bool,:window_t,:uint16,:uint8,:uint8,:window_t,:cursor_t,:uint8,:uint16], GrabButtonCookie
  class UngrabButtonRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :button, :uint8,
        :length, :uint16,
        :grab_window, :window_t,
        :modifiers, :uint16,
        :pad1, [:uint8, 2]
  end

  class UngrabButtonCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_ungrab_button_checked, [:pointer,:uint8,:window_t,:uint16], UngrabButtonCookie
  attach_function :xcb_ungrab_button, [:pointer,:uint8,:window_t,:uint16], UngrabButtonCookie
  class ChangeActivePointerGrabRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :pad1, [:uint8, 1],
        :length, :uint16,
        :cursor, :cursor_t,
        :time, :timestamp_t,
        :event_mask, :uint16,
        :pad2, [:uint8, 2]
  end

  class ChangeActivePointerGrabCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_change_active_pointer_grab_checked, [:pointer,:cursor_t,:timestamp_t,:uint16], ChangeActivePointerGrabCookie
  attach_function :xcb_change_active_pointer_grab, [:pointer,:cursor_t,:timestamp_t,:uint16], ChangeActivePointerGrabCookie
  class GrabKeyboardRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :pad0, [:uint8, 1],
        :length, :uint16
  end

  class GrabKeyboardCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_grab_keyboard, [:pointer], GrabKeyboardCookie
  class GrabKeyboardReply < FFI::Struct
    layout \
        :response_type, :uint8,
        :status, :uint8,
        :sequence, :uint16,
        :length, :uint32
  end

  attach_function :xcb_grab_keyboard_reply, [:pointer, GrabKeyboardCookie, :pointer], :pointer

        
  class UngrabKeyboardRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :pad1, [:uint8, 1],
        :length, :uint16,
        :time, :timestamp_t
  end

  class UngrabKeyboardCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_ungrab_keyboard_checked, [:pointer,:timestamp_t], UngrabKeyboardCookie
  attach_function :xcb_ungrab_keyboard, [:pointer,:timestamp_t], UngrabKeyboardCookie
  class GrabKeyRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :owner_events, :bool,
        :length, :uint16,
        :grab_window, :window_t,
        :modifiers, :uint16,
        :key, :keycode_t,
        :pointer_mode, :uint8,
        :keyboard_mode, :uint8,
        :pad1, [:uint8, 3]
  end

  class GrabKeyCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_grab_key_checked, [:pointer,:bool,:window_t,:uint16,:keycode_t,:uint8,:uint8], GrabKeyCookie
  attach_function :xcb_grab_key, [:pointer,:bool,:window_t,:uint16,:keycode_t,:uint8,:uint8], GrabKeyCookie
  class UngrabKeyRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :key, :keycode_t,
        :length, :uint16,
        :grab_window, :window_t,
        :modifiers, :uint16,
        :pad1, [:uint8, 2]
  end

  class UngrabKeyCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_ungrab_key_checked, [:pointer,:keycode_t,:window_t,:uint16], UngrabKeyCookie
  attach_function :xcb_ungrab_key, [:pointer,:keycode_t,:window_t,:uint16], UngrabKeyCookie
  class AllowEventsRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :mode, :uint8,
        :length, :uint16,
        :time, :timestamp_t
  end

  class AllowEventsCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_allow_events_checked, [:pointer,:uint8,:timestamp_t], AllowEventsCookie
  attach_function :xcb_allow_events, [:pointer,:uint8,:timestamp_t], AllowEventsCookie
  class GrabServerRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :pad0, [:uint8, 1],
        :length, :uint16
  end

  class GrabServerCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_grab_server_checked, [:pointer], GrabServerCookie
  attach_function :xcb_grab_server, [:pointer], GrabServerCookie
  class UngrabServerRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :pad0, [:uint8, 1],
        :length, :uint16
  end

  class UngrabServerCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_ungrab_server_checked, [:pointer], UngrabServerCookie
  attach_function :xcb_ungrab_server, [:pointer], UngrabServerCookie
  class QueryPointerRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :root, :window_t,
        :length, :uint16,
        :child, :window_t,
        :root_x, :int16,
        :root_y, :int16,
        :win_x, :int16,
        :win_y, :int16,
        :mask, :uint16,
        :pad1, [:uint8, 2]
  end

  class QueryPointerCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_query_pointer, [:pointer,:window_t,:window_t,:int16,:int16,:int16,:int16,:uint16], QueryPointerCookie
  class QueryPointerReply < FFI::Struct
    layout \
        :response_type, :uint8,
        :same_screen, :bool,
        :sequence, :uint16,
        :length, :uint32,
        :root, :window_t,
        :child, :window_t,
        :root_x, :int16,
        :root_y, :int16,
        :win_x, :int16,
        :win_y, :int16,
        :mask, :uint16,
        :pad1, [:uint8, 2]
  end

  attach_function :xcb_query_pointer_reply, [:pointer, QueryPointerCookie, :pointer], :pointer

        
  class GetMotionEventsRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :events_len, :uint32,
        :length, :uint16,
        :pad2, [:uint8, 20]
  end

  class GetMotionEventsCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_get_motion_events, [:pointer,:uint32,:uint32], GetMotionEventsCookie
  class GetMotionEventsReply < FFI::Struct
    layout \
        :response_type, :uint8,
        :pad1, [:uint8, 1],
        :sequence, :uint16,
        :length, :uint32,
        :events_len, :uint32,
        :pad2, [:uint8, 20]
  end

  attach_function :xcb_get_motion_events_reply, [:pointer, GetMotionEventsCookie, :pointer], :pointer

        
  class TranslateCoordinatesRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :child, :window_t,
        :length, :uint16,
        :dst_x, :int16,
        :dst_y, :int16
  end

  class TranslateCoordinatesCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_translate_coordinates, [:pointer,:window_t,:int16,:int16], TranslateCoordinatesCookie
  class TranslateCoordinatesReply < FFI::Struct
    layout \
        :response_type, :uint8,
        :same_screen, :bool,
        :sequence, :uint16,
        :length, :uint32,
        :child, :window_t,
        :dst_x, :int16,
        :dst_y, :int16
  end

  attach_function :xcb_translate_coordinates_reply, [:pointer, TranslateCoordinatesCookie, :pointer], :pointer

        
  class WarpPointerRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :pad1, [:uint8, 1],
        :length, :uint16,
        :src_window, :window_t,
        :dst_window, :window_t,
        :src_x, :int16,
        :src_y, :int16,
        :src_width, :uint16,
        :src_height, :uint16,
        :dst_x, :int16,
        :dst_y, :int16
  end

  class WarpPointerCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_warp_pointer_checked, [:pointer,:window_t,:window_t,:int16,:int16,:uint16,:uint16,:int16,:int16], WarpPointerCookie
  attach_function :xcb_warp_pointer, [:pointer,:window_t,:window_t,:int16,:int16,:uint16,:uint16,:int16,:int16], WarpPointerCookie
  class SetInputFocusRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :revert_to, :uint8,
        :length, :uint16,
        :focus, :window_t,
        :time, :timestamp_t
  end

  class SetInputFocusCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_set_input_focus_checked, [:pointer,:uint8,:window_t,:timestamp_t], SetInputFocusCookie
  attach_function :xcb_set_input_focus, [:pointer,:uint8,:window_t,:timestamp_t], SetInputFocusCookie
  class GetInputFocusRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :focus, :window_t,
        :length, :uint16
  end

  class GetInputFocusCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_get_input_focus, [:pointer,:window_t], GetInputFocusCookie
  class GetInputFocusReply < FFI::Struct
    layout \
        :response_type, :uint8,
        :revert_to, :uint8,
        :sequence, :uint16,
        :length, :uint32,
        :focus, :window_t
  end

  attach_function :xcb_get_input_focus_reply, [:pointer, GetInputFocusCookie, :pointer], :pointer

        
  class QueryKeymapRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :keys_len, [:uint32 , 32],
        :length, :uint16
  end

  class QueryKeymapCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_query_keymap, [:pointer,:uint32], QueryKeymapCookie
  class QueryKeymapReply < FFI::Struct
    layout \
        :response_type, :uint8,
        :pad1, [:uint8, 1],
        :sequence, :uint16,
        :length, :uint32,
        :keys_len, [:uint32 , 32]
  end

  attach_function :xcb_query_keymap_reply, [:pointer, QueryKeymapCookie, :pointer], :pointer

        
  class OpenFontRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :pad1, [:uint8, 1],
        :length, :uint16,
        :fid, :font_t,
        :name_len, :uint16,
        :pad2, [:uint8, 2]
  end

  class OpenFontCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_open_font_checked, [:pointer,:font_t,:uint16,:uint32], OpenFontCookie
  attach_function :xcb_open_font, [:pointer,:font_t,:uint16,:uint32], OpenFontCookie
  class CloseFontRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :pad1, [:uint8, 1],
        :length, :uint16,
        :font, :font_t
  end

  class CloseFontCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_close_font_checked, [:pointer,:font_t], CloseFontCookie
  attach_function :xcb_close_font, [:pointer,:font_t], CloseFontCookie
  class QueryFontRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :min_bounds, Charinfo,
        :length, :uint16,
        :pad2, [:uint8, 4],
        :max_bounds, Charinfo,
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

  class QueryFontCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_query_font, [:pointer,Charinfo,Charinfo,:uint16,:uint16,:uint16,:uint16,:uint8,:uint8,:uint8,:bool,:int16,:int16,:uint32,:uint32,:uint32], QueryFontCookie
  class QueryFontReply < FFI::Struct
    layout \
        :response_type, :uint8,
        :pad1, [:uint8, 1],
        :sequence, :uint16,
        :length, :uint32,
        :min_bounds, Charinfo,
        :pad2, [:uint8, 4],
        :max_bounds, Charinfo,
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

  attach_function :xcb_query_font_reply, [:pointer, QueryFontCookie, :pointer], :pointer

        
  class QueryTextExtentsRequest < FFI::Struct
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

  class QueryTextExtentsCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_query_text_extents, [:pointer,:int16,:int16,:int16,:int16,:int32,:int32,:int32], QueryTextExtentsCookie
  class QueryTextExtentsReply < FFI::Struct
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

  attach_function :xcb_query_text_extents_reply, [:pointer, QueryTextExtentsCookie, :pointer], :pointer

        
  class ListFontsRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :names_len, :uint16,
        :length, :uint16,
        :pad2, [:uint8, 22]
  end

  class ListFontsCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_list_fonts, [:pointer,:uint16,:uint32], ListFontsCookie
  class ListFontsReply < FFI::Struct
    layout \
        :response_type, :uint8,
        :pad1, [:uint8, 1],
        :sequence, :uint16,
        :length, :uint32,
        :names_len, :uint16,
        :pad2, [:uint8, 22]
  end

  attach_function :xcb_list_fonts_reply, [:pointer, ListFontsCookie, :pointer], :pointer

        
  class ListFontsWithInfoRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :min_bounds, Charinfo,
        :length, :uint16,
        :pad1, [:uint8, 4],
        :max_bounds, Charinfo,
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

  class ListFontsWithInfoCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_list_fonts_with_info, [:pointer,Charinfo,Charinfo,:uint16,:uint16,:uint16,:uint16,:uint8,:uint8,:uint8,:bool,:int16,:int16,:uint32,:uint32,:uint32], ListFontsWithInfoCookie
  class ListFontsWithInfoReply < FFI::Struct
    layout \
        :response_type, :uint8,
        :name_len, :uint8,
        :sequence, :uint16,
        :length, :uint32,
        :min_bounds, Charinfo,
        :pad1, [:uint8, 4],
        :max_bounds, Charinfo,
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

  attach_function :xcb_list_fonts_with_info_reply, [:pointer, ListFontsWithInfoCookie, :pointer], :pointer

        
  class SetFontPathRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :pad1, [:uint8, 1],
        :length, :uint16,
        :font_qty, :uint16,
        :pad2, [:uint8, 2]
  end

  class SetFontPathCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_set_font_path_checked, [:pointer,:uint16,:uint32], SetFontPathCookie
  attach_function :xcb_set_font_path, [:pointer,:uint16,:uint32], SetFontPathCookie
  class GetFontPathRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :path_len, :uint16,
        :length, :uint16,
        :pad2, [:uint8, 22]
  end

  class GetFontPathCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_get_font_path, [:pointer,:uint16,:uint32], GetFontPathCookie
  class GetFontPathReply < FFI::Struct
    layout \
        :response_type, :uint8,
        :pad1, [:uint8, 1],
        :sequence, :uint16,
        :length, :uint32,
        :path_len, :uint16,
        :pad2, [:uint8, 22]
  end

  attach_function :xcb_get_font_path_reply, [:pointer, GetFontPathCookie, :pointer], :pointer

        
  class CreatePixmapRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :depth, :uint8,
        :length, :uint16,
        :pid, :pixmap_t,
        :drawable, :drawable_t,
        :width, :uint16,
        :height, :uint16
  end

  class CreatePixmapCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_create_pixmap_checked, [:pointer,:uint8,:pixmap_t,:drawable_t,:uint16,:uint16], CreatePixmapCookie
  attach_function :xcb_create_pixmap, [:pointer,:uint8,:pixmap_t,:drawable_t,:uint16,:uint16], CreatePixmapCookie
  class FreePixmapRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :pad1, [:uint8, 1],
        :length, :uint16,
        :pixmap, :pixmap_t
  end

  class FreePixmapCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_free_pixmap_checked, [:pointer,:pixmap_t], FreePixmapCookie
  attach_function :xcb_free_pixmap, [:pointer,:pixmap_t], FreePixmapCookie
  class CreateGCRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :pad1, [:uint8, 1],
        :length, :uint16,
        :cid, :gcontext_t,
        :drawable, :drawable_t,
        :value_mask, :uint32
  end

  class CreateGCCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_create_gc_checked, [:pointer,:gcontext_t,:drawable_t,:uint32,:pointer], CreateGCCookie
  attach_function :xcb_create_gc, [:pointer,:gcontext_t,:drawable_t,:uint32,:pointer], CreateGCCookie
  class ChangeGCRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :pad1, [:uint8, 1],
        :length, :uint16,
        :gc, :gcontext_t,
        :value_mask, :uint32
  end

  class ChangeGCCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_change_gc_checked, [:pointer,:gcontext_t,:uint32,:pointer], ChangeGCCookie
  attach_function :xcb_change_gc, [:pointer,:gcontext_t,:uint32,:pointer], ChangeGCCookie
  class CopyGCRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :pad1, [:uint8, 1],
        :length, :uint16,
        :src_gc, :gcontext_t,
        :dst_gc, :gcontext_t,
        :value_mask, :uint32
  end

  class CopyGCCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_copy_gc_checked, [:pointer,:gcontext_t,:gcontext_t,:uint32], CopyGCCookie
  attach_function :xcb_copy_gc, [:pointer,:gcontext_t,:gcontext_t,:uint32], CopyGCCookie
  class SetDashesRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :pad1, [:uint8, 1],
        :length, :uint16,
        :gc, :gcontext_t,
        :dash_offset, :uint16,
        :dashes_len, :uint16
  end

  class SetDashesCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_set_dashes_checked, [:pointer,:gcontext_t,:uint16,:uint16,:uint32], SetDashesCookie
  attach_function :xcb_set_dashes, [:pointer,:gcontext_t,:uint16,:uint16,:uint32], SetDashesCookie
  class SetClipRectanglesRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :ordering, :uint8,
        :length, :uint16,
        :gc, :gcontext_t,
        :clip_x_origin, :int16,
        :clip_y_origin, :int16
  end

  class SetClipRectanglesCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_set_clip_rectangles_checked, [:pointer,:uint8,:gcontext_t,:int16,:int16,:uint32], SetClipRectanglesCookie
  attach_function :xcb_set_clip_rectangles, [:pointer,:uint8,:gcontext_t,:int16,:int16,:uint32], SetClipRectanglesCookie
  class FreeGCRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :pad1, [:uint8, 1],
        :length, :uint16,
        :gc, :gcontext_t
  end

  class FreeGCCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_free_gc_checked, [:pointer,:gcontext_t], FreeGCCookie
  attach_function :xcb_free_gc, [:pointer,:gcontext_t], FreeGCCookie
  class ClearAreaRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :exposures, :bool,
        :length, :uint16,
        :window, :window_t,
        :x, :int16,
        :y, :int16,
        :width, :uint16,
        :height, :uint16
  end

  class ClearAreaCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_clear_area_checked, [:pointer,:bool,:window_t,:int16,:int16,:uint16,:uint16], ClearAreaCookie
  attach_function :xcb_clear_area, [:pointer,:bool,:window_t,:int16,:int16,:uint16,:uint16], ClearAreaCookie
  class CopyAreaRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :pad1, [:uint8, 1],
        :length, :uint16,
        :src_drawable, :drawable_t,
        :dst_drawable, :drawable_t,
        :gc, :gcontext_t,
        :src_x, :int16,
        :src_y, :int16,
        :dst_x, :int16,
        :dst_y, :int16,
        :width, :uint16,
        :height, :uint16
  end

  class CopyAreaCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_copy_area_checked, [:pointer,:drawable_t,:drawable_t,:gcontext_t,:int16,:int16,:int16,:int16,:uint16,:uint16], CopyAreaCookie
  attach_function :xcb_copy_area, [:pointer,:drawable_t,:drawable_t,:gcontext_t,:int16,:int16,:int16,:int16,:uint16,:uint16], CopyAreaCookie
  class CopyPlaneRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :pad1, [:uint8, 1],
        :length, :uint16,
        :src_drawable, :drawable_t,
        :dst_drawable, :drawable_t,
        :gc, :gcontext_t,
        :src_x, :int16,
        :src_y, :int16,
        :dst_x, :int16,
        :dst_y, :int16,
        :width, :uint16,
        :height, :uint16,
        :bit_plane, :uint32
  end

  class CopyPlaneCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_copy_plane_checked, [:pointer,:drawable_t,:drawable_t,:gcontext_t,:int16,:int16,:int16,:int16,:uint16,:uint16,:uint32], CopyPlaneCookie
  attach_function :xcb_copy_plane, [:pointer,:drawable_t,:drawable_t,:gcontext_t,:int16,:int16,:int16,:int16,:uint16,:uint16,:uint32], CopyPlaneCookie
  class PolyPointRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :coordinate_mode, :uint8,
        :length, :uint16,
        :drawable, :drawable_t,
        :gc, :gcontext_t
  end

  class PolyPointCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_poly_point_checked, [:pointer,:uint8,:drawable_t,:gcontext_t,:uint32], PolyPointCookie
  attach_function :xcb_poly_point, [:pointer,:uint8,:drawable_t,:gcontext_t,:uint32], PolyPointCookie
  class PolyLineRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :coordinate_mode, :uint8,
        :length, :uint16,
        :drawable, :drawable_t,
        :gc, :gcontext_t
  end

  class PolyLineCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_poly_line_checked, [:pointer,:uint8,:drawable_t,:gcontext_t,:uint32], PolyLineCookie
  attach_function :xcb_poly_line, [:pointer,:uint8,:drawable_t,:gcontext_t,:uint32], PolyLineCookie
  class PolySegmentRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :pad1, [:uint8, 1],
        :length, :uint16,
        :drawable, :drawable_t,
        :gc, :gcontext_t
  end

  class PolySegmentCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_poly_segment_checked, [:pointer,:drawable_t,:gcontext_t,:uint32], PolySegmentCookie
  attach_function :xcb_poly_segment, [:pointer,:drawable_t,:gcontext_t,:uint32], PolySegmentCookie
  class PolyRectangleRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :pad1, [:uint8, 1],
        :length, :uint16,
        :drawable, :drawable_t,
        :gc, :gcontext_t
  end

  class PolyRectangleCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_poly_rectangle_checked, [:pointer,:drawable_t,:gcontext_t,:uint32], PolyRectangleCookie
  attach_function :xcb_poly_rectangle, [:pointer,:drawable_t,:gcontext_t,:uint32], PolyRectangleCookie
  class PolyArcRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :pad1, [:uint8, 1],
        :length, :uint16,
        :drawable, :drawable_t,
        :gc, :gcontext_t
  end

  class PolyArcCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_poly_arc_checked, [:pointer,:drawable_t,:gcontext_t,:uint32], PolyArcCookie
  attach_function :xcb_poly_arc, [:pointer,:drawable_t,:gcontext_t,:uint32], PolyArcCookie
  class FillPolyRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :pad1, [:uint8, 1],
        :length, :uint16,
        :drawable, :drawable_t,
        :gc, :gcontext_t,
        :shape, :uint8,
        :coordinate_mode, :uint8,
        :pad2, [:uint8, 2]
  end

  class FillPolyCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_fill_poly_checked, [:pointer,:drawable_t,:gcontext_t,:uint8,:uint8,:uint32], FillPolyCookie
  attach_function :xcb_fill_poly, [:pointer,:drawable_t,:gcontext_t,:uint8,:uint8,:uint32], FillPolyCookie
  class PolyFillRectangleRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :pad1, [:uint8, 1],
        :length, :uint16,
        :drawable, :drawable_t,
        :gc, :gcontext_t
  end

  class PolyFillRectangleCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_poly_fill_rectangle_checked, [:pointer,:drawable_t,:gcontext_t,:uint32], PolyFillRectangleCookie
  attach_function :xcb_poly_fill_rectangle, [:pointer,:drawable_t,:gcontext_t,:uint32], PolyFillRectangleCookie
  class PolyFillArcRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :pad1, [:uint8, 1],
        :length, :uint16,
        :drawable, :drawable_t,
        :gc, :gcontext_t
  end

  class PolyFillArcCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_poly_fill_arc_checked, [:pointer,:drawable_t,:gcontext_t,:uint32], PolyFillArcCookie
  attach_function :xcb_poly_fill_arc, [:pointer,:drawable_t,:gcontext_t,:uint32], PolyFillArcCookie
  class PutImageRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :format, :uint8,
        :length, :uint16,
        :drawable, :drawable_t,
        :gc, :gcontext_t,
        :width, :uint16,
        :height, :uint16,
        :dst_x, :int16,
        :dst_y, :int16,
        :left_pad, :uint8,
        :depth, :uint8,
        :pad1, [:uint8, 2]
  end

  class PutImageCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_put_image_checked, [:pointer,:uint8,:drawable_t,:gcontext_t,:uint16,:uint16,:int16,:int16,:uint8,:uint8,:uint32], PutImageCookie
  attach_function :xcb_put_image, [:pointer,:uint8,:drawable_t,:gcontext_t,:uint16,:uint16,:int16,:int16,:uint8,:uint8,:uint32], PutImageCookie
  class GetImageRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :visual, :visualid_t,
        :length, :uint16,
        :pad1, [:uint8, 20]
  end

  class GetImageCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_get_image, [:pointer,:visualid_t,:uint32], GetImageCookie
  class GetImageReply < FFI::Struct
    layout \
        :response_type, :uint8,
        :depth, :uint8,
        :sequence, :uint16,
        :length, :uint32,
        :visual, :visualid_t,
        :pad1, [:uint8, 20]
  end

  attach_function :xcb_get_image_reply, [:pointer, GetImageCookie, :pointer], :pointer

        
  class PolyText8Request < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :pad1, [:uint8, 1],
        :length, :uint16,
        :drawable, :drawable_t,
        :gc, :gcontext_t,
        :x, :int16,
        :y, :int16
  end

  class PolyText8Cookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_poly_text_8_checked, [:pointer,:drawable_t,:gcontext_t,:int16,:int16,:uint32], PolyText8Cookie
  attach_function :xcb_poly_text_8, [:pointer,:drawable_t,:gcontext_t,:int16,:int16,:uint32], PolyText8Cookie
  class PolyText16Request < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :pad1, [:uint8, 1],
        :length, :uint16,
        :drawable, :drawable_t,
        :gc, :gcontext_t,
        :x, :int16,
        :y, :int16
  end

  class PolyText16Cookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_poly_text_16_checked, [:pointer,:drawable_t,:gcontext_t,:int16,:int16,:uint32], PolyText16Cookie
  attach_function :xcb_poly_text_16, [:pointer,:drawable_t,:gcontext_t,:int16,:int16,:uint32], PolyText16Cookie
  class ImageText8Request < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :string_len, :uint8,
        :length, :uint16,
        :drawable, :drawable_t,
        :gc, :gcontext_t,
        :x, :int16,
        :y, :int16
  end

  class ImageText8Cookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_image_text_8_checked, [:pointer,:uint8,:drawable_t,:gcontext_t,:int16,:int16,:uint32], ImageText8Cookie
  attach_function :xcb_image_text_8, [:pointer,:uint8,:drawable_t,:gcontext_t,:int16,:int16,:uint32], ImageText8Cookie
  class ImageText16Request < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :string_len, :uint8,
        :length, :uint16,
        :drawable, :drawable_t,
        :gc, :gcontext_t,
        :x, :int16,
        :y, :int16
  end

  class ImageText16Cookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_image_text_16_checked, [:pointer,:uint8,:drawable_t,:gcontext_t,:int16,:int16,:uint32], ImageText16Cookie
  attach_function :xcb_image_text_16, [:pointer,:uint8,:drawable_t,:gcontext_t,:int16,:int16,:uint32], ImageText16Cookie
  class CreateColormapRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :alloc, :uint8,
        :length, :uint16,
        :mid, :colormap_t,
        :window, :window_t,
        :visual, :visualid_t
  end

  class CreateColormapCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_create_colormap_checked, [:pointer,:uint8,:colormap_t,:window_t,:visualid_t], CreateColormapCookie
  attach_function :xcb_create_colormap, [:pointer,:uint8,:colormap_t,:window_t,:visualid_t], CreateColormapCookie
  class FreeColormapRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :pad1, [:uint8, 1],
        :length, :uint16,
        :cmap, :colormap_t
  end

  class FreeColormapCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_free_colormap_checked, [:pointer,:colormap_t], FreeColormapCookie
  attach_function :xcb_free_colormap, [:pointer,:colormap_t], FreeColormapCookie
  class CopyColormapAndFreeRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :pad1, [:uint8, 1],
        :length, :uint16,
        :mid, :colormap_t,
        :src_cmap, :colormap_t
  end

  class CopyColormapAndFreeCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_copy_colormap_and_free_checked, [:pointer,:colormap_t,:colormap_t], CopyColormapAndFreeCookie
  attach_function :xcb_copy_colormap_and_free, [:pointer,:colormap_t,:colormap_t], CopyColormapAndFreeCookie
  class InstallColormapRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :pad1, [:uint8, 1],
        :length, :uint16,
        :cmap, :colormap_t
  end

  class InstallColormapCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_install_colormap_checked, [:pointer,:colormap_t], InstallColormapCookie
  attach_function :xcb_install_colormap, [:pointer,:colormap_t], InstallColormapCookie
  class UninstallColormapRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :pad1, [:uint8, 1],
        :length, :uint16,
        :cmap, :colormap_t
  end

  class UninstallColormapCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_uninstall_colormap_checked, [:pointer,:colormap_t], UninstallColormapCookie
  attach_function :xcb_uninstall_colormap, [:pointer,:colormap_t], UninstallColormapCookie
  class ListInstalledColormapsRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :cmaps_len, :uint16,
        :length, :uint16,
        :pad2, [:uint8, 22]
  end

  class ListInstalledColormapsCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_list_installed_colormaps, [:pointer,:uint16,:uint32], ListInstalledColormapsCookie
  class ListInstalledColormapsReply < FFI::Struct
    layout \
        :response_type, :uint8,
        :pad1, [:uint8, 1],
        :sequence, :uint16,
        :length, :uint32,
        :cmaps_len, :uint16,
        :pad2, [:uint8, 22]
  end

  attach_function :xcb_list_installed_colormaps_reply, [:pointer, ListInstalledColormapsCookie, :pointer], :pointer

        
  class AllocColorRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :red, :uint16,
        :length, :uint16,
        :green, :uint16,
        :blue, :uint16,
        :pad2, [:uint8, 2],
        :pixel, :uint32
  end

  class AllocColorCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_alloc_color, [:pointer,:uint16,:uint16,:uint16,:uint32], AllocColorCookie
  class AllocColorReply < FFI::Struct
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

  attach_function :xcb_alloc_color_reply, [:pointer, AllocColorCookie, :pointer], :pointer

        
  class AllocNamedColorRequest < FFI::Struct
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

  class AllocNamedColorCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_alloc_named_color, [:pointer,:uint32,:uint16,:uint16,:uint16,:uint16,:uint16,:uint16], AllocNamedColorCookie
  class AllocNamedColorReply < FFI::Struct
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

  attach_function :xcb_alloc_named_color_reply, [:pointer, AllocNamedColorCookie, :pointer], :pointer

        
  class AllocColorCellsRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :pixels_len, :uint16,
        :length, :uint16,
        :masks_len, :uint16,
        :pad2, [:uint8, 20]
  end

  class AllocColorCellsCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_alloc_color_cells, [:pointer,:uint16,:uint16,:uint32,:uint32], AllocColorCellsCookie
  class AllocColorCellsReply < FFI::Struct
    layout \
        :response_type, :uint8,
        :pad1, [:uint8, 1],
        :sequence, :uint16,
        :length, :uint32,
        :pixels_len, :uint16,
        :masks_len, :uint16,
        :pad2, [:uint8, 20]
  end

  attach_function :xcb_alloc_color_cells_reply, [:pointer, AllocColorCellsCookie, :pointer], :pointer

        
  class AllocColorPlanesRequest < FFI::Struct
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

  class AllocColorPlanesCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_alloc_color_planes, [:pointer,:uint16,:uint32,:uint32,:uint32,:uint32], AllocColorPlanesCookie
  class AllocColorPlanesReply < FFI::Struct
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

  attach_function :xcb_alloc_color_planes_reply, [:pointer, AllocColorPlanesCookie, :pointer], :pointer

        
  class FreeColorsRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :pad1, [:uint8, 1],
        :length, :uint16,
        :cmap, :colormap_t,
        :plane_mask, :uint32
  end

  class FreeColorsCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_free_colors_checked, [:pointer,:colormap_t,:uint32,:uint32], FreeColorsCookie
  attach_function :xcb_free_colors, [:pointer,:colormap_t,:uint32,:uint32], FreeColorsCookie
  class StoreColorsRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :pad1, [:uint8, 1],
        :length, :uint16,
        :cmap, :colormap_t
  end

  class StoreColorsCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_store_colors_checked, [:pointer,:colormap_t,:uint32], StoreColorsCookie
  attach_function :xcb_store_colors, [:pointer,:colormap_t,:uint32], StoreColorsCookie
  class StoreNamedColorRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :flags, :uint8,
        :length, :uint16,
        :cmap, :colormap_t,
        :pixel, :uint32,
        :name_len, :uint16,
        :pad1, [:uint8, 2]
  end

  class StoreNamedColorCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_store_named_color_checked, [:pointer,:uint8,:colormap_t,:uint32,:uint16,:uint32], StoreNamedColorCookie
  attach_function :xcb_store_named_color, [:pointer,:uint8,:colormap_t,:uint32,:uint16,:uint32], StoreNamedColorCookie
  class QueryColorsRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :colors_len, :uint16,
        :length, :uint16,
        :pad2, [:uint8, 22]
  end

  class QueryColorsCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_query_colors, [:pointer,:uint16,:uint32], QueryColorsCookie
  class QueryColorsReply < FFI::Struct
    layout \
        :response_type, :uint8,
        :pad1, [:uint8, 1],
        :sequence, :uint16,
        :length, :uint32,
        :colors_len, :uint16,
        :pad2, [:uint8, 22]
  end

  attach_function :xcb_query_colors_reply, [:pointer, QueryColorsCookie, :pointer], :pointer

        
  class LookupColorRequest < FFI::Struct
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

  class LookupColorCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_lookup_color, [:pointer,:uint16,:uint16,:uint16,:uint16,:uint16,:uint16], LookupColorCookie
  class LookupColorReply < FFI::Struct
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

  attach_function :xcb_lookup_color_reply, [:pointer, LookupColorCookie, :pointer], :pointer

        
  class CreateCursorRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :pad1, [:uint8, 1],
        :length, :uint16,
        :cid, :cursor_t,
        :source, :pixmap_t,
        :mask, :pixmap_t,
        :fore_red, :uint16,
        :fore_green, :uint16,
        :fore_blue, :uint16,
        :back_red, :uint16,
        :back_green, :uint16,
        :back_blue, :uint16,
        :x, :uint16,
        :y, :uint16
  end

  class CreateCursorCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_create_cursor_checked, [:pointer,:cursor_t,:pixmap_t,:pixmap_t,:uint16,:uint16,:uint16,:uint16,:uint16,:uint16,:uint16,:uint16], CreateCursorCookie
  attach_function :xcb_create_cursor, [:pointer,:cursor_t,:pixmap_t,:pixmap_t,:uint16,:uint16,:uint16,:uint16,:uint16,:uint16,:uint16,:uint16], CreateCursorCookie
  class CreateGlyphCursorRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :pad1, [:uint8, 1],
        :length, :uint16,
        :cid, :cursor_t,
        :source_font, :font_t,
        :mask_font, :font_t,
        :source_char, :uint16,
        :mask_char, :uint16,
        :fore_red, :uint16,
        :fore_green, :uint16,
        :fore_blue, :uint16,
        :back_red, :uint16,
        :back_green, :uint16,
        :back_blue, :uint16
  end

  class CreateGlyphCursorCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_create_glyph_cursor_checked, [:pointer,:cursor_t,:font_t,:font_t,:uint16,:uint16,:uint16,:uint16,:uint16,:uint16,:uint16,:uint16], CreateGlyphCursorCookie
  attach_function :xcb_create_glyph_cursor, [:pointer,:cursor_t,:font_t,:font_t,:uint16,:uint16,:uint16,:uint16,:uint16,:uint16,:uint16,:uint16], CreateGlyphCursorCookie
  class FreeCursorRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :pad1, [:uint8, 1],
        :length, :uint16,
        :cursor, :cursor_t
  end

  class FreeCursorCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_free_cursor_checked, [:pointer,:cursor_t], FreeCursorCookie
  attach_function :xcb_free_cursor, [:pointer,:cursor_t], FreeCursorCookie
  class RecolorCursorRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :pad1, [:uint8, 1],
        :length, :uint16,
        :cursor, :cursor_t,
        :fore_red, :uint16,
        :fore_green, :uint16,
        :fore_blue, :uint16,
        :back_red, :uint16,
        :back_green, :uint16,
        :back_blue, :uint16
  end

  class RecolorCursorCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_recolor_cursor_checked, [:pointer,:cursor_t,:uint16,:uint16,:uint16,:uint16,:uint16,:uint16], RecolorCursorCookie
  attach_function :xcb_recolor_cursor, [:pointer,:cursor_t,:uint16,:uint16,:uint16,:uint16,:uint16,:uint16], RecolorCursorCookie
  class QueryBestSizeRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :width, :uint16,
        :length, :uint16,
        :height, :uint16
  end

  class QueryBestSizeCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_query_best_size, [:pointer,:uint16,:uint16], QueryBestSizeCookie
  class QueryBestSizeReply < FFI::Struct
    layout \
        :response_type, :uint8,
        :pad1, [:uint8, 1],
        :sequence, :uint16,
        :length, :uint32,
        :width, :uint16,
        :height, :uint16
  end

  attach_function :xcb_query_best_size_reply, [:pointer, QueryBestSizeCookie, :pointer], :pointer

        
  class QueryExtensionRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :present, :bool,
        :length, :uint16,
        :major_opcode, :uint8,
        :first_event, :uint8,
        :first_error, :uint8
  end

  class QueryExtensionCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_query_extension, [:pointer,:bool,:uint8,:uint8,:uint8], QueryExtensionCookie
  class QueryExtensionReply < FFI::Struct
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

  attach_function :xcb_query_extension_reply, [:pointer, QueryExtensionCookie, :pointer], :pointer

        
  class ListExtensionsRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :pad1, [:uint8, 24],
        :length, :uint16
  end

  class ListExtensionsCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_list_extensions, [:pointer,:uint32], ListExtensionsCookie
  class ListExtensionsReply < FFI::Struct
    layout \
        :response_type, :uint8,
        :names_len, :uint8,
        :sequence, :uint16,
        :length, :uint32,
        :pad1, [:uint8, 24]
  end

  attach_function :xcb_list_extensions_reply, [:pointer, ListExtensionsCookie, :pointer], :pointer

        
  class ChangeKeyboardMappingRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :keycode_count, :uint8,
        :length, :uint16,
        :first_keycode, :keycode_t,
        :keysyms_per_keycode, :uint8,
        :pad1, [:uint8, 2]
  end

  class ChangeKeyboardMappingCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_change_keyboard_mapping_checked, [:pointer,:uint8,:keycode_t,:uint8,:uint32], ChangeKeyboardMappingCookie
  attach_function :xcb_change_keyboard_mapping, [:pointer,:uint8,:keycode_t,:uint8,:uint32], ChangeKeyboardMappingCookie
  class GetKeyboardMappingRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :pad1, [:uint8, 24],
        :length, :uint16
  end

  class GetKeyboardMappingCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_get_keyboard_mapping, [:pointer,:uint32], GetKeyboardMappingCookie
  class GetKeyboardMappingReply < FFI::Struct
    layout \
        :response_type, :uint8,
        :keysyms_per_keycode, :uint8,
        :sequence, :uint16,
        :length, :uint32,
        :pad1, [:uint8, 24]
  end

  attach_function :xcb_get_keyboard_mapping_reply, [:pointer, GetKeyboardMappingCookie, :pointer], :pointer

        
  class ChangeKeyboardControlRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :pad1, [:uint8, 1],
        :length, :uint16,
        :value_mask, :uint32
  end

  class ChangeKeyboardControlCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_change_keyboard_control_checked, [:pointer,:uint32,:pointer], ChangeKeyboardControlCookie
  attach_function :xcb_change_keyboard_control, [:pointer,:uint32,:pointer], ChangeKeyboardControlCookie
  class GetKeyboardControlRequest < FFI::Struct
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

  class GetKeyboardControlCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_get_keyboard_control, [:pointer,:uint32,:uint8,:uint8,:uint16,:uint16,:uint32], GetKeyboardControlCookie
  class GetKeyboardControlReply < FFI::Struct
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

  attach_function :xcb_get_keyboard_control_reply, [:pointer, GetKeyboardControlCookie, :pointer], :pointer

        
  class BellRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :percent, :int8,
        :length, :uint16
  end

  class BellCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_bell_checked, [:pointer,:int8], BellCookie
  attach_function :xcb_bell, [:pointer,:int8], BellCookie
  class ChangePointerControlRequest < FFI::Struct
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

  class ChangePointerControlCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_change_pointer_control_checked, [:pointer,:int16,:int16,:int16,:bool,:bool], ChangePointerControlCookie
  attach_function :xcb_change_pointer_control, [:pointer,:int16,:int16,:int16,:bool,:bool], ChangePointerControlCookie
  class GetPointerControlRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :acceleration_numerator, :uint16,
        :length, :uint16,
        :acceleration_denominator, :uint16,
        :threshold, :uint16,
        :pad2, [:uint8, 18]
  end

  class GetPointerControlCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_get_pointer_control, [:pointer,:uint16,:uint16,:uint16], GetPointerControlCookie
  class GetPointerControlReply < FFI::Struct
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

  attach_function :xcb_get_pointer_control_reply, [:pointer, GetPointerControlCookie, :pointer], :pointer

        
  class SetScreenSaverRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :pad1, [:uint8, 1],
        :length, :uint16,
        :timeout, :int16,
        :interval, :int16,
        :prefer_blanking, :uint8,
        :allow_exposures, :uint8
  end

  class SetScreenSaverCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_set_screen_saver_checked, [:pointer,:int16,:int16,:uint8,:uint8], SetScreenSaverCookie
  attach_function :xcb_set_screen_saver, [:pointer,:int16,:int16,:uint8,:uint8], SetScreenSaverCookie
  class GetScreenSaverRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :timeout, :uint16,
        :length, :uint16,
        :interval, :uint16,
        :prefer_blanking, :uint8,
        :allow_exposures, :uint8,
        :pad2, [:uint8, 18]
  end

  class GetScreenSaverCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_get_screen_saver, [:pointer,:uint16,:uint16,:uint8,:uint8], GetScreenSaverCookie
  class GetScreenSaverReply < FFI::Struct
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

  attach_function :xcb_get_screen_saver_reply, [:pointer, GetScreenSaverCookie, :pointer], :pointer

        
  class ChangeHostsRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :mode, :uint8,
        :length, :uint16,
        :family, :uint8,
        :pad1, [:uint8, 1],
        :address_len, :uint16
  end

  class ChangeHostsCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_change_hosts_checked, [:pointer,:uint8,:uint8,:uint16,:uint32], ChangeHostsCookie
  attach_function :xcb_change_hosts, [:pointer,:uint8,:uint8,:uint16,:uint32], ChangeHostsCookie
  class ListHostsRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :hosts_len, :uint16,
        :length, :uint16,
        :pad1, [:uint8, 22]
  end

  class ListHostsCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_list_hosts, [:pointer,:uint16,:uint32], ListHostsCookie
  class ListHostsReply < FFI::Struct
    layout \
        :response_type, :uint8,
        :mode, :uint8,
        :sequence, :uint16,
        :length, :uint32,
        :hosts_len, :uint16,
        :pad1, [:uint8, 22]
  end

  attach_function :xcb_list_hosts_reply, [:pointer, ListHostsCookie, :pointer], :pointer

        
  class SetAccessControlRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :mode, :uint8,
        :length, :uint16
  end

  class SetAccessControlCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_set_access_control_checked, [:pointer,:uint8], SetAccessControlCookie
  attach_function :xcb_set_access_control, [:pointer,:uint8], SetAccessControlCookie
  class SetCloseDownModeRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :mode, :uint8,
        :length, :uint16
  end

  class SetCloseDownModeCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_set_close_down_mode_checked, [:pointer,:uint8], SetCloseDownModeCookie
  attach_function :xcb_set_close_down_mode, [:pointer,:uint8], SetCloseDownModeCookie
  class KillClientRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :pad1, [:uint8, 1],
        :length, :uint16,
        :resource, :uint32
  end

  class KillClientCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_kill_client_checked, [:pointer,:uint32], KillClientCookie
  attach_function :xcb_kill_client, [:pointer,:uint32], KillClientCookie
  class RotatePropertiesRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :pad1, [:uint8, 1],
        :length, :uint16,
        :window, :window_t,
        :atoms_len, :uint16,
        :delta, :int16
  end

  class RotatePropertiesCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_rotate_properties_checked, [:pointer,:window_t,:uint16,:int16,:uint32], RotatePropertiesCookie
  attach_function :xcb_rotate_properties, [:pointer,:window_t,:uint16,:int16,:uint32], RotatePropertiesCookie
  class ForceScreenSaverRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :mode, :uint8,
        :length, :uint16
  end

  class ForceScreenSaverCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_force_screen_saver_checked, [:pointer,:uint8], ForceScreenSaverCookie
  attach_function :xcb_force_screen_saver, [:pointer,:uint8], ForceScreenSaverCookie
  class SetPointerMappingRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :pad0, [:uint8, 1],
        :length, :uint16
  end

  class SetPointerMappingCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_set_pointer_mapping, [:pointer], SetPointerMappingCookie
  class SetPointerMappingReply < FFI::Struct
    layout \
        :response_type, :uint8,
        :status, :uint8,
        :sequence, :uint16,
        :length, :uint32
  end

  attach_function :xcb_set_pointer_mapping_reply, [:pointer, SetPointerMappingCookie, :pointer], :pointer

        
  class GetPointerMappingRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :pad1, [:uint8, 24],
        :length, :uint16
  end

  class GetPointerMappingCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_get_pointer_mapping, [:pointer,:uint32], GetPointerMappingCookie
  class GetPointerMappingReply < FFI::Struct
    layout \
        :response_type, :uint8,
        :map_len, :uint8,
        :sequence, :uint16,
        :length, :uint32,
        :pad1, [:uint8, 24]
  end

  attach_function :xcb_get_pointer_mapping_reply, [:pointer, GetPointerMappingCookie, :pointer], :pointer

        
  class SetModifierMappingRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :pad0, [:uint8, 1],
        :length, :uint16
  end

  class SetModifierMappingCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_set_modifier_mapping, [:pointer], SetModifierMappingCookie
  class SetModifierMappingReply < FFI::Struct
    layout \
        :response_type, :uint8,
        :status, :uint8,
        :sequence, :uint16,
        :length, :uint32
  end

  attach_function :xcb_set_modifier_mapping_reply, [:pointer, SetModifierMappingCookie, :pointer], :pointer

        
  class GetModifierMappingRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :pad1, [:uint8, 24],
        :length, :uint16
  end

  class GetModifierMappingCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_get_modifier_mapping, [:pointer,:uint32], GetModifierMappingCookie
  class GetModifierMappingReply < FFI::Struct
    layout \
        :response_type, :uint8,
        :keycodes_per_modifier, :uint8,
        :sequence, :uint16,
        :length, :uint32,
        :pad1, [:uint8, 24]
  end

  attach_function :xcb_get_modifier_mapping_reply, [:pointer, GetModifierMappingCookie, :pointer], :pointer

        
  class NoOperationRequest < FFI::Struct
    layout \
        :major_opcode, :uint8,
        :pad0, [:uint8, 1],
        :length, :uint16
  end

  class NoOperationCookie < FFI::Struct
    layout \
        :sequence, :int
  end
  attach_function :xcb_no_operation_checked, [:pointer], NoOperationCookie
  attach_function :xcb_no_operation, [:pointer], NoOperationCookie
end
