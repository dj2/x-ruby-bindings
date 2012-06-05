#
# This file auto-generated. Do not edit.
#

require 'ffi'
require 'xrb/xproto'
class Xrb
  class xkb
    extend FFI::Library
    ffi_lib 'xkb'
    MAJOR_VERSION = 1
    MINOR_VERSION = 0
    XRB_CONST_MAX_LEGAL_KEY_CODE = 255
    XRB_CONST_PER_KEY_BIT_ARRAY_SIZE = 32
    XRB_CONST_KEY_NAME_LENGTH = 4
    XRB_EVENT_TYPE_NEW_KEYBOARD_NOTIFY = 1 << 0
    XRB_EVENT_TYPE_MAP_NOTIFY = 1 << 1
    XRB_EVENT_TYPE_STATE_NOTIFY = 1 << 2
    XRB_EVENT_TYPE_CONTROLS_NOTIFY = 1 << 3
    XRB_EVENT_TYPE_INDICATOR_STATE_NOTIFY = 1 << 4
    XRB_EVENT_TYPE_INDICATOR_MAP_NOTIFY = 1 << 5
    XRB_EVENT_TYPE_NAMES_NOTIFY = 1 << 6
    XRB_EVENT_TYPE_COMPAT_MAP_NOTIFY = 1 << 7
    XRB_EVENT_TYPE_BELL_NOTIFY = 1 << 8
    XRB_EVENT_TYPE_ACTION_MESSAGE = 1 << 9
    XRB_EVENT_TYPE_ACCESS_X_NOTIFY = 1 << 10
    XRB_EVENT_TYPE_EXTENSION_DEVICE_NOTIFY = 1 << 11
    XRB_NKN_DETAIL_KEYCODES = 1 << 0
    XRB_NKN_DETAIL_GEOMETRY = 1 << 1
    XRB_NKN_DETAIL_DEVICE_ID = 1 << 2
    XRB_AXN_DETAIL_SK_PRESS = 1 << 0
    XRB_AXN_DETAIL_SK_ACCEPT = 1 << 1
    XRB_AXN_DETAIL_SK_REJECT = 1 << 2
    XRB_AXN_DETAIL_SK_RELEASE = 1 << 3
    XRB_AXN_DETAIL_BK_ACCEPT = 1 << 4
    XRB_AXN_DETAIL_BK_REJECT = 1 << 5
    XRB_AXN_DETAIL_AXK_WARNING = 1 << 6
    XRB_MAP_PART_KEY_TYPES = 1 << 0
    XRB_MAP_PART_KEY_SYMS = 1 << 1
    XRB_MAP_PART_MODIFIER_MAP = 1 << 2
    XRB_MAP_PART_EXPLICIT_COMPONENTS = 1 << 3
    XRB_MAP_PART_KEY_ACTIONS = 1 << 4
    XRB_MAP_PART_KEY_BEHAVIORS = 1 << 5
    XRB_MAP_PART_VIRTUAL_MODS = 1 << 6
    XRB_MAP_PART_VIRTUAL_MOD_MAP = 1 << 7
    XRB_SET_MAP_FLAGS_RESIZE_TYPES = 1 << 0
    XRB_SET_MAP_FLAGS_RECOMPUTE_ACTIONS = 1 << 1
    XRB_STATE_PART_MODIFIER_STATE = 1 << 0
    XRB_STATE_PART_MODIFIER_BASE = 1 << 1
    XRB_STATE_PART_MODIFIER_LATCH = 1 << 2
    XRB_STATE_PART_MODIFIER_LOCK = 1 << 3
    XRB_STATE_PART_GROUP_STATE = 1 << 4
    XRB_STATE_PART_GROUP_BASE = 1 << 5
    XRB_STATE_PART_GROUP_LATCH = 1 << 6
    XRB_STATE_PART_GROUP_LOCK = 1 << 7
    XRB_STATE_PART_COMPAT_STATE = 1 << 8
    XRB_STATE_PART_GRAB_MODS = 1 << 9
    XRB_STATE_PART_COMPAT_GRAB_MODS = 1 << 10
    XRB_STATE_PART_LOOKUP_MODS = 1 << 11
    XRB_STATE_PART_COMPAT_LOOKUP_MODS = 1 << 12
    XRB_STATE_PART_POINTER_BUTTONS = 1 << 13
    XRB_BOOL_CTRL_REPEAT_KEYS = 1 << 0
    XRB_BOOL_CTRL_SLOW_KEYS = 1 << 1
    XRB_BOOL_CTRL_BOUNCE_KEYS = 1 << 2
    XRB_BOOL_CTRL_STICKY_KEYS = 1 << 3
    XRB_BOOL_CTRL_MOUSE_KEYS = 1 << 4
    XRB_BOOL_CTRL_MOUSE_KEYS_ACCEL = 1 << 5
    XRB_BOOL_CTRL_ACCESS_X_KEYS = 1 << 6
    XRB_BOOL_CTRL_ACCESS_X_TIMEOUT_MASK = 1 << 7
    XRB_BOOL_CTRL_ACCESS_X_FEEDBACK_MASK = 1 << 8
    XRB_BOOL_CTRL_AUDIBLE_BELL_MASK = 1 << 9
    XRB_BOOL_CTRL_OVERLAY_1MASK = 1 << 10
    XRB_BOOL_CTRL_OVERLAY_2MASK = 1 << 11
    XRB_BOOL_CTRL_IGNORE_GROUP_LOCK_MASK = 1 << 12
    XRB_CONTROL_GROUPS_WRAP = 1 << 27
    XRB_CONTROL_INTERNAL_MODS = 1 << 28
    XRB_CONTROL_IGNORE_LOCK_MODS = 1 << 29
    XRB_CONTROL_PER_KEY_REPEAT = 1 << 30
    XRB_CONTROL_CONTROLS_ENABLED = 1 << 31
    XRB_AXFB_OPT_SK_PRESS_FB = 1 << 0
    XRB_AXFB_OPT_SK_ACCEPT_FB = 1 << 1
    XRB_AXFB_OPT_FEATURE_FB = 1 << 2
    XRB_AXFB_OPT_SLOW_WARN_FB = 1 << 3
    XRB_AXFB_OPT_INDICATOR_FB = 1 << 4
    XRB_AXFB_OPT_STICKY_KEYS_FB = 1 << 5
    XRB_AXFB_OPT_SK_RELEASE_FB = 1 << 6
    XRB_AXFB_OPT_SK_REJECT_FB = 1 << 7
    XRB_AXFB_OPT_BK_REJECT_FB = 1 << 8
    XRB_AXFB_OPT_DUMB_BELL = 1 << 9
    XRB_AXSK_OPT_TWO_KEYS = 1 << 6
    XRB_AXSK_OPT_LATCH_TO_LOCK = 1 << 7
    class XrbAXOption < FFI::Union
      layout \
          :fbopt, :uint16,
          :skopt, :uint16
    end

    typedef :uint16, :xrb_devicespec_t
    class XrbDeviceSpecIterator < FFI::Struct
      layout \
          :data, :xrb_window_t,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_device_spec_next, [:pointer], :void
    attach_function :xcb_device_spec_end, [:pointer], XrbGenericIterator
    XRB_LED_CLASS_RESULT_KBD_FEEDBACK_CLASS = 0
    XRB_LED_CLASS_RESULT_LED_FEEDBACK_CLASS = 4
    XRB_LED_CLASS_DFLT_XI_CLASS = 768
    XRB_LED_CLASS_ALL_XI_CLASSES = 1280
    typedef :uint16, :xrb_ledclassspec_t
    class XrbLedClassSpecIterator < FFI::Struct
      layout \
          :data, :xrb_window_t,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_led_class_spec_next, [:pointer], :void
    attach_function :xcb_led_class_spec_end, [:pointer], XrbGenericIterator
    XRB_BELL_CLASS_RESULT_KBD_FEEDBACK_CLASS = 0
    XRB_BELL_CLASS_RESULT_BELL_FEEDBACK_CLASS = 5
    XRB_BELL_CLASS_DFLT_XI_CLASS = 768
    typedef :uint16, :xrb_bellclassspec_t
    class XrbBellClassSpecIterator < FFI::Struct
      layout \
          :data, :xrb_window_t,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_bell_class_spec_next, [:pointer], :void
    attach_function :xcb_bell_class_spec_end, [:pointer], XrbGenericIterator
    XRB_ID_USE_CORE_KBD = 256
    XRB_ID_USE_CORE_PTR = 512
    XRB_ID_DFLT_XI_CLASS = 768
    XRB_ID_DFLT_XI_ID = 1024
    XRB_ID_ALL_XI_CLASS = 1280
    XRB_ID_ALL_XI_ID = 1536
    XRB_ID_XI_NONE = 65280
    typedef :uint16, :xrb_idspec_t
    class XrbIDSpecIterator < FFI::Struct
      layout \
          :data, :xrb_window_t,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_id_spec_next, [:pointer], :void
    attach_function :xcb_id_spec_end, [:pointer], XrbGenericIterator
    XRB_GROUP_1 = 0
    XRB_GROUP_2 = 1
    XRB_GROUP_3 = 2
    XRB_GROUP_4 = 3
    XRB_GROUPS_ANY = 254
    XRB_GROUPS_ALL = 255
    XRB_SET_OF_GROUP_GROUP_1 = 1 << 0
    XRB_SET_OF_GROUP_GROUP_2 = 1 << 1
    XRB_SET_OF_GROUP_GROUP_3 = 1 << 2
    XRB_SET_OF_GROUP_GROUP_4 = 1 << 3
    XRB_SET_OF_GROUPS_ANY = 1 << 7
    XRB_GROUPS_WRAP_WRAP_INTO_RANGE = 0
    XRB_GROUPS_WRAP_CLAMP_INTO_RANGE = 1 << 6
    XRB_GROUPS_WRAP_REDIRECT_INTO_RANGE = 1 << 7
    XRB_V_MODS_HIGH_15 = 1 << 7
    XRB_V_MODS_HIGH_14 = 1 << 6
    XRB_V_MODS_HIGH_13 = 1 << 5
    XRB_V_MODS_HIGH_12 = 1 << 4
    XRB_V_MODS_HIGH_11 = 1 << 3
    XRB_V_MODS_HIGH_10 = 1 << 2
    XRB_V_MODS_HIGH_9 = 1 << 1
    XRB_V_MODS_HIGH_8 = 1 << 0
    XRB_V_MODS_LOW_7 = 1 << 7
    XRB_V_MODS_LOW_6 = 1 << 6
    XRB_V_MODS_LOW_5 = 1 << 5
    XRB_V_MODS_LOW_4 = 1 << 4
    XRB_V_MODS_LOW_3 = 1 << 3
    XRB_V_MODS_LOW_2 = 1 << 2
    XRB_V_MODS_LOW_1 = 1 << 1
    XRB_V_MODS_LOW_0 = 1 << 0
    XRB_V_MOD_15 = 1 << 15
    XRB_V_MOD_14 = 1 << 14
    XRB_V_MOD_13 = 1 << 13
    XRB_V_MOD_12 = 1 << 12
    XRB_V_MOD_11 = 1 << 11
    XRB_V_MOD_10 = 1 << 10
    XRB_V_MOD_9 = 1 << 9
    XRB_V_MOD_8 = 1 << 8
    XRB_V_MOD_7 = 1 << 7
    XRB_V_MOD_6 = 1 << 6
    XRB_V_MOD_5 = 1 << 5
    XRB_V_MOD_4 = 1 << 4
    XRB_V_MOD_3 = 1 << 3
    XRB_V_MOD_2 = 1 << 2
    XRB_V_MOD_1 = 1 << 1
    XRB_V_MOD_0 = 1 << 0
    XRB_EXPLICIT_V_MOD_MAP = 1 << 7
    XRB_EXPLICIT_BEHAVIOR = 1 << 6
    XRB_EXPLICIT_AUTO_REPEAT = 1 << 5
    XRB_EXPLICIT_INTERPRET = 1 << 4
    XRB_EXPLICIT_KEY_TYPE_4 = 1 << 3
    XRB_EXPLICIT_KEY_TYPE_3 = 1 << 2
    XRB_EXPLICIT_KEY_TYPE_2 = 1 << 1
    XRB_EXPLICIT_KEY_TYPE_1 = 1 << 0
    XRB_SYM_INTERPRET_NONE_OF = 0
    XRB_SYM_INTERPRET_ANY_OF_OR_NONE = 1
    XRB_SYM_INTERPRET_ANY_OF = 2
    XRB_SYM_INTERPRET_ALL_OF = 3
    XRB_SYM_INTERPRET_EXACTLY = 4
    XRB_SYM_INTERP_MATCH_LEVEL_ONE_ONLY = 1 << 7
    XRB_SYM_INTERP_MATCH_OP_MASK = 127
    XRB_IM_FLAG_NO_EXPLICIT = 1 << 7
    XRB_IM_FLAG_NO_AUTOMATIC = 1 << 6
    XRB_IM_FLAG_LED_DRIVES_KB = 1 << 5
    XRB_IM_MODS_WHICH_USE_COMPAT = 1 << 4
    XRB_IM_MODS_WHICH_USE_EFFECTIVE = 1 << 3
    XRB_IM_MODS_WHICH_USE_LOCKED = 1 << 2
    XRB_IM_MODS_WHICH_USE_LATCHED = 1 << 1
    XRB_IM_MODS_WHICH_USE_BASE = 1 << 0
    XRB_IM_GROUPS_WHICH_USE_COMPAT = 1 << 4
    XRB_IM_GROUPS_WHICH_USE_EFFECTIVE = 1 << 3
    XRB_IM_GROUPS_WHICH_USE_LOCKED = 1 << 2
    XRB_IM_GROUPS_WHICH_USE_LATCHED = 1 << 1
    XRB_IM_GROUPS_WHICH_USE_BASE = 1 << 0
    class XrbIndicatorMap < FFI::Struct
      layout \
          :flags, :uint8,
          :whichGroups, :uint8,
          :groups, :uint8,
          :whichMods, :uint8,
          :mods, :uint8,
          :realMods, :uint8,
          :vmods, :uint16,
          :ctrls, :uint32
    end

    class XrbIndicatorMapIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_indicator_map_next, [:pointer], :void
    attach_function :xcb_indicator_map_end, [:pointer], XrbGenericIterator
    XRB_CM_DETAIL_SYM_INTERP = 1 << 0
    XRB_CM_DETAIL_GROUP_COMPAT = 1 << 1
    XRB_NAME_DETAIL_KEYCODES = 1 << 0
    XRB_NAME_DETAIL_GEOMETRY = 1 << 1
    XRB_NAME_DETAIL_SYMBOLS = 1 << 2
    XRB_NAME_DETAIL_PHYS_SYMBOLS = 1 << 3
    XRB_NAME_DETAIL_TYPES = 1 << 4
    XRB_NAME_DETAIL_COMPAT = 1 << 5
    XRB_NAME_DETAIL_KEY_TYPE_NAMES = 1 << 6
    XRB_NAME_DETAIL_KT_LEVEL_NAMES = 1 << 7
    XRB_NAME_DETAIL_INDICATOR_NAMES = 1 << 8
    XRB_NAME_DETAIL_KEY_NAMES = 1 << 9
    XRB_NAME_DETAIL_KEY_ALIASES = 1 << 10
    XRB_NAME_DETAIL_VIRTUAL_MOD_NAMES = 1 << 11
    XRB_NAME_DETAIL_GROUP_NAMES = 1 << 12
    XRB_NAME_DETAIL_RG_NAMES = 1 << 13
    XRB_GBN_DETAIL_TYPES = 1 << 0
    XRB_GBN_DETAIL_COMPAT_MAP = 1 << 1
    XRB_GBN_DETAIL_CLIENT_SYMBOLS = 1 << 2
    XRB_GBN_DETAIL_SERVER_SYMBOLS = 1 << 3
    XRB_GBN_DETAIL_INDICATOR_MAPS = 1 << 4
    XRB_GBN_DETAIL_KEY_NAMES = 1 << 5
    XRB_GBN_DETAIL_GEOMETRY = 1 << 6
    XRB_GBN_DETAIL_OTHER_NAMES = 1 << 7
    XRB_XI_FEATURE_KEYBOARDS = 1 << 0
    XRB_XI_FEATURE_BUTTON_ACTIONS = 1 << 1
    XRB_XI_FEATURE_INDICATOR_NAMES = 1 << 2
    XRB_XI_FEATURE_INDICATOR_MAPS = 1 << 3
    XRB_XI_FEATURE_INDICATOR_STATE = 1 << 4
    XRB_PER_CLIENT_FLAG_DETECTABLE_AUTO_REPEAT = 1 << 0
    XRB_PER_CLIENT_FLAG_GRABS_USE_XKB_STATE = 1 << 1
    XRB_PER_CLIENT_FLAG_AUTO_RESET_CONTROLS = 1 << 2
    XRB_PER_CLIENT_FLAG_LOOKUP_STATE_WHEN_GRABBED = 1 << 3
    XRB_PER_CLIENT_FLAG_SEND_EVENT_USES_XKB_STATE = 1 << 4
    class XrbModDef < FFI::Struct
      layout \
          :mask, :uint8,
          :realMods, :uint8,
          :vmods, :uint16
    end

    class XrbModDefIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_mod_def_next, [:pointer], :void
    attach_function :xcb_mod_def_end, [:pointer], XrbGenericIterator
    class XrbKeyName < FFI::Struct
      layout \
          :name_len, [:uint32 , 4]
    end

    class XrbKeyNameIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_key_name_next, [:pointer], :void
    attach_function :xcb_key_name_end, [:pointer], XrbGenericIterator
    attach_function :xcb_key_name_sizeof, [:pointer], :int
    attach_function :xcb_key_name_name, [:pointer], :pointer
    attach_function :xcb_key_name_name_length, [:pointer], :int
    class XrbKeyAlias < FFI::Struct
      layout \
          :real_len, [:uint32 , 4],
          :alias_len, [:uint32 , 4]
    end

    class XrbKeyAliasIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_key_alias_next, [:pointer], :void
    attach_function :xcb_key_alias_end, [:pointer], XrbGenericIterator
    attach_function :xcb_key_alias_sizeof, [:pointer], :int
    attach_function :xcb_key_alias_real, [:pointer], :pointer
    attach_function :xcb_key_alias_real_length, [:pointer], :int
    attach_function :xcb_key_alias_alias, [:pointer], :pointer
    attach_function :xcb_key_alias_alias_length, [:pointer], :int
    class XrbCountedString8 < FFI::Struct
      layout \
          :length, :uint8
    end

    class XrbCountedString8Iterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_counted_string_8_next, [:pointer], :void
    attach_function :xcb_counted_string_8_end, [:pointer], XrbGenericIterator
    attach_function :xcb_counted_string_8_sizeof, [:pointer], :int
    attach_function :xcb_counted_string_8_string, [:pointer], :pointer
    attach_function :xcb_counted_string_8_string_length, [:pointer], :int
    class XrbCountedString16 < FFI::Struct
      layout \
          :length, :uint16,
          :pad1, [:uint8, 1]
    end

    class XrbCountedString16Iterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_counted_string_16_next, [:pointer], :void
    attach_function :xcb_counted_string_16_end, [:pointer], XrbGenericIterator
    attach_function :xcb_counted_string_16_sizeof, [:pointer], :int
    attach_function :xcb_counted_string_16_string, [:pointer], :pointer
    attach_function :xcb_counted_string_16_string_length, [:pointer], :int
    class XrbKTMapEntry < FFI::Struct
      layout \
          :active, :bool,
          :level, :uint8,
          :mods_mask, :uint8,
          :mods_mods, :uint8,
          :mods_vmods, :uint16,
          :pad1, [:uint8, 2]
    end

    class XrbKTMapEntryIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_kt_map_entry_next, [:pointer], :void
    attach_function :xcb_kt_map_entry_end, [:pointer], XrbGenericIterator
    class XrbKeyType < FFI::Struct
      layout \
          :mods_mask, :uint8,
          :mods_mods, :uint8,
          :mods_vmods, :uint16,
          :numLevels, :uint8,
          :nMapEntries, :uint8,
          :hasPreserve, :bool,
          :pad1, [:uint8, 1]
    end

    class XrbKeyTypeIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_key_type_next, [:pointer], :void
    attach_function :xcb_key_type_end, [:pointer], XrbGenericIterator
    attach_function :xcb_key_type_sizeof, [:pointer], :int
    attach_function :xcb_key_type_map_iterator, [:pointer], XrbKeyTypeIterator
    attach_function :xcb_key_type_map_length, [:pointer], :int
    attach_function :xcb_key_type_preserve_iterator, [:pointer], XrbKeyTypeIterator
    attach_function :xcb_key_type_preserve_length, [:pointer], :int
    class XrbKeySymMap < FFI::Struct
      layout \
          :kt_index_len, [:uint32 , 4],
          :groupInfo, :uint8,
          :width, :uint8,
          :nSyms, :uint16
    end

    class XrbKeySymMapIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_key_sym_map_next, [:pointer], :void
    attach_function :xcb_key_sym_map_end, [:pointer], XrbGenericIterator
    attach_function :xcb_key_sym_map_sizeof, [:pointer], :int
    attach_function :xcb_key_sym_map_kt_index, [:pointer], :pointer
    attach_function :xcb_key_sym_map_kt_index_length, [:pointer], :int
    attach_function :xcb_key_sym_map_syms, [:pointer], :pointer
    attach_function :xcb_key_sym_map_syms_length, [:pointer], :int
    class XrbCommonBehavior < FFI::Struct
      layout \
          :type, :uint8,
          :data, :uint8
    end

    class XrbCommonBehaviorIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_common_behavior_next, [:pointer], :void
    attach_function :xcb_common_behavior_end, [:pointer], XrbGenericIterator
    class XrbDefaultBehavior < FFI::Struct
      layout \
          :type, :uint8,
          :pad1, [:uint8, 1]
    end

    class XrbDefaultBehaviorIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_default_behavior_next, [:pointer], :void
    attach_function :xcb_default_behavior_end, [:pointer], XrbGenericIterator
    typedef XrbDefaultBehavior, :xrb_lockbehavior_t
    class XrbLockBehaviorIterator < FFI::Struct
      layout \
          :data, :xrb_window_t,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_lock_behavior_next, [:pointer], :void
    attach_function :xcb_lock_behavior_end, [:pointer], XrbGenericIterator
    class XrbRadioGroupBehavior < FFI::Struct
      layout \
          :type, :uint8,
          :group, :uint8
    end

    class XrbRadioGroupBehaviorIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_radio_group_behavior_next, [:pointer], :void
    attach_function :xcb_radio_group_behavior_end, [:pointer], XrbGenericIterator
    class XrbOverlay1Behavior < FFI::Struct
      layout \
          :type, :uint8,
          :key, :xrb_keycode_t
    end

    class XrbOverlay1BehaviorIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_overlay_1behavior_next, [:pointer], :void
    attach_function :xcb_overlay_1behavior_end, [:pointer], XrbGenericIterator
    class XrbOverlay2Behavior < FFI::Struct
      layout \
          :type, :uint8,
          :key, :uint8
    end

    class XrbOverlay2BehaviorIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_overlay_2behavior_next, [:pointer], :void
    attach_function :xcb_overlay_2behavior_end, [:pointer], XrbGenericIterator
    typedef :xrb_lockbehavior_t, :xrb_permamentlockbehavior_t
    class XrbPermamentLockBehaviorIterator < FFI::Struct
      layout \
          :data, :xrb_window_t,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_permament_lock_behavior_next, [:pointer], :void
    attach_function :xcb_permament_lock_behavior_end, [:pointer], XrbGenericIterator
    typedef XrbRadioGroupBehavior, :xrb_permamentradiogroupbehavior_t
    class XrbPermamentRadioGroupBehaviorIterator < FFI::Struct
      layout \
          :data, :xrb_window_t,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_permament_radio_group_behavior_next, [:pointer], :void
    attach_function :xcb_permament_radio_group_behavior_end, [:pointer], XrbGenericIterator
    typedef XrbOverlay1Behavior, :xrb_permamentoverlay1behavior_t
    class XrbPermamentOverlay1BehaviorIterator < FFI::Struct
      layout \
          :data, :xrb_window_t,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_permament_overlay_1behavior_next, [:pointer], :void
    attach_function :xcb_permament_overlay_1behavior_end, [:pointer], XrbGenericIterator
    typedef XrbOverlay2Behavior, :xrb_permamentoverlay2behavior_t
    class XrbPermamentOverlay2BehaviorIterator < FFI::Struct
      layout \
          :data, :xrb_window_t,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_permament_overlay_2behavior_next, [:pointer], :void
    attach_function :xcb_permament_overlay_2behavior_end, [:pointer], XrbGenericIterator
    class XrbBehavior < FFI::Union
      layout \
          :common, XrbCommonBehavior,
          :default, XrbDefaultBehavior,
          :lock, :xrb_lockbehavior_t,
          :radioGroup, XrbRadioGroupBehavior,
          :overlay1, XrbOverlay1Behavior,
          :overlay2, XrbOverlay2Behavior,
          :permamentLock, :xrb_permamentlockbehavior_t,
          :permamentRadioGroup, :xrb_permamentradiogroupbehavior_t,
          :permamentOverlay1, :xrb_permamentoverlay1behavior_t,
          :permamentOverlay2, :xrb_permamentoverlay2behavior_t,
          :type, :uint8
    end

    XRB_BEHAVIOR_TYPE_DEFAULT = 0
    XRB_BEHAVIOR_TYPE_LOCK = 1
    XRB_BEHAVIOR_TYPE_RADIO_GROUP = 2
    XRB_BEHAVIOR_TYPE_OVERLAY_1 = 3
    XRB_BEHAVIOR_TYPE_OVERLAY_2 = 4
    XRB_BEHAVIOR_TYPE_PERMAMENT_LOCK = 129
    XRB_BEHAVIOR_TYPE_PERMAMENT_RADIO_GROUP = 130
    XRB_BEHAVIOR_TYPE_PERMAMENT_OVERLAY_1 = 131
    XRB_BEHAVIOR_TYPE_PERMAMENT_OVERLAY_2 = 132
    class XrbSetBehavior < FFI::Struct
      layout \
          :keycode, :xrb_keycode_t,
          :behavior, XrbBehavior,
          :pad1, [:uint8, 1]
    end

    class XrbSetBehaviorIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_set_behavior_next, [:pointer], :void
    attach_function :xcb_set_behavior_end, [:pointer], XrbGenericIterator
    class XrbSetExplicit < FFI::Struct
      layout \
          :keycode, :xrb_keycode_t,
          :explicit, :uint8
    end

    class XrbSetExplicitIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_set_explicit_next, [:pointer], :void
    attach_function :xcb_set_explicit_end, [:pointer], XrbGenericIterator
    class XrbKeyModMap < FFI::Struct
      layout \
          :keycode, :xrb_keycode_t,
          :mods, :uint8
    end

    class XrbKeyModMapIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_key_mod_map_next, [:pointer], :void
    attach_function :xcb_key_mod_map_end, [:pointer], XrbGenericIterator
    class XrbKeyVModMap < FFI::Struct
      layout \
          :keycode, :xrb_keycode_t,
          :pad1, [:uint8, 1],
          :vmods, :uint16
    end

    class XrbKeyVModMapIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_key_v_mod_map_next, [:pointer], :void
    attach_function :xcb_key_v_mod_map_end, [:pointer], XrbGenericIterator
    class XrbKTSetMapEntry < FFI::Struct
      layout \
          :level, :uint8,
          :realMods, :uint8,
          :virtualMods, :uint16
    end

    class XrbKTSetMapEntryIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_kt_set_map_entry_next, [:pointer], :void
    attach_function :xcb_kt_set_map_entry_end, [:pointer], XrbGenericIterator
    class XrbSetKeyType < FFI::Struct
      layout \
          :mask, :uint8,
          :realMods, :uint8,
          :virtualMods, :uint16,
          :numLevels, :uint8,
          :nMapEntries, :uint8,
          :preserve, :bool,
          :pad1, [:uint8, 1]
    end

    class XrbSetKeyTypeIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_set_key_type_next, [:pointer], :void
    attach_function :xcb_set_key_type_end, [:pointer], XrbGenericIterator
    attach_function :xcb_set_key_type_sizeof, [:pointer], :int
    attach_function :xcb_set_key_type_entries_iterator, [:pointer], XrbSetKeyTypeIterator
    attach_function :xcb_set_key_type_entries_length, [:pointer], :int
    attach_function :xcb_set_key_type_preserve_entries_iterator, [:pointer], XrbSetKeyTypeIterator
    attach_function :xcb_set_key_type_preserve_entries_length, [:pointer], :int
    typedef :uint8, :xrb_string8_t
    class XrbString8Iterator < FFI::Struct
      layout \
          :data, :xrb_window_t,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_string8_next, [:pointer], :void
    attach_function :xcb_string8_end, [:pointer], XrbGenericIterator
    class XrbProperty < FFI::Struct
      layout \
          :nameLength, :uint16,
          :valueLength, :uint16
    end

    class XrbPropertyIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_property_next, [:pointer], :void
    attach_function :xcb_property_end, [:pointer], XrbGenericIterator
    attach_function :xcb_property_sizeof, [:pointer], :int
    attach_function :xcb_property_name, [:pointer], :pointer
    attach_function :xcb_property_name_length, [:pointer], :int
    attach_function :xcb_property_value, [:pointer], :pointer
    attach_function :xcb_property_value_length, [:pointer], :int
    class XrbOutline < FFI::Struct
      layout \
          :nPoints, :uint8,
          :cornerRadius, :uint8,
          :pad1, [:uint8, 2]
    end

    class XrbOutlineIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_outline_next, [:pointer], :void
    attach_function :xcb_outline_end, [:pointer], XrbGenericIterator
    attach_function :xcb_outline_sizeof, [:pointer], :int
    attach_function :xcb_outline_points_iterator, [:pointer], XrbOutlineIterator
    attach_function :xcb_outline_points_length, [:pointer], :int
    class XrbShape < FFI::Struct
      layout \
          :name, :xrb_atom_t,
          :nOutlines, :uint8,
          :primaryNdx, :uint8,
          :approxNdx, :uint8,
          :pad1, [:uint8, 1]
    end

    class XrbShapeIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_shape_next, [:pointer], :void
    attach_function :xcb_shape_end, [:pointer], XrbGenericIterator
    attach_function :xcb_shape_sizeof, [:pointer], :int
    attach_function :xcb_shape_outlines_iterator, [:pointer], XrbShapeIterator
    attach_function :xcb_shape_outlines_length, [:pointer], :int
    class XrbKey < FFI::Struct
      layout \
          :name_len, [:uint32 , 4],
          :gap, :int16,
          :shapeNdx, :uint8,
          :colorNdx, :uint8
    end

    class XrbKeyIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_key_next, [:pointer], :void
    attach_function :xcb_key_end, [:pointer], XrbGenericIterator
    attach_function :xcb_key_sizeof, [:pointer], :int
    attach_function :xcb_key_name, [:pointer], :pointer
    attach_function :xcb_key_name_length, [:pointer], :int
    class XrbOverlayKey < FFI::Struct
      layout \
          :over_len, [:uint32 , 4],
          :under_len, [:uint32 , 4]
    end

    class XrbOverlayKeyIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_overlay_key_next, [:pointer], :void
    attach_function :xcb_overlay_key_end, [:pointer], XrbGenericIterator
    attach_function :xcb_overlay_key_sizeof, [:pointer], :int
    attach_function :xcb_overlay_key_over, [:pointer], :pointer
    attach_function :xcb_overlay_key_over_length, [:pointer], :int
    attach_function :xcb_overlay_key_under, [:pointer], :pointer
    attach_function :xcb_overlay_key_under_length, [:pointer], :int
    class XrbOverlayRow < FFI::Struct
      layout \
          :rowUnder, :uint8,
          :nKeys, :uint8,
          :pad1, [:uint8, 2]
    end

    class XrbOverlayRowIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_overlay_row_next, [:pointer], :void
    attach_function :xcb_overlay_row_end, [:pointer], XrbGenericIterator
    attach_function :xcb_overlay_row_sizeof, [:pointer], :int
    attach_function :xcb_overlay_row_keys_iterator, [:pointer], XrbOverlayRowIterator
    attach_function :xcb_overlay_row_keys_length, [:pointer], :int
    class XrbOverlay < FFI::Struct
      layout \
          :name, :xrb_atom_t,
          :nRows, :uint8,
          :pad1, [:uint8, 3]
    end

    class XrbOverlayIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_overlay_next, [:pointer], :void
    attach_function :xcb_overlay_end, [:pointer], XrbGenericIterator
    attach_function :xcb_overlay_sizeof, [:pointer], :int
    attach_function :xcb_overlay_rows_iterator, [:pointer], XrbOverlayIterator
    attach_function :xcb_overlay_rows_length, [:pointer], :int
    class XrbRow < FFI::Struct
      layout \
          :top, :int16,
          :left, :int16,
          :nKeys, :uint8,
          :vertical, :bool,
          :pad1, [:uint8, 2]
    end

    class XrbRowIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_row_next, [:pointer], :void
    attach_function :xcb_row_end, [:pointer], XrbGenericIterator
    attach_function :xcb_row_sizeof, [:pointer], :int
    attach_function :xcb_row_keys_iterator, [:pointer], XrbRowIterator
    attach_function :xcb_row_keys_length, [:pointer], :int
    XRB_DOODAD_TYPE_OUTLINE = 1
    XRB_DOODAD_TYPE_SOLID = 2
    XRB_DOODAD_TYPE_TEXT = 3
    XRB_DOODAD_TYPE_INDICATOR = 4
    XRB_DOODAD_TYPE_LOGO = 5
    class XrbCommonDoodad < FFI::Struct
      layout \
          :name, :xrb_atom_t,
          :type, :uint8,
          :priority, :uint8,
          :top, :int16,
          :left, :int16,
          :angle, :int16
    end

    class XrbCommonDoodadIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_common_doodad_next, [:pointer], :void
    attach_function :xcb_common_doodad_end, [:pointer], XrbGenericIterator
    class XrbShapeDoodad < FFI::Struct
      layout \
          :name, :xrb_atom_t,
          :type, :uint8,
          :priority, :uint8,
          :top, :int16,
          :left, :int16,
          :angle, :int16,
          :colorNdx, :uint8,
          :shapeNdx, :uint8,
          :pad1, [:uint8, 6]
    end

    class XrbShapeDoodadIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_shape_doodad_next, [:pointer], :void
    attach_function :xcb_shape_doodad_end, [:pointer], XrbGenericIterator
    class XrbTextDoodad < FFI::Struct
      layout \
          :name, :xrb_atom_t,
          :type, :uint8,
          :priority, :uint8,
          :top, :int16,
          :left, :int16,
          :angle, :int16,
          :width, :uint16,
          :height, :uint16,
          :colorNdx, :uint8,
          :pad1, [:uint8, 3],
          :text, XrbCountedString16,
          :font, XrbCountedString16
    end

    class XrbTextDoodadIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_text_doodad_next, [:pointer], :void
    attach_function :xcb_text_doodad_end, [:pointer], XrbGenericIterator
    class XrbIndicatorDoodad < FFI::Struct
      layout \
          :name, :xrb_atom_t,
          :type, :uint8,
          :priority, :uint8,
          :top, :int16,
          :left, :int16,
          :angle, :int16,
          :shapeNdx, :uint8,
          :onColorNdx, :uint8,
          :offColorNdx, :uint8,
          :pad1, [:uint8, 5]
    end

    class XrbIndicatorDoodadIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_indicator_doodad_next, [:pointer], :void
    attach_function :xcb_indicator_doodad_end, [:pointer], XrbGenericIterator
    class XrbLogoDoodad < FFI::Struct
      layout \
          :name, :xrb_atom_t,
          :type, :uint8,
          :priority, :uint8,
          :top, :int16,
          :left, :int16,
          :angle, :int16,
          :colorNdx, :uint8,
          :shapeNdx, :uint8,
          :pad1, [:uint8, 6],
          :logoName, XrbCountedString16
    end

    class XrbLogoDoodadIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_logo_doodad_next, [:pointer], :void
    attach_function :xcb_logo_doodad_end, [:pointer], XrbGenericIterator
    class XrbDoodad < FFI::Union
      layout \
          :common, XrbCommonDoodad,
          :shape, XrbShapeDoodad,
          :text, XrbTextDoodad,
          :indicator, XrbIndicatorDoodad,
          :logo, XrbLogoDoodad
    end

    class XrbSection < FFI::Struct
      layout \
          :name, :xrb_atom_t,
          :top, :int16,
          :left, :int16,
          :width, :uint16,
          :height, :uint16,
          :angle, :int16,
          :priority, :uint8,
          :nRows, :uint8,
          :nDoodads, :uint8,
          :nOverlays, :uint8,
          :pad1, [:uint8, 2]
    end

    class XrbSectionIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_section_next, [:pointer], :void
    attach_function :xcb_section_end, [:pointer], XrbGenericIterator
    attach_function :xcb_section_sizeof, [:pointer], :int
    attach_function :xcb_section_rows_iterator, [:pointer], XrbSectionIterator
    attach_function :xcb_section_rows_length, [:pointer], :int
    attach_function :xcb_section_doodads, [:pointer], :pointer
    attach_function :xcb_section_doodads_length, [:pointer], :int
    attach_function :xcb_section_overlays_iterator, [:pointer], XrbSectionIterator
    attach_function :xcb_section_overlays_length, [:pointer], :int
    class XrbListing < FFI::Struct
      layout \
          :flags, :uint16,
          :length, :uint16
    end

    class XrbListingIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_listing_next, [:pointer], :void
    attach_function :xcb_listing_end, [:pointer], XrbGenericIterator
    attach_function :xcb_listing_sizeof, [:pointer], :int
    attach_function :xcb_listing_string, [:pointer], :pointer
    attach_function :xcb_listing_string_length, [:pointer], :int
    class XrbDeviceLedInfo < FFI::Struct
      layout \
          :ledClass, :xrb_ledclassspec_t,
          :ledID, :xrb_idspec_t,
          :namesPresent, :uint32,
          :mapsPresent, :uint32,
          :physIndicators, :uint32,
          :state, :uint32
    end

    class XrbDeviceLedInfoIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_device_led_info_next, [:pointer], :void
    attach_function :xcb_device_led_info_end, [:pointer], XrbGenericIterator
    attach_function :xcb_device_led_info_sizeof, [:pointer], :int
    attach_function :xcb_device_led_info_names, [:pointer], :pointer
    attach_function :xcb_device_led_info_names_length, [:pointer], :int
    attach_function :xcb_device_led_info_maps_iterator, [:pointer], XrbDeviceLedInfoIterator
    attach_function :xcb_device_led_info_maps_length, [:pointer], :int
    XRB_ERROR_BAD_DEVICE = 255
    XRB_ERROR_BAD_CLASS = 254
    XRB_ERROR_BAD_ID = 253
    XRB_SA_CLEAR_LOCKS = 1 << 0
    XRB_SA_LATCH_TO_LOCK = 1 << 1
    XRB_SA_USE_MOD_MAP_MODS = 1 << 2
    XRB_SA_GROUP_ABSOLUTE = 1 << 2
    XRB_SA_TYPE_NO_ACTION = 0
    XRB_SA_TYPE_SET_MODS = 1
    XRB_SA_TYPE_LATCH_MODS = 2
    XRB_SA_TYPE_LOCK_MODS = 3
    XRB_SA_TYPE_SET_GROUP = 4
    XRB_SA_TYPE_LATCH_GROUP = 5
    XRB_SA_TYPE_LOCK_GROUP = 6
    XRB_SA_TYPE_MOVE_PTR = 7
    XRB_SA_TYPE_PTR_BTN = 8
    XRB_SA_TYPE_LOCK_PTR_BTN = 9
    XRB_SA_TYPE_SET_PTR_DFLT = 10
    XRB_SA_TYPE_ISO_LOCK = 11
    XRB_SA_TYPE_TERMINATE = 12
    XRB_SA_TYPE_SWITCH_SCREEN = 13
    XRB_SA_TYPE_SET_CONTROLS = 14
    XRB_SA_TYPE_LOCK_CONTROLS = 15
    XRB_SA_TYPE_ACTION_MESSAGE = 16
    XRB_SA_TYPE_REDIRECT_KEY = 17
    XRB_SA_TYPE_DEVICE_BTN = 18
    XRB_SA_TYPE_LOCK_DEVICE_BTN = 19
    XRB_SA_TYPE_DEVICE_VALUATOR = 20
    class XrbSANoAction < FFI::Struct
      layout \
          :type, :uint8,
          :pad1, [:uint8, 7]
    end

    class XrbSANoActionIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_sa_no_action_next, [:pointer], :void
    attach_function :xcb_sa_no_action_end, [:pointer], XrbGenericIterator
    class XrbSASetMods < FFI::Struct
      layout \
          :type, :uint8,
          :flags, :uint8,
          :mask, :uint8,
          :realMods, :uint8,
          :vmodsHigh, :uint8,
          :vmodsLow, :uint8,
          :pad1, [:uint8, 2]
    end

    class XrbSASetModsIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_sa_set_mods_next, [:pointer], :void
    attach_function :xcb_sa_set_mods_end, [:pointer], XrbGenericIterator
    typedef XrbSASetMods, :xrb_salatchmods_t
    class XrbSALatchModsIterator < FFI::Struct
      layout \
          :data, :xrb_window_t,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_sa_latch_mods_next, [:pointer], :void
    attach_function :xcb_sa_latch_mods_end, [:pointer], XrbGenericIterator
    typedef XrbSASetMods, :xrb_salockmods_t
    class XrbSALockModsIterator < FFI::Struct
      layout \
          :data, :xrb_window_t,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_sa_lock_mods_next, [:pointer], :void
    attach_function :xcb_sa_lock_mods_end, [:pointer], XrbGenericIterator
    class XrbSASetGroup < FFI::Struct
      layout \
          :type, :uint8,
          :flags, :uint8,
          :group, :int8,
          :pad1, [:uint8, 5]
    end

    class XrbSASetGroupIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_sa_set_group_next, [:pointer], :void
    attach_function :xcb_sa_set_group_end, [:pointer], XrbGenericIterator
    typedef XrbSASetGroup, :xrb_salatchgroup_t
    class XrbSALatchGroupIterator < FFI::Struct
      layout \
          :data, :xrb_window_t,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_sa_latch_group_next, [:pointer], :void
    attach_function :xcb_sa_latch_group_end, [:pointer], XrbGenericIterator
    typedef XrbSASetGroup, :xrb_salockgroup_t
    class XrbSALockGroupIterator < FFI::Struct
      layout \
          :data, :xrb_window_t,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_sa_lock_group_next, [:pointer], :void
    attach_function :xcb_sa_lock_group_end, [:pointer], XrbGenericIterator
    XRB_SA_MOVE_PTR_FLAG_NO_ACCELERATION = 1 << 0
    XRB_SA_MOVE_PTR_FLAG_MOVE_ABSOLUTE_X = 1 << 1
    XRB_SA_MOVE_PTR_FLAG_MOVE_ABSOLUTE_Y = 1 << 2
    class XrbSAMovePtr < FFI::Struct
      layout \
          :type, :uint8,
          :flags, :uint8,
          :xHigh, :int8,
          :xLow, :uint8,
          :yHigh, :int8,
          :yLow, :uint8,
          :pad1, [:uint8, 2]
    end

    class XrbSAMovePtrIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_sa_move_ptr_next, [:pointer], :void
    attach_function :xcb_sa_move_ptr_end, [:pointer], XrbGenericIterator
    class XrbSAPtrBtn < FFI::Struct
      layout \
          :type, :uint8,
          :flags, :uint8,
          :count, :uint8,
          :button, :uint8,
          :pad1, [:uint8, 4]
    end

    class XrbSAPtrBtnIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_sa_ptr_btn_next, [:pointer], :void
    attach_function :xcb_sa_ptr_btn_end, [:pointer], XrbGenericIterator
    class XrbSALockPtrBtn < FFI::Struct
      layout \
          :type, :uint8,
          :flags, :uint8,
          :pad1, [:uint8, 1],
          :button, :uint8,
          :pad2, [:uint8, 4]
    end

    class XrbSALockPtrBtnIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_sa_lock_ptr_btn_next, [:pointer], :void
    attach_function :xcb_sa_lock_ptr_btn_end, [:pointer], XrbGenericIterator
    XRB_SA_SET_PTR_DFLT_FLAG_DFLT_BTN_ABSOLUTE = 1 << 1
    XRB_SA_SET_PTR_DFLT_FLAG_AFFECT_DFLT_BUTTON = 1 << 0
    class XrbSASetPtrDflt < FFI::Struct
      layout \
          :type, :uint8,
          :flags, :uint8,
          :affect, :uint8,
          :value, :int8,
          :pad1, [:uint8, 4]
    end

    class XrbSASetPtrDfltIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_sa_set_ptr_dflt_next, [:pointer], :void
    attach_function :xcb_sa_set_ptr_dflt_end, [:pointer], XrbGenericIterator
    XRB_SA_ISO_LOCK_FLAG_NO_LOCK = 1 << 0
    XRB_SA_ISO_LOCK_FLAG_NO_UNLOCK = 1 << 1
    XRB_SA_ISO_LOCK_FLAG_USE_MOD_MAP_MODS = 1 << 2
    XRB_SA_ISO_LOCK_FLAG_GROUP_ABSOLUTE = 1 << 2
    XRB_SA_ISO_LOCK_FLAG_ISO_DFLT_IS_GROUP = 1 << 3
    XRB_SA_ISO_LOCK_NO_AFFECT_CTRLS = 1 << 3
    XRB_SA_ISO_LOCK_NO_AFFECT_PTR = 1 << 4
    XRB_SA_ISO_LOCK_NO_AFFECT_GROUP = 1 << 5
    XRB_SA_ISO_LOCK_NO_AFFECT_MODS = 1 << 6
    class XrbSAIsoLock < FFI::Struct
      layout \
          :type, :uint8,
          :flags, :uint8,
          :mask, :uint8,
          :realMods, :uint8,
          :group, :int8,
          :affect, :uint8,
          :vmodsHigh, :uint8,
          :vmodsLow, :uint8
    end

    class XrbSAIsoLockIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_sa_iso_lock_next, [:pointer], :void
    attach_function :xcb_sa_iso_lock_end, [:pointer], XrbGenericIterator
    class XrbSATerminate < FFI::Struct
      layout \
          :type, :uint8,
          :pad1, [:uint8, 7]
    end

    class XrbSATerminateIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_sa_terminate_next, [:pointer], :void
    attach_function :xcb_sa_terminate_end, [:pointer], XrbGenericIterator
    XRB_SWITCH_SCREEN_FLAG_APPLICATION = 1 << 0
    XRB_SWITCH_SCREEN_FLAG_ABSOLUTE = 1 << 2
    class XrbSASwitchScreen < FFI::Struct
      layout \
          :type, :uint8,
          :flags, :uint8,
          :newScreen, :int8,
          :pad1, [:uint8, 5]
    end

    class XrbSASwitchScreenIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_sa_switch_screen_next, [:pointer], :void
    attach_function :xcb_sa_switch_screen_end, [:pointer], XrbGenericIterator
    XRB_BOOL_CTRLS_HIGH_ACCESS_X_FEEDBACK = 1 << 0
    XRB_BOOL_CTRLS_HIGH_AUDIBLE_BELL = 1 << 1
    XRB_BOOL_CTRLS_HIGH_OVERLAY_1 = 1 << 2
    XRB_BOOL_CTRLS_HIGH_OVERLAY_2 = 1 << 3
    XRB_BOOL_CTRLS_HIGH_IGNORE_GROUP_LOCK = 1 << 4
    XRB_BOOL_CTRLS_LOW_REPEAT_KEYS = 1 << 0
    XRB_BOOL_CTRLS_LOW_SLOW_KEYS = 1 << 1
    XRB_BOOL_CTRLS_LOW_BOUNCE_KEYS = 1 << 2
    XRB_BOOL_CTRLS_LOW_STICKY_KEYS = 1 << 3
    XRB_BOOL_CTRLS_LOW_MOUSE_KEYS = 1 << 4
    XRB_BOOL_CTRLS_LOW_MOUSE_KEYS_ACCEL = 1 << 5
    XRB_BOOL_CTRLS_LOW_ACCESS_X_KEYS = 1 << 6
    XRB_BOOL_CTRLS_LOW_ACCESS_X_TIMEOUT = 1 << 7
    class XrbSASetControls < FFI::Struct
      layout \
          :type, :uint8,
          :pad1, [:uint8, 3],
          :boolCtrlsHigh, :uint8,
          :boolCtrlsLow, :uint8,
          :pad2, [:uint8, 2]
    end

    class XrbSASetControlsIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_sa_set_controls_next, [:pointer], :void
    attach_function :xcb_sa_set_controls_end, [:pointer], XrbGenericIterator
    typedef XrbSASetControls, :xrb_salockcontrols_t
    class XrbSALockControlsIterator < FFI::Struct
      layout \
          :data, :xrb_window_t,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_sa_lock_controls_next, [:pointer], :void
    attach_function :xcb_sa_lock_controls_end, [:pointer], XrbGenericIterator
    XRB_ACTION_MESSAGE_FLAG_ON_PRESS = 1 << 0
    XRB_ACTION_MESSAGE_FLAG_ON_RELEASE = 1 << 1
    XRB_ACTION_MESSAGE_FLAG_GEN_KEY_EVENT = 1 << 2
    class XrbSAActionMessage < FFI::Struct
      layout \
          :type, :uint8,
          :flags, :uint8,
          :message_len, [:uint32 , 6]
    end

    class XrbSAActionMessageIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_sa_action_message_next, [:pointer], :void
    attach_function :xcb_sa_action_message_end, [:pointer], XrbGenericIterator
    attach_function :xcb_sa_action_message_sizeof, [:pointer], :int
    attach_function :xcb_sa_action_message_message, [:pointer], :pointer
    attach_function :xcb_sa_action_message_message_length, [:pointer], :int
    class XrbSARedirectKey < FFI::Struct
      layout \
          :type, :uint8,
          :newkey, :xrb_keycode_t,
          :mask, :uint8,
          :realModifiers, :uint8,
          :vmodsMaskHigh, :uint8,
          :vmodsMaskLow, :uint8,
          :vmodsHigh, :uint8,
          :vmodsLow, :uint8
    end

    class XrbSARedirectKeyIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_sa_redirect_key_next, [:pointer], :void
    attach_function :xcb_sa_redirect_key_end, [:pointer], XrbGenericIterator
    class XrbSADeviceBtn < FFI::Struct
      layout \
          :type, :uint8,
          :flags, :uint8,
          :count, :uint8,
          :button, :uint8,
          :device, :uint8,
          :pad1, [:uint8, 3]
    end

    class XrbSADeviceBtnIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_sa_device_btn_next, [:pointer], :void
    attach_function :xcb_sa_device_btn_end, [:pointer], XrbGenericIterator
    XRB_LOCK_DEVICE_FLAGS_NO_LOCK = 1 << 0
    XRB_LOCK_DEVICE_FLAGS_NO_UNLOCK = 1 << 1
    class XrbSALockDeviceBtn < FFI::Struct
      layout \
          :type, :uint8,
          :flags, :uint8,
          :pad1, [:uint8, 1],
          :button, :uint8,
          :device, :uint8
    end

    class XrbSALockDeviceBtnIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_sa_lock_device_btn_next, [:pointer], :void
    attach_function :xcb_sa_lock_device_btn_end, [:pointer], XrbGenericIterator
    XRB_SA_VAL_WHAT_IGNORE_VAL = 0
    XRB_SA_VAL_WHAT_SET_VAL_MIN = 1
    XRB_SA_VAL_WHAT_SET_VAL_CENTER = 2
    XRB_SA_VAL_WHAT_SET_VAL_MAX = 3
    XRB_SA_VAL_WHAT_SET_VAL_RELATIVE = 4
    XRB_SA_VAL_WHAT_SET_VAL_ABSOLUTE = 5
    class XrbSADeviceValuator < FFI::Struct
      layout \
          :type, :uint8,
          :device, :uint8,
          :val1what, :uint8,
          :val1index, :uint8,
          :val1value, :uint8,
          :val2what, :uint8,
          :val2index, :uint8,
          :val2value, :uint8
    end

    class XrbSADeviceValuatorIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_sa_device_valuator_next, [:pointer], :void
    attach_function :xcb_sa_device_valuator_end, [:pointer], XrbGenericIterator
    class XrbAction < FFI::Union
      layout \
          :noaction, XrbSANoAction,
          :setmods, XrbSASetMods,
          :latchmods, :xrb_salatchmods_t,
          :lockmods, :xrb_salockmods_t,
          :setgroup, XrbSASetGroup,
          :latchgroup, :xrb_salatchgroup_t,
          :lockgroup, :xrb_salockgroup_t,
          :moveptr, XrbSAMovePtr,
          :ptrbtn, XrbSAPtrBtn,
          :lockptrbtn, XrbSALockPtrBtn,
          :setptrdflt, XrbSASetPtrDflt,
          :isolock, XrbSAIsoLock,
          :terminate, XrbSATerminate,
          :switchscreen, XrbSASwitchScreen,
          :setcontrols, XrbSASetControls,
          :lockcontrols, :xrb_salockcontrols_t,
          :message, XrbSAActionMessage,
          :redirect, XrbSARedirectKey,
          :devbtn, XrbSADeviceBtn,
          :lockdevbtn, XrbSALockDeviceBtn,
          :devval, XrbSADeviceValuator,
          :type, :uint8
    end

    class XrbNewKeyboardNotifyEvent < FFI::Struct
      layout \
          :response_type, :uint8,
          :time, :xrb_timestamp_t,
          :deviceID, :uint8,
          :oldDeviceID, :uint8,
          :minKeyCode, :xrb_keycode_t,
          :maxKeyCode, :xrb_keycode_t,
          :oldMinKeyCode, :xrb_keycode_t,
          :oldMaxKeyCode, :xrb_keycode_t,
          :requestMajor, :uint8,
          :requestMinor, :uint8,
          :changed, :uint16,
          :pad1, [:uint8, 14]
    end

    class XrbMapNotifyEvent < FFI::Struct
      layout \
          :response_type, :uint8,
          :time, :xrb_timestamp_t,
          :deviceID, :uint8,
          :ptrBtnActions, :uint8,
          :changed, :uint16,
          :minKeyCode, :xrb_keycode_t,
          :maxKeyCode, :xrb_keycode_t,
          :firstType, :uint8,
          :nTypes, :uint8,
          :firstKeySym, :xrb_keycode_t,
          :nKeySyms, :uint8,
          :firstKeyAct, :xrb_keycode_t,
          :nKeyActs, :uint8,
          :firstKeyBehavior, :xrb_keycode_t,
          :nKeyBehavior, :uint8,
          :firstKeyExplicit, :xrb_keycode_t,
          :nKeyExplicit, :uint8,
          :firstModMapKey, :xrb_keycode_t,
          :nModMapKeys, :uint8,
          :firstVModMapKey, :xrb_keycode_t,
          :nVModMapKeys, :uint8,
          :virtualMods, :uint16,
          :pad1, [:uint8, 2]
    end

    class XrbStateNotifyEvent < FFI::Struct
      layout \
          :response_type, :uint8,
          :time, :xrb_timestamp_t,
          :deviceID, :uint8,
          :mods, :uint8,
          :baseMods, :uint8,
          :latchedMods, :uint8,
          :lockedMods, :uint8,
          :group, :uint8,
          :baseGroup, :int16,
          :latchedGroup, :int16,
          :lockedGroup, :uint8,
          :compatState, :uint8,
          :grabMods, :uint8,
          :compatGrabMods, :uint8,
          :lookupMods, :uint8,
          :compatLoockupMods, :uint8,
          :ptrBtnState, :uint16,
          :changed, :uint16,
          :keycode, :xrb_keycode_t,
          :eventType, :uint8,
          :requestMajor, :uint8,
          :requestMinor, :uint8
    end

    class XrbControlsNotifyEvent < FFI::Struct
      layout \
          :response_type, :uint8,
          :time, :xrb_timestamp_t,
          :deviceID, :uint8,
          :numGroups, :uint8,
          :pad1, [:uint8, 2],
          :changedControls, :uint32,
          :enabledControls, :uint32,
          :enabledControlChanges, :uint32,
          :keycode, :xrb_keycode_t,
          :eventType, :uint8,
          :requestMajor, :uint8,
          :requestMinor, :uint8,
          :pad2, [:uint8, 4]
    end

    class XrbIndicatorStateNotifyEvent < FFI::Struct
      layout \
          :response_type, :uint8,
          :time, :xrb_timestamp_t,
          :deviceID, :uint8,
          :pad1, [:uint8, 3],
          :state, :uint32,
          :stateChanged, :uint32,
          :pad2, [:uint8, 12]
    end

    class XrbIndicatorMapNotifyEvent < FFI::Struct
      layout \
          :response_type, :uint8,
          :time, :xrb_timestamp_t,
          :deviceID, :uint8,
          :pad1, [:uint8, 3],
          :state, :uint32,
          :mapChanged, :uint32,
          :pad2, [:uint8, 12]
    end

    class XrbNamesNotifyEvent < FFI::Struct
      layout \
          :response_type, :uint8,
          :time, :xrb_timestamp_t,
          :deviceID, :uint8,
          :pad1, [:uint8, 1],
          :changed, :uint16,
          :firstType, :uint8,
          :nTypes, :uint8,
          :firstLevelName, :uint8,
          :nLevelNames, :uint8,
          :pad2, [:uint8, 1],
          :nRadioGroups, :uint8,
          :nKeyAliases, :uint8,
          :changedGroupNames, :uint8,
          :changedVirtualMods, :uint16,
          :firstKey, :xrb_keycode_t,
          :nKeys, :uint8,
          :changedIndicators, :uint32,
          :pad3, [:uint8, 4]
    end

    class XrbCompatMapNotifyEvent < FFI::Struct
      layout \
          :response_type, :uint8,
          :time, :xrb_timestamp_t,
          :deviceID, :uint8,
          :changedGroups, :uint8,
          :firstSI, :uint16,
          :nSI, :uint16,
          :nTotalSI, :uint16,
          :pad1, [:uint8, 16]
    end

    class XrbBellNotifyEvent < FFI::Struct
      layout \
          :response_type, :uint8,
          :time, :xrb_timestamp_t,
          :deviceID, :uint8,
          :bellClass, :uint8,
          :bellID, :uint8,
          :percent, :uint8,
          :pitch, :uint16,
          :duration, :uint16,
          :name, :xrb_atom_t,
          :window, :xrb_window_t,
          :eventOnly, :bool,
          :pad1, [:uint8, 7]
    end

    class XrbActionMessageEvent < FFI::Struct
      layout \
          :response_type, :uint8,
          :time, :xrb_timestamp_t,
          :deviceID, :uint8,
          :keycode, :xrb_keycode_t,
          :press, :bool,
          :keyEventFollows, :bool,
          :mods, :uint8,
          :group, :uint8,
          :message_len, [:uint32 , 8],
          :pad1, [:uint8, 10]
    end

    class XrbAccessXNotifyEvent < FFI::Struct
      layout \
          :response_type, :uint8,
          :time, :xrb_timestamp_t,
          :deviceID, :uint8,
          :keycode, :xrb_keycode_t,
          :detailt, :uint16,
          :slowKeysDelay, :uint16,
          :debounceDelay, :uint16,
          :pad1, [:uint8, 16]
    end

    class XrbExtensionDeviceNotifyEvent < FFI::Struct
      layout \
          :response_type, :uint8,
          :time, :xrb_timestamp_t,
          :deviceID, :uint8,
          :pad1, [:uint8, 1],
          :reason, :uint16,
          :ledClass, :uint16,
          :ledID, :uint8,
          :ledsDefined, :uint32,
          :ledState, :uint32,
          :firstButton, :uint8,
          :nButtons, :uint8,
          :supported, :uint16,
          :unsupported, :uint16,
          :pad2, [:uint8, 2]
    end

    class XrbKeyboardError < FFI::Struct
      layout \
          :response_type, :uint8,
          :error_code, :uint8,
          :sequence, :uint16,
          :value, :uint32,
          :minorOpcode, :uint16,
          :majorOpcode, :uint8,
          :pad1, [:uint8, 21]
    end

    class XrbUseExtensionRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :serverMajor, :uint16,
          :serverMinor, :uint16,
          :pad1, [:uint8, 20]
    end

    class XrbUseExtensionCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_use_extension, [:pointer,:uint8,:uint16,:uint16], XrbUseExtensionCookie
    class XrbUseExtensionReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :supported, :bool,
          :sequence, :uint16,
          :length, :uint32,
          :serverMajor, :uint16,
          :serverMinor, :uint16,
          :pad1, [:uint8, 20]
    end

    attach_function :xcb_use_extension_reply, [:pointer, XrbUseExtensionCookie, :pointer], :pointer

        
    class XrbSelectEventsRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :affectExtDev, :uint16,
          :extdevDetails, :uint16
    end

    class XrbSelectEventsCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_select_events_checked, [:pointer,:uint8,:uint16,:uint16], XrbSelectEventsCookie
    attach_function :xcb_select_events, [:pointer,:uint8,:uint16,:uint16], XrbSelectEventsCookie
    class XrbBellRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :deviceSpec, :xrb_devicespec_t,
          :bellClass, :xrb_bellclassspec_t,
          :bellID, :xrb_idspec_t,
          :percent, :int8,
          :forceSound, :bool,
          :eventOnly, :bool,
          :pad1, [:uint8, 1],
          :pitch, :int16,
          :duration, :int16,
          :pad2, [:uint8, 2],
          :name, :xrb_atom_t,
          :window, :xrb_window_t
    end

    class XrbBellCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_bell_checked, [:pointer,:uint8,:xrb_devicespec_t,:xrb_bellclassspec_t,:xrb_idspec_t,:int8,:bool,:bool,:int16,:int16,:xrb_atom_t,:xrb_window_t], XrbBellCookie
    attach_function :xcb_bell, [:pointer,:uint8,:xrb_devicespec_t,:xrb_bellclassspec_t,:xrb_idspec_t,:int8,:bool,:bool,:int16,:int16,:xrb_atom_t,:xrb_window_t], XrbBellCookie
    class XrbGetStateRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :mods, :uint8,
          :baseMods, :uint8,
          :latchedMods, :uint8,
          :lockedMods, :uint8,
          :group, :uint8,
          :lockedGroup, :uint8,
          :baseGroup, :int16,
          :latchedGroup, :int16,
          :compatState, :uint8,
          :grabMods, :uint8,
          :compatGrabMods, :uint8,
          :lookupMods, :uint8,
          :compatLookupMods, :uint8,
          :pad1, [:uint8, 1],
          :ptrBtnState, :uint16,
          :pad2, [:uint8, 6]
    end

    class XrbGetStateCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_state, [:pointer,:uint8,:uint8,:uint8,:uint8,:uint8,:uint8,:uint8,:int16,:int16,:uint8,:uint8,:uint8,:uint8,:uint8,:uint16], XrbGetStateCookie
    class XrbGetStateReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :deviceID, :uint8,
          :sequence, :uint16,
          :length, :uint32,
          :mods, :uint8,
          :baseMods, :uint8,
          :latchedMods, :uint8,
          :lockedMods, :uint8,
          :group, :uint8,
          :lockedGroup, :uint8,
          :baseGroup, :int16,
          :latchedGroup, :int16,
          :compatState, :uint8,
          :grabMods, :uint8,
          :compatGrabMods, :uint8,
          :lookupMods, :uint8,
          :compatLookupMods, :uint8,
          :pad1, [:uint8, 1],
          :ptrBtnState, :uint16,
          :pad2, [:uint8, 6]
    end

    attach_function :xcb_get_state_reply, [:pointer, XrbGetStateCookie, :pointer], :pointer

        
    class XrbLatchLockStateRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :deviceSpec, :xrb_devicespec_t,
          :affectModLocks, :uint8,
          :modLocks, :uint8,
          :lockGroup, :bool,
          :groupLock, :uint8,
          :affectModLatches, :uint8,
          :pad1, [:uint8, 1],
          :latchGroup, :bool,
          :groupLatch, :uint16
    end

    class XrbLatchLockStateCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_latch_lock_state_checked, [:pointer,:uint8,:xrb_devicespec_t,:uint8,:uint8,:bool,:uint8,:uint8,:bool,:uint16], XrbLatchLockStateCookie
    attach_function :xcb_latch_lock_state, [:pointer,:uint8,:xrb_devicespec_t,:uint8,:uint8,:bool,:uint8,:uint8,:bool,:uint16], XrbLatchLockStateCookie
    class XrbGetControlsRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :mouseKeysDfltBtn, :uint8,
          :numGroups, :uint8,
          :groupsWrap, :uint8,
          :internalModsMask, :uint8,
          :ignoreLockModsMask, :uint8,
          :internalModsRealMods, :uint8,
          :ignoreLockModsRealMods, :uint8,
          :pad1, [:uint8, 1],
          :internalModsVmods, :uint16,
          :ignoreLockModsVmods, :uint16,
          :repeatDelay, :uint16,
          :repeatInterval, :uint16,
          :slowKeysDelay, :uint16,
          :debounceDelay, :uint16,
          :mouseKeysDelay, :uint16,
          :mouseKeysInterval, :uint16,
          :mouseKeysTimeToMax, :uint16,
          :mouseKeysMaxSpeed, :uint16,
          :mouseKeysCurve, :int16,
          :accessXOption, XrbAXOption,
          :accessXTimeout, :uint16,
          :accessXTimeoutOptionsMask, XrbAXOption,
          :accessXTimeoutOptionsValues, XrbAXOption,
          :pad2, [:uint8, 2],
          :accessXTimeoutMask, :uint32,
          :accessXTimeoutValues, :uint32,
          :enabledControls, :uint32,
          :perKeyRepeat_len, [:uint32 , 32]
    end

    class XrbGetControlsCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_controls, [:pointer,:uint8,:uint8,:uint8,:uint8,:uint8,:uint8,:uint8,:uint8,:uint16,:uint16,:uint16,:uint16,:uint16,:uint16,:uint16,:uint16,:uint16,:uint16,:int16,XrbAXOption,:uint16,XrbAXOption,XrbAXOption,:uint32,:uint32,:uint32,:uint32], XrbGetControlsCookie
    class XrbGetControlsReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :deviceID, :uint8,
          :sequence, :uint16,
          :length, :uint32,
          :mouseKeysDfltBtn, :uint8,
          :numGroups, :uint8,
          :groupsWrap, :uint8,
          :internalModsMask, :uint8,
          :ignoreLockModsMask, :uint8,
          :internalModsRealMods, :uint8,
          :ignoreLockModsRealMods, :uint8,
          :pad1, [:uint8, 1],
          :internalModsVmods, :uint16,
          :ignoreLockModsVmods, :uint16,
          :repeatDelay, :uint16,
          :repeatInterval, :uint16,
          :slowKeysDelay, :uint16,
          :debounceDelay, :uint16,
          :mouseKeysDelay, :uint16,
          :mouseKeysInterval, :uint16,
          :mouseKeysTimeToMax, :uint16,
          :mouseKeysMaxSpeed, :uint16,
          :mouseKeysCurve, :int16,
          :accessXOption, XrbAXOption,
          :accessXTimeout, :uint16,
          :accessXTimeoutOptionsMask, XrbAXOption,
          :accessXTimeoutOptionsValues, XrbAXOption,
          :pad2, [:uint8, 2],
          :accessXTimeoutMask, :uint32,
          :accessXTimeoutValues, :uint32,
          :enabledControls, :uint32,
          :perKeyRepeat_len, [:uint32 , 32]
    end

    attach_function :xcb_get_controls_reply, [:pointer, XrbGetControlsCookie, :pointer], :pointer

        
    class XrbSetControlsRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :deviceSpec, :xrb_devicespec_t,
          :affectInternalRealMods, :uint8,
          :internalRealMods, :uint8,
          :affectIgnoreLockRealMods, :uint8,
          :ignoreLockRealMods, :uint8,
          :affectInternalVirtualMods, :uint16,
          :internalVirtualMods, :uint16,
          :affectIgnoreLockVirtualMods, :uint16,
          :ignoreLockVirtualMods, :uint16,
          :mouseKeysDfltBtn, :uint8,
          :groupsWrap, :uint8,
          :accessXOptions, XrbAXOption,
          :pad1, [:uint8, 2],
          :affectEnabledControls, :uint32,
          :enabledControls, :uint32,
          :changeControls, :uint32,
          :repeatDelay, :uint16,
          :repeatInterval, :uint16,
          :slowKeysDelay, :uint16,
          :debounceDelay, :uint16,
          :mouseKeysDelay, :uint16,
          :mouseKeysInterval, :uint16,
          :mouseKeysTimeToMax, :uint16,
          :mouseKeysMaxSpeed, :uint16,
          :mouseKeysCurve, :int16,
          :accessXTimeout, :uint16,
          :accessXTimeoutMask, :uint32,
          :accessXTimeoutValues, :uint32,
          :accessXTimeoutOptionsMask, XrbAXOption,
          :accessXTimeoutOptionsValues, XrbAXOption,
          :perKeyRepeat_len, [:uint32 , 32]
    end

    class XrbSetControlsCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_set_controls_checked, [:pointer,:uint8,:xrb_devicespec_t,:uint8,:uint8,:uint8,:uint8,:uint16,:uint16,:uint16,:uint16,:uint8,:uint8,XrbAXOption,:uint32,:uint32,:uint32,:uint16,:uint16,:uint16,:uint16,:uint16,:uint16,:uint16,:uint16,:int16,:uint16,:uint32,:uint32,XrbAXOption,XrbAXOption,:uint32], XrbSetControlsCookie
    attach_function :xcb_set_controls, [:pointer,:uint8,:xrb_devicespec_t,:uint8,:uint8,:uint8,:uint8,:uint16,:uint16,:uint16,:uint16,:uint8,:uint8,XrbAXOption,:uint32,:uint32,:uint32,:uint16,:uint16,:uint16,:uint16,:uint16,:uint16,:uint16,:uint16,:int16,:uint16,:uint32,:uint32,XrbAXOption,XrbAXOption,:uint32], XrbSetControlsCookie
    class XrbGetMapRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16
    end

    class XrbGetMapCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_map, [:pointer,:uint8], XrbGetMapCookie
    class XrbGetMapReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :sequence, :uint16,
          :length, :uint32
    end

    attach_function :xcb_get_map_reply, [:pointer, XrbGetMapCookie, :pointer], :pointer

        
    class XrbSetMapRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16
    end

    class XrbSetMapCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_set_map_checked, [:pointer,:uint8,:uint32], XrbSetMapCookie
    attach_function :xcb_set_map, [:pointer,:uint8,:uint32], XrbSetMapCookie
    class XrbGetCompatMapRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :groupsRtrn, :uint8,
          :pad1, [:uint8, 1],
          :firstSIRtrn, :uint16,
          :nSIRtrn, :uint16,
          :nTotalSI, :uint16,
          :pad2, [:uint8, 16],
          :si_rtrn_len, [:uint32 , 16]
    end

    class XrbGetCompatMapCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_compat_map, [:pointer,:uint8,:uint8,:uint16,:uint16,:uint16,:uint32,:uint32], XrbGetCompatMapCookie
    class XrbGetCompatMapReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :deviceID, :uint8,
          :sequence, :uint16,
          :length, :uint32,
          :groupsRtrn, :uint8,
          :pad1, [:uint8, 1],
          :firstSIRtrn, :uint16,
          :nSIRtrn, :uint16,
          :nTotalSI, :uint16,
          :pad2, [:uint8, 16],
          :si_rtrn_len, [:uint32 , 16]
    end

    attach_function :xcb_get_compat_map_reply, [:pointer, XrbGetCompatMapCookie, :pointer], :pointer

        
    class XrbSetCompatMapRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :deviceSpec, :xrb_devicespec_t,
          :pad1, [:uint8, 1],
          :recomputeActions, :bool,
          :truncateSI, :bool,
          :groups, :uint8,
          :firstSI, :uint16,
          :nSI, :uint16,
          :pad2, [:uint8, 2],
          :si_len, [:uint32 , 16]
    end

    class XrbSetCompatMapCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_set_compat_map_checked, [:pointer,:uint8,:xrb_devicespec_t,:bool,:bool,:uint8,:uint16,:uint16,:uint32,:uint32], XrbSetCompatMapCookie
    attach_function :xcb_set_compat_map, [:pointer,:uint8,:xrb_devicespec_t,:bool,:bool,:uint8,:uint16,:uint16,:uint32,:uint32], XrbSetCompatMapCookie
    class XrbGetIndicatorStateRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :state, :uint32,
          :pad1, [:uint8, 20]
    end

    class XrbGetIndicatorStateCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_indicator_state, [:pointer,:uint8,:uint32], XrbGetIndicatorStateCookie
    class XrbGetIndicatorStateReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :deviceID, :uint8,
          :sequence, :uint16,
          :length, :uint32,
          :state, :uint32,
          :pad1, [:uint8, 20]
    end

    attach_function :xcb_get_indicator_state_reply, [:pointer, XrbGetIndicatorStateCookie, :pointer], :pointer

        
    class XrbGetIndicatorMapRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :which, :uint32,
          :realIndicators, :uint32,
          :nIndicators, :uint8,
          :pad1, [:uint8, 15]
    end

    class XrbGetIndicatorMapCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_indicator_map, [:pointer,:uint8,:uint32,:uint32,:uint8,:uint32], XrbGetIndicatorMapCookie
    class XrbGetIndicatorMapReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :deviceID, :uint8,
          :sequence, :uint16,
          :length, :uint32,
          :which, :uint32,
          :realIndicators, :uint32,
          :nIndicators, :uint8,
          :pad1, [:uint8, 15]
    end

    attach_function :xcb_get_indicator_map_reply, [:pointer, XrbGetIndicatorMapCookie, :pointer], :pointer

        
    class XrbSetIndicatorMapRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :deviceSpec, :xrb_devicespec_t,
          :pad1, [:uint8, 2],
          :which, :uint32
    end

    class XrbSetIndicatorMapCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_set_indicator_map_checked, [:pointer,:uint8,:xrb_devicespec_t,:uint32,:uint32], XrbSetIndicatorMapCookie
    attach_function :xcb_set_indicator_map, [:pointer,:uint8,:xrb_devicespec_t,:uint32,:uint32], XrbSetIndicatorMapCookie
    class XrbGetNamedIndicatorRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :indicator, :xrb_atom_t,
          :found, :bool,
          :on, :bool,
          :realIndicator, :bool,
          :ndx, :uint8,
          :map_flags, :uint8,
          :map_whichGroups, :uint8,
          :map_groups, :uint8,
          :map_whichMods, :uint8,
          :map_mods, :uint8,
          :map_realMods, :uint8,
          :map_vmod, :uint16,
          :map_ctrls, :uint32,
          :pad1, [:uint8, 3]
    end

    class XrbGetNamedIndicatorCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_named_indicator, [:pointer,:uint8,:xrb_atom_t,:bool,:bool,:bool,:uint8,:uint8,:uint8,:uint8,:uint8,:uint8,:uint8,:uint16,:uint32], XrbGetNamedIndicatorCookie
    class XrbGetNamedIndicatorReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :deviceID, :uint8,
          :sequence, :uint16,
          :length, :uint32,
          :indicator, :xrb_atom_t,
          :found, :bool,
          :on, :bool,
          :realIndicator, :bool,
          :ndx, :uint8,
          :map_flags, :uint8,
          :map_whichGroups, :uint8,
          :map_groups, :uint8,
          :map_whichMods, :uint8,
          :map_mods, :uint8,
          :map_realMods, :uint8,
          :map_vmod, :uint16,
          :map_ctrls, :uint32,
          :pad1, [:uint8, 3]
    end

    attach_function :xcb_get_named_indicator_reply, [:pointer, XrbGetNamedIndicatorCookie, :pointer], :pointer

        
    class XrbSetNamedIndicatorRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :deviceSpec, :xrb_devicespec_t,
          :ledClass, :xrb_ledclassspec_t,
          :ledID, :xrb_idspec_t,
          :pad1, [:uint8, 2],
          :indicator, :xrb_atom_t,
          :setState, :bool,
          :on, :bool,
          :setMap, :bool,
          :createMap, :bool,
          :pad2, [:uint8, 1],
          :map_flags, :uint8,
          :map_whichGroups, :uint8,
          :map_groups, :uint8,
          :map_whichMods, :uint8,
          :map_realMods, :uint8,
          :map_vmods, :uint16,
          :map_ctrls, :uint32
    end

    class XrbSetNamedIndicatorCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_set_named_indicator_checked, [:pointer,:uint8,:xrb_devicespec_t,:xrb_ledclassspec_t,:xrb_idspec_t,:xrb_atom_t,:bool,:bool,:bool,:bool,:uint8,:uint8,:uint8,:uint8,:uint8,:uint16,:uint32], XrbSetNamedIndicatorCookie
    attach_function :xcb_set_named_indicator, [:pointer,:uint8,:xrb_devicespec_t,:xrb_ledclassspec_t,:xrb_idspec_t,:xrb_atom_t,:bool,:bool,:bool,:bool,:uint8,:uint8,:uint8,:uint8,:uint8,:uint16,:uint32], XrbSetNamedIndicatorCookie
    class XrbGetNamesRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16
    end

    class XrbGetNamesCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_names, [:pointer,:uint8], XrbGetNamesCookie
    class XrbGetNamesReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :sequence, :uint16,
          :length, :uint32
    end

    attach_function :xcb_get_names_reply, [:pointer, XrbGetNamesCookie, :pointer], :pointer

        
    class XrbSetNamesRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16
    end

    class XrbSetNamesCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_set_names_checked, [:pointer,:uint8,:uint32], XrbSetNamesCookie
    attach_function :xcb_set_names, [:pointer,:uint8,:uint32], XrbSetNamesCookie
    class XrbGetGeometryRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :name, :xrb_atom_t,
          :found, :bool,
          :pad1, [:uint8, 1],
          :widthMM, :uint16,
          :heightMM, :uint16,
          :nProperties, :uint16,
          :nColors, :uint16,
          :nShapes, :uint16,
          :nSections, :uint16,
          :nDoodads, :uint16,
          :nKeyAliases, :uint16,
          :baseColorNdx, :uint8,
          :labelColorNdx, :uint8,
          :labelFont, XrbCountedString16
    end

    class XrbGetGeometryCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_geometry, [:pointer,:uint8,:xrb_atom_t,:bool,:uint16,:uint16,:uint16,:uint16,:uint16,:uint16,:uint16,:uint16,:uint8,:uint8,XrbCountedString16,:uint32,:uint32,:uint32,:uint32,:uint32,:uint32], XrbGetGeometryCookie
    class XrbGetGeometryReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :deviceID, :uint8,
          :sequence, :uint16,
          :length, :uint32,
          :name, :xrb_atom_t,
          :found, :bool,
          :pad1, [:uint8, 1],
          :widthMM, :uint16,
          :heightMM, :uint16,
          :nProperties, :uint16,
          :nColors, :uint16,
          :nShapes, :uint16,
          :nSections, :uint16,
          :nDoodads, :uint16,
          :nKeyAliases, :uint16,
          :baseColorNdx, :uint8,
          :labelColorNdx, :uint8,
          :labelFont, XrbCountedString16
    end

    attach_function :xcb_get_geometry_reply, [:pointer, XrbGetGeometryCookie, :pointer], :pointer

        
    class XrbSetGeometryRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :deviceSpec, :xrb_devicespec_t,
          :nShapes, :uint8,
          :nSections, :uint8,
          :name, :xrb_atom_t,
          :widthMM, :uint16,
          :heightMM, :uint16,
          :nProperties, :uint16,
          :nColors, :uint16,
          :nDoodads, :uint16,
          :nKeyAliases, :uint16,
          :baseColorNdx, :uint8,
          :labelColorNdx, :uint8,
          :pad1, [:uint8, 2],
          :labelFont, XrbCountedString16
    end

    class XrbSetGeometryCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_set_geometry_checked, [:pointer,:uint8,:xrb_devicespec_t,:uint8,:uint8,:xrb_atom_t,:uint16,:uint16,:uint16,:uint16,:uint16,:uint16,:uint8,:uint8,XrbCountedString16,:uint32,:uint32,:uint32,:uint32,:uint32,:uint32], XrbSetGeometryCookie
    attach_function :xcb_set_geometry, [:pointer,:uint8,:xrb_devicespec_t,:uint8,:uint8,:xrb_atom_t,:uint16,:uint16,:uint16,:uint16,:uint16,:uint16,:uint8,:uint8,XrbCountedString16,:uint32,:uint32,:uint32,:uint32,:uint32,:uint32], XrbSetGeometryCookie
    class XrbPerClientFlagsRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :supported, :uint32,
          :value, :uint32,
          :autoCtrls, :uint32,
          :autoCtrlsValues, :uint32,
          :pad1, [:uint8, 8]
    end

    class XrbPerClientFlagsCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_per_client_flags, [:pointer,:uint8,:uint32,:uint32,:uint32,:uint32], XrbPerClientFlagsCookie
    class XrbPerClientFlagsReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :deviceID, :uint8,
          :sequence, :uint16,
          :length, :uint32,
          :supported, :uint32,
          :value, :uint32,
          :autoCtrls, :uint32,
          :autoCtrlsValues, :uint32,
          :pad1, [:uint8, 8]
    end

    attach_function :xcb_per_client_flags_reply, [:pointer, XrbPerClientFlagsCookie, :pointer], :pointer

        
    class XrbListComponentsRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :nKeymaps, :uint16,
          :nKeycodes, :uint16,
          :nTypes, :uint16,
          :nCompatMaps, :uint16,
          :nSymbols, :uint16,
          :nGeometries, :uint16,
          :extra, :uint16,
          :pad1, [:uint8, 10]
    end

    class XrbListComponentsCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_list_components, [:pointer,:uint8,:uint16,:uint16,:uint16,:uint16,:uint16,:uint16,:uint16,:uint32,:uint32,:uint32,:uint32,:uint32,:uint32], XrbListComponentsCookie
    class XrbListComponentsReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :deviceID, :uint8,
          :sequence, :uint16,
          :length, :uint32,
          :nKeymaps, :uint16,
          :nKeycodes, :uint16,
          :nTypes, :uint16,
          :nCompatMaps, :uint16,
          :nSymbols, :uint16,
          :nGeometries, :uint16,
          :extra, :uint16,
          :pad1, [:uint8, 10]
    end

    attach_function :xcb_list_components_reply, [:pointer, XrbListComponentsCookie, :pointer], :pointer

        
    class XrbGetKbdByNameRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :name, :xrb_atom_t,
          :geometryFound, :bool,
          :pad1, [:uint8, 1],
          :widthMM, :uint16,
          :heightMM, :uint16,
          :nProperties, :uint16,
          :nColors, :uint16,
          :nShapes, :uint16,
          :nSections, :uint16,
          :nDoodads, :uint16,
          :nKeyAliases, :uint16,
          :baseColorNdx, :uint8,
          :labelColorNdx, :uint8,
          :labelFont, XrbCountedString16
    end

    class XrbGetKbdByNameCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_kbd_by_name, [:pointer,:uint8,:xrb_atom_t,:bool,:uint16,:uint16,:uint16,:uint16,:uint16,:uint16,:uint16,:uint16,:uint8,:uint8,XrbCountedString16,:uint32,:uint32,:uint32,:uint32,:uint32,:uint32], XrbGetKbdByNameCookie
    class XrbGetKbdByNameReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :geometryDeviceID, :uint8,
          :sequence, :uint16,
          :length, :uint32,
          :name, :xrb_atom_t,
          :geometryFound, :bool,
          :pad1, [:uint8, 1],
          :widthMM, :uint16,
          :heightMM, :uint16,
          :nProperties, :uint16,
          :nColors, :uint16,
          :nShapes, :uint16,
          :nSections, :uint16,
          :nDoodads, :uint16,
          :nKeyAliases, :uint16,
          :baseColorNdx, :uint8,
          :labelColorNdx, :uint8,
          :labelFont, XrbCountedString16
    end

    attach_function :xcb_get_kbd_by_name_reply, [:pointer, XrbGetKbdByNameCookie, :pointer], :pointer

        
    class XrbGetDeviceInfoRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :present, :uint16,
          :supported, :uint16,
          :unsupported, :uint16,
          :nDeviceLedFBs, :uint16,
          :firstBtnWanted, :uint8,
          :nBtnsWanted, :uint8,
          :firstBtnRtrn, :uint8,
          :nBtnsRtrn, :uint8,
          :totalBtns, :uint8,
          :hasOwnState, :bool,
          :dfltKbdFB, :uint16,
          :dfltLedFB, :uint16,
          :pad1, [:uint8, 2],
          :devType, :xrb_atom_t,
          :nameLen, :uint16
    end

    class XrbGetDeviceInfoCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_device_info, [:pointer,:uint8,:uint16,:uint16,:uint16,:uint16,:uint8,:uint8,:uint8,:uint8,:uint8,:bool,:uint16,:uint16,:xrb_atom_t,:uint16,:uint32,:uint32,:uint32], XrbGetDeviceInfoCookie
    class XrbGetDeviceInfoReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :deviceID, :uint8,
          :sequence, :uint16,
          :length, :uint32,
          :present, :uint16,
          :supported, :uint16,
          :unsupported, :uint16,
          :nDeviceLedFBs, :uint16,
          :firstBtnWanted, :uint8,
          :nBtnsWanted, :uint8,
          :firstBtnRtrn, :uint8,
          :nBtnsRtrn, :uint8,
          :totalBtns, :uint8,
          :hasOwnState, :bool,
          :dfltKbdFB, :uint16,
          :dfltLedFB, :uint16,
          :pad1, [:uint8, 2],
          :devType, :xrb_atom_t,
          :nameLen, :uint16
    end

    attach_function :xcb_get_device_info_reply, [:pointer, XrbGetDeviceInfoCookie, :pointer], :pointer

        
    class XrbSetDeviceInfoRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :deviceSpec, :xrb_devicespec_t,
          :firstBtn, :uint8,
          :nBtns, :uint8,
          :change, :uint16,
          :nDeviceLedFBs, :uint16
    end

    class XrbSetDeviceInfoCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_set_device_info_checked, [:pointer,:uint8,:xrb_devicespec_t,:uint8,:uint8,:uint16,:uint16,:uint32,:uint32], XrbSetDeviceInfoCookie
    attach_function :xcb_set_device_info, [:pointer,:uint8,:xrb_devicespec_t,:uint8,:uint8,:uint16,:uint16,:uint32,:uint32], XrbSetDeviceInfoCookie
    class XrbSetDebuggingFlagsRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :currentFlags, :uint32,
          :currentCtrls, :uint32,
          :supportedFlags, :uint32,
          :supportedCtrls, :uint32,
          :pad2, [:uint8, 8]
    end

    class XrbSetDebuggingFlagsCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_set_debugging_flags, [:pointer,:uint8,:uint32,:uint32,:uint32,:uint32], XrbSetDebuggingFlagsCookie
    class XrbSetDebuggingFlagsReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :currentFlags, :uint32,
          :currentCtrls, :uint32,
          :supportedFlags, :uint32,
          :supportedCtrls, :uint32,
          :pad2, [:uint8, 8]
    end

    attach_function :xcb_set_debugging_flags_reply, [:pointer, XrbSetDebuggingFlagsCookie, :pointer], :pointer

        
  end
end
