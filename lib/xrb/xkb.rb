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
    CONST_MAX_LEGAL_KEY_CODE = 255
    CONST_PER_KEY_BIT_ARRAY_SIZE = 32
    CONST_KEY_NAME_LENGTH = 4
    EVENT_TYPE_NEW_KEYBOARD_NOTIFY = 1 << 0
    EVENT_TYPE_MAP_NOTIFY = 1 << 1
    EVENT_TYPE_STATE_NOTIFY = 1 << 2
    EVENT_TYPE_CONTROLS_NOTIFY = 1 << 3
    EVENT_TYPE_INDICATOR_STATE_NOTIFY = 1 << 4
    EVENT_TYPE_INDICATOR_MAP_NOTIFY = 1 << 5
    EVENT_TYPE_NAMES_NOTIFY = 1 << 6
    EVENT_TYPE_COMPAT_MAP_NOTIFY = 1 << 7
    EVENT_TYPE_BELL_NOTIFY = 1 << 8
    EVENT_TYPE_ACTION_MESSAGE = 1 << 9
    EVENT_TYPE_ACCESS_X_NOTIFY = 1 << 10
    EVENT_TYPE_EXTENSION_DEVICE_NOTIFY = 1 << 11
    NKN_DETAIL_KEYCODES = 1 << 0
    NKN_DETAIL_GEOMETRY = 1 << 1
    NKN_DETAIL_DEVICE_ID = 1 << 2
    AXN_DETAIL_SK_PRESS = 1 << 0
    AXN_DETAIL_SK_ACCEPT = 1 << 1
    AXN_DETAIL_SK_REJECT = 1 << 2
    AXN_DETAIL_SK_RELEASE = 1 << 3
    AXN_DETAIL_BK_ACCEPT = 1 << 4
    AXN_DETAIL_BK_REJECT = 1 << 5
    AXN_DETAIL_AXK_WARNING = 1 << 6
    MAP_PART_KEY_TYPES = 1 << 0
    MAP_PART_KEY_SYMS = 1 << 1
    MAP_PART_MODIFIER_MAP = 1 << 2
    MAP_PART_EXPLICIT_COMPONENTS = 1 << 3
    MAP_PART_KEY_ACTIONS = 1 << 4
    MAP_PART_KEY_BEHAVIORS = 1 << 5
    MAP_PART_VIRTUAL_MODS = 1 << 6
    MAP_PART_VIRTUAL_MOD_MAP = 1 << 7
    SET_MAP_FLAGS_RESIZE_TYPES = 1 << 0
    SET_MAP_FLAGS_RECOMPUTE_ACTIONS = 1 << 1
    STATE_PART_MODIFIER_STATE = 1 << 0
    STATE_PART_MODIFIER_BASE = 1 << 1
    STATE_PART_MODIFIER_LATCH = 1 << 2
    STATE_PART_MODIFIER_LOCK = 1 << 3
    STATE_PART_GROUP_STATE = 1 << 4
    STATE_PART_GROUP_BASE = 1 << 5
    STATE_PART_GROUP_LATCH = 1 << 6
    STATE_PART_GROUP_LOCK = 1 << 7
    STATE_PART_COMPAT_STATE = 1 << 8
    STATE_PART_GRAB_MODS = 1 << 9
    STATE_PART_COMPAT_GRAB_MODS = 1 << 10
    STATE_PART_LOOKUP_MODS = 1 << 11
    STATE_PART_COMPAT_LOOKUP_MODS = 1 << 12
    STATE_PART_POINTER_BUTTONS = 1 << 13
    BOOL_CTRL_REPEAT_KEYS = 1 << 0
    BOOL_CTRL_SLOW_KEYS = 1 << 1
    BOOL_CTRL_BOUNCE_KEYS = 1 << 2
    BOOL_CTRL_STICKY_KEYS = 1 << 3
    BOOL_CTRL_MOUSE_KEYS = 1 << 4
    BOOL_CTRL_MOUSE_KEYS_ACCEL = 1 << 5
    BOOL_CTRL_ACCESS_X_KEYS = 1 << 6
    BOOL_CTRL_ACCESS_X_TIMEOUT_MASK = 1 << 7
    BOOL_CTRL_ACCESS_X_FEEDBACK_MASK = 1 << 8
    BOOL_CTRL_AUDIBLE_BELL_MASK = 1 << 9
    BOOL_CTRL_OVERLAY_1MASK = 1 << 10
    BOOL_CTRL_OVERLAY_2MASK = 1 << 11
    BOOL_CTRL_IGNORE_GROUP_LOCK_MASK = 1 << 12
    CONTROL_GROUPS_WRAP = 1 << 27
    CONTROL_INTERNAL_MODS = 1 << 28
    CONTROL_IGNORE_LOCK_MODS = 1 << 29
    CONTROL_PER_KEY_REPEAT = 1 << 30
    CONTROL_CONTROLS_ENABLED = 1 << 31
    AXFB_OPT_SK_PRESS_FB = 1 << 0
    AXFB_OPT_SK_ACCEPT_FB = 1 << 1
    AXFB_OPT_FEATURE_FB = 1 << 2
    AXFB_OPT_SLOW_WARN_FB = 1 << 3
    AXFB_OPT_INDICATOR_FB = 1 << 4
    AXFB_OPT_STICKY_KEYS_FB = 1 << 5
    AXFB_OPT_SK_RELEASE_FB = 1 << 6
    AXFB_OPT_SK_REJECT_FB = 1 << 7
    AXFB_OPT_BK_REJECT_FB = 1 << 8
    AXFB_OPT_DUMB_BELL = 1 << 9
    AXSK_OPT_TWO_KEYS = 1 << 6
    AXSK_OPT_LATCH_TO_LOCK = 1 << 7
    class AXOption < FFI::Union
      layout \
          :fbopt, :uint16,
          :skopt, :uint16
    end

    typedef :uint16, :devicespec_t
    class DeviceSpecIterator < FFI::Struct
      layout \
          :data, :window_t,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_device_spec_next, [:pointer], :void
    attach_function :xcb_device_spec_end, [:pointer], GenericIterator
    LED_CLASS_RESULT_KBD_FEEDBACK_CLASS = 0
    LED_CLASS_RESULT_LED_FEEDBACK_CLASS = 4
    LED_CLASS_DFLT_XI_CLASS = 768
    LED_CLASS_ALL_XI_CLASSES = 1280
    typedef :uint16, :ledclassspec_t
    class LedClassSpecIterator < FFI::Struct
      layout \
          :data, :window_t,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_led_class_spec_next, [:pointer], :void
    attach_function :xcb_led_class_spec_end, [:pointer], GenericIterator
    BELL_CLASS_RESULT_KBD_FEEDBACK_CLASS = 0
    BELL_CLASS_RESULT_BELL_FEEDBACK_CLASS = 5
    BELL_CLASS_DFLT_XI_CLASS = 768
    typedef :uint16, :bellclassspec_t
    class BellClassSpecIterator < FFI::Struct
      layout \
          :data, :window_t,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_bell_class_spec_next, [:pointer], :void
    attach_function :xcb_bell_class_spec_end, [:pointer], GenericIterator
    ID_USE_CORE_KBD = 256
    ID_USE_CORE_PTR = 512
    ID_DFLT_XI_CLASS = 768
    ID_DFLT_XI_ID = 1024
    ID_ALL_XI_CLASS = 1280
    ID_ALL_XI_ID = 1536
    ID_XI_NONE = 65280
    typedef :uint16, :idspec_t
    class IDSpecIterator < FFI::Struct
      layout \
          :data, :window_t,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_id_spec_next, [:pointer], :void
    attach_function :xcb_id_spec_end, [:pointer], GenericIterator
    GROUP_1 = 0
    GROUP_2 = 1
    GROUP_3 = 2
    GROUP_4 = 3
    GROUPS_ANY = 254
    GROUPS_ALL = 255
    SET_OF_GROUP_GROUP_1 = 1 << 0
    SET_OF_GROUP_GROUP_2 = 1 << 1
    SET_OF_GROUP_GROUP_3 = 1 << 2
    SET_OF_GROUP_GROUP_4 = 1 << 3
    SET_OF_GROUPS_ANY = 1 << 7
    GROUPS_WRAP_WRAP_INTO_RANGE = 0
    GROUPS_WRAP_CLAMP_INTO_RANGE = 1 << 6
    GROUPS_WRAP_REDIRECT_INTO_RANGE = 1 << 7
    V_MODS_HIGH_15 = 1 << 7
    V_MODS_HIGH_14 = 1 << 6
    V_MODS_HIGH_13 = 1 << 5
    V_MODS_HIGH_12 = 1 << 4
    V_MODS_HIGH_11 = 1 << 3
    V_MODS_HIGH_10 = 1 << 2
    V_MODS_HIGH_9 = 1 << 1
    V_MODS_HIGH_8 = 1 << 0
    V_MODS_LOW_7 = 1 << 7
    V_MODS_LOW_6 = 1 << 6
    V_MODS_LOW_5 = 1 << 5
    V_MODS_LOW_4 = 1 << 4
    V_MODS_LOW_3 = 1 << 3
    V_MODS_LOW_2 = 1 << 2
    V_MODS_LOW_1 = 1 << 1
    V_MODS_LOW_0 = 1 << 0
    V_MOD_15 = 1 << 15
    V_MOD_14 = 1 << 14
    V_MOD_13 = 1 << 13
    V_MOD_12 = 1 << 12
    V_MOD_11 = 1 << 11
    V_MOD_10 = 1 << 10
    V_MOD_9 = 1 << 9
    V_MOD_8 = 1 << 8
    V_MOD_7 = 1 << 7
    V_MOD_6 = 1 << 6
    V_MOD_5 = 1 << 5
    V_MOD_4 = 1 << 4
    V_MOD_3 = 1 << 3
    V_MOD_2 = 1 << 2
    V_MOD_1 = 1 << 1
    V_MOD_0 = 1 << 0
    EXPLICIT_V_MOD_MAP = 1 << 7
    EXPLICIT_BEHAVIOR = 1 << 6
    EXPLICIT_AUTO_REPEAT = 1 << 5
    EXPLICIT_INTERPRET = 1 << 4
    EXPLICIT_KEY_TYPE_4 = 1 << 3
    EXPLICIT_KEY_TYPE_3 = 1 << 2
    EXPLICIT_KEY_TYPE_2 = 1 << 1
    EXPLICIT_KEY_TYPE_1 = 1 << 0
    SYM_INTERPRET_NONE_OF = 0
    SYM_INTERPRET_ANY_OF_OR_NONE = 1
    SYM_INTERPRET_ANY_OF = 2
    SYM_INTERPRET_ALL_OF = 3
    SYM_INTERPRET_EXACTLY = 4
    SYM_INTERP_MATCH_LEVEL_ONE_ONLY = 1 << 7
    SYM_INTERP_MATCH_OP_MASK = 127
    IM_FLAG_NO_EXPLICIT = 1 << 7
    IM_FLAG_NO_AUTOMATIC = 1 << 6
    IM_FLAG_LED_DRIVES_KB = 1 << 5
    IM_MODS_WHICH_USE_COMPAT = 1 << 4
    IM_MODS_WHICH_USE_EFFECTIVE = 1 << 3
    IM_MODS_WHICH_USE_LOCKED = 1 << 2
    IM_MODS_WHICH_USE_LATCHED = 1 << 1
    IM_MODS_WHICH_USE_BASE = 1 << 0
    IM_GROUPS_WHICH_USE_COMPAT = 1 << 4
    IM_GROUPS_WHICH_USE_EFFECTIVE = 1 << 3
    IM_GROUPS_WHICH_USE_LOCKED = 1 << 2
    IM_GROUPS_WHICH_USE_LATCHED = 1 << 1
    IM_GROUPS_WHICH_USE_BASE = 1 << 0
    class IndicatorMap < FFI::Struct
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

    class IndicatorMapIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_indicator_map_next, [:pointer], :void
    attach_function :xcb_indicator_map_end, [:pointer], GenericIterator
    CM_DETAIL_SYM_INTERP = 1 << 0
    CM_DETAIL_GROUP_COMPAT = 1 << 1
    NAME_DETAIL_KEYCODES = 1 << 0
    NAME_DETAIL_GEOMETRY = 1 << 1
    NAME_DETAIL_SYMBOLS = 1 << 2
    NAME_DETAIL_PHYS_SYMBOLS = 1 << 3
    NAME_DETAIL_TYPES = 1 << 4
    NAME_DETAIL_COMPAT = 1 << 5
    NAME_DETAIL_KEY_TYPE_NAMES = 1 << 6
    NAME_DETAIL_KT_LEVEL_NAMES = 1 << 7
    NAME_DETAIL_INDICATOR_NAMES = 1 << 8
    NAME_DETAIL_KEY_NAMES = 1 << 9
    NAME_DETAIL_KEY_ALIASES = 1 << 10
    NAME_DETAIL_VIRTUAL_MOD_NAMES = 1 << 11
    NAME_DETAIL_GROUP_NAMES = 1 << 12
    NAME_DETAIL_RG_NAMES = 1 << 13
    GBN_DETAIL_TYPES = 1 << 0
    GBN_DETAIL_COMPAT_MAP = 1 << 1
    GBN_DETAIL_CLIENT_SYMBOLS = 1 << 2
    GBN_DETAIL_SERVER_SYMBOLS = 1 << 3
    GBN_DETAIL_INDICATOR_MAPS = 1 << 4
    GBN_DETAIL_KEY_NAMES = 1 << 5
    GBN_DETAIL_GEOMETRY = 1 << 6
    GBN_DETAIL_OTHER_NAMES = 1 << 7
    XI_FEATURE_KEYBOARDS = 1 << 0
    XI_FEATURE_BUTTON_ACTIONS = 1 << 1
    XI_FEATURE_INDICATOR_NAMES = 1 << 2
    XI_FEATURE_INDICATOR_MAPS = 1 << 3
    XI_FEATURE_INDICATOR_STATE = 1 << 4
    PER_CLIENT_FLAG_DETECTABLE_AUTO_REPEAT = 1 << 0
    PER_CLIENT_FLAG_GRABS_USE_XKB_STATE = 1 << 1
    PER_CLIENT_FLAG_AUTO_RESET_CONTROLS = 1 << 2
    PER_CLIENT_FLAG_LOOKUP_STATE_WHEN_GRABBED = 1 << 3
    PER_CLIENT_FLAG_SEND_EVENT_USES_XKB_STATE = 1 << 4
    class ModDef < FFI::Struct
      layout \
          :mask, :uint8,
          :realMods, :uint8,
          :vmods, :uint16
    end

    class ModDefIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_mod_def_next, [:pointer], :void
    attach_function :xcb_mod_def_end, [:pointer], GenericIterator
    class KeyName < FFI::Struct
      layout \
          :name_len, [:uint32 , 4]
    end

    class KeyNameIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_key_name_next, [:pointer], :void
    attach_function :xcb_key_name_end, [:pointer], GenericIterator
    attach_function :xcb_key_name_sizeof, [:pointer], :int
    attach_function :xcb_key_name_name, [:pointer], :pointer
    attach_function :xcb_key_name_name_length, [:pointer], :int
    class KeyAlias < FFI::Struct
      layout \
          :real_len, [:uint32 , 4],
          :alias_len, [:uint32 , 4]
    end

    class KeyAliasIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_key_alias_next, [:pointer], :void
    attach_function :xcb_key_alias_end, [:pointer], GenericIterator
    attach_function :xcb_key_alias_sizeof, [:pointer], :int
    attach_function :xcb_key_alias_real, [:pointer], :pointer
    attach_function :xcb_key_alias_real_length, [:pointer], :int
    attach_function :xcb_key_alias_alias, [:pointer], :pointer
    attach_function :xcb_key_alias_alias_length, [:pointer], :int
    class CountedString8 < FFI::Struct
      layout \
          :length, :uint8
    end

    class CountedString8Iterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_counted_string_8_next, [:pointer], :void
    attach_function :xcb_counted_string_8_end, [:pointer], GenericIterator
    attach_function :xcb_counted_string_8_sizeof, [:pointer], :int
    attach_function :xcb_counted_string_8_string, [:pointer], :pointer
    attach_function :xcb_counted_string_8_string_length, [:pointer], :int
    class CountedString16 < FFI::Struct
      layout \
          :length, :uint16,
          :pad1, [:uint8, 1]
    end

    class CountedString16Iterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_counted_string_16_next, [:pointer], :void
    attach_function :xcb_counted_string_16_end, [:pointer], GenericIterator
    attach_function :xcb_counted_string_16_sizeof, [:pointer], :int
    attach_function :xcb_counted_string_16_string, [:pointer], :pointer
    attach_function :xcb_counted_string_16_string_length, [:pointer], :int
    class KTMapEntry < FFI::Struct
      layout \
          :active, :bool,
          :level, :uint8,
          :mods_mask, :uint8,
          :mods_mods, :uint8,
          :mods_vmods, :uint16,
          :pad1, [:uint8, 2]
    end

    class KTMapEntryIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_kt_map_entry_next, [:pointer], :void
    attach_function :xcb_kt_map_entry_end, [:pointer], GenericIterator
    class KeyType < FFI::Struct
      layout \
          :mods_mask, :uint8,
          :mods_mods, :uint8,
          :mods_vmods, :uint16,
          :numLevels, :uint8,
          :nMapEntries, :uint8,
          :hasPreserve, :bool,
          :pad1, [:uint8, 1]
    end

    class KeyTypeIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_key_type_next, [:pointer], :void
    attach_function :xcb_key_type_end, [:pointer], GenericIterator
    attach_function :xcb_key_type_sizeof, [:pointer], :int
    attach_function :xcb_key_type_map_iterator, [:pointer], KeyTypeIterator
    attach_function :xcb_key_type_map_length, [:pointer], :int
    attach_function :xcb_key_type_preserve_iterator, [:pointer], KeyTypeIterator
    attach_function :xcb_key_type_preserve_length, [:pointer], :int
    class KeySymMap < FFI::Struct
      layout \
          :kt_index_len, [:uint32 , 4],
          :groupInfo, :uint8,
          :width, :uint8,
          :nSyms, :uint16
    end

    class KeySymMapIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_key_sym_map_next, [:pointer], :void
    attach_function :xcb_key_sym_map_end, [:pointer], GenericIterator
    attach_function :xcb_key_sym_map_sizeof, [:pointer], :int
    attach_function :xcb_key_sym_map_kt_index, [:pointer], :pointer
    attach_function :xcb_key_sym_map_kt_index_length, [:pointer], :int
    attach_function :xcb_key_sym_map_syms, [:pointer], :pointer
    attach_function :xcb_key_sym_map_syms_length, [:pointer], :int
    class CommonBehavior < FFI::Struct
      layout \
          :type, :uint8,
          :data, :uint8
    end

    class CommonBehaviorIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_common_behavior_next, [:pointer], :void
    attach_function :xcb_common_behavior_end, [:pointer], GenericIterator
    class DefaultBehavior < FFI::Struct
      layout \
          :type, :uint8,
          :pad1, [:uint8, 1]
    end

    class DefaultBehaviorIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_default_behavior_next, [:pointer], :void
    attach_function :xcb_default_behavior_end, [:pointer], GenericIterator
    typedef DefaultBehavior, :lockbehavior_t
    class LockBehaviorIterator < FFI::Struct
      layout \
          :data, :window_t,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_lock_behavior_next, [:pointer], :void
    attach_function :xcb_lock_behavior_end, [:pointer], GenericIterator
    class RadioGroupBehavior < FFI::Struct
      layout \
          :type, :uint8,
          :group, :uint8
    end

    class RadioGroupBehaviorIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_radio_group_behavior_next, [:pointer], :void
    attach_function :xcb_radio_group_behavior_end, [:pointer], GenericIterator
    class Overlay1Behavior < FFI::Struct
      layout \
          :type, :uint8,
          :key, :keycode_t
    end

    class Overlay1BehaviorIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_overlay_1behavior_next, [:pointer], :void
    attach_function :xcb_overlay_1behavior_end, [:pointer], GenericIterator
    class Overlay2Behavior < FFI::Struct
      layout \
          :type, :uint8,
          :key, :uint8
    end

    class Overlay2BehaviorIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_overlay_2behavior_next, [:pointer], :void
    attach_function :xcb_overlay_2behavior_end, [:pointer], GenericIterator
    typedef :lockbehavior_t, :permamentlockbehavior_t
    class PermamentLockBehaviorIterator < FFI::Struct
      layout \
          :data, :window_t,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_permament_lock_behavior_next, [:pointer], :void
    attach_function :xcb_permament_lock_behavior_end, [:pointer], GenericIterator
    typedef RadioGroupBehavior, :permamentradiogroupbehavior_t
    class PermamentRadioGroupBehaviorIterator < FFI::Struct
      layout \
          :data, :window_t,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_permament_radio_group_behavior_next, [:pointer], :void
    attach_function :xcb_permament_radio_group_behavior_end, [:pointer], GenericIterator
    typedef Overlay1Behavior, :permamentoverlay1behavior_t
    class PermamentOverlay1BehaviorIterator < FFI::Struct
      layout \
          :data, :window_t,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_permament_overlay_1behavior_next, [:pointer], :void
    attach_function :xcb_permament_overlay_1behavior_end, [:pointer], GenericIterator
    typedef Overlay2Behavior, :permamentoverlay2behavior_t
    class PermamentOverlay2BehaviorIterator < FFI::Struct
      layout \
          :data, :window_t,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_permament_overlay_2behavior_next, [:pointer], :void
    attach_function :xcb_permament_overlay_2behavior_end, [:pointer], GenericIterator
    class Behavior < FFI::Union
      layout \
          :common, CommonBehavior,
          :default, DefaultBehavior,
          :lock, :lockbehavior_t,
          :radioGroup, RadioGroupBehavior,
          :overlay1, Overlay1Behavior,
          :overlay2, Overlay2Behavior,
          :permamentLock, :permamentlockbehavior_t,
          :permamentRadioGroup, :permamentradiogroupbehavior_t,
          :permamentOverlay1, :permamentoverlay1behavior_t,
          :permamentOverlay2, :permamentoverlay2behavior_t,
          :type, :uint8
    end

    BEHAVIOR_TYPE_DEFAULT = 0
    BEHAVIOR_TYPE_LOCK = 1
    BEHAVIOR_TYPE_RADIO_GROUP = 2
    BEHAVIOR_TYPE_OVERLAY_1 = 3
    BEHAVIOR_TYPE_OVERLAY_2 = 4
    BEHAVIOR_TYPE_PERMAMENT_LOCK = 129
    BEHAVIOR_TYPE_PERMAMENT_RADIO_GROUP = 130
    BEHAVIOR_TYPE_PERMAMENT_OVERLAY_1 = 131
    BEHAVIOR_TYPE_PERMAMENT_OVERLAY_2 = 132
    class SetBehavior < FFI::Struct
      layout \
          :keycode, :keycode_t,
          :behavior, Behavior,
          :pad1, [:uint8, 1]
    end

    class SetBehaviorIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_set_behavior_next, [:pointer], :void
    attach_function :xcb_set_behavior_end, [:pointer], GenericIterator
    class SetExplicit < FFI::Struct
      layout \
          :keycode, :keycode_t,
          :explicit, :uint8
    end

    class SetExplicitIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_set_explicit_next, [:pointer], :void
    attach_function :xcb_set_explicit_end, [:pointer], GenericIterator
    class KeyModMap < FFI::Struct
      layout \
          :keycode, :keycode_t,
          :mods, :uint8
    end

    class KeyModMapIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_key_mod_map_next, [:pointer], :void
    attach_function :xcb_key_mod_map_end, [:pointer], GenericIterator
    class KeyVModMap < FFI::Struct
      layout \
          :keycode, :keycode_t,
          :pad1, [:uint8, 1],
          :vmods, :uint16
    end

    class KeyVModMapIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_key_v_mod_map_next, [:pointer], :void
    attach_function :xcb_key_v_mod_map_end, [:pointer], GenericIterator
    class KTSetMapEntry < FFI::Struct
      layout \
          :level, :uint8,
          :realMods, :uint8,
          :virtualMods, :uint16
    end

    class KTSetMapEntryIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_kt_set_map_entry_next, [:pointer], :void
    attach_function :xcb_kt_set_map_entry_end, [:pointer], GenericIterator
    class SetKeyType < FFI::Struct
      layout \
          :mask, :uint8,
          :realMods, :uint8,
          :virtualMods, :uint16,
          :numLevels, :uint8,
          :nMapEntries, :uint8,
          :preserve, :bool,
          :pad1, [:uint8, 1]
    end

    class SetKeyTypeIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_set_key_type_next, [:pointer], :void
    attach_function :xcb_set_key_type_end, [:pointer], GenericIterator
    attach_function :xcb_set_key_type_sizeof, [:pointer], :int
    attach_function :xcb_set_key_type_entries_iterator, [:pointer], SetKeyTypeIterator
    attach_function :xcb_set_key_type_entries_length, [:pointer], :int
    attach_function :xcb_set_key_type_preserve_entries_iterator, [:pointer], SetKeyTypeIterator
    attach_function :xcb_set_key_type_preserve_entries_length, [:pointer], :int
    typedef :uint8, :string8_t
    class String8Iterator < FFI::Struct
      layout \
          :data, :window_t,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_string8_next, [:pointer], :void
    attach_function :xcb_string8_end, [:pointer], GenericIterator
    class Property < FFI::Struct
      layout \
          :nameLength, :uint16,
          :valueLength, :uint16
    end

    class PropertyIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_property_next, [:pointer], :void
    attach_function :xcb_property_end, [:pointer], GenericIterator
    attach_function :xcb_property_sizeof, [:pointer], :int
    attach_function :xcb_property_name, [:pointer], :pointer
    attach_function :xcb_property_name_length, [:pointer], :int
    attach_function :xcb_property_value, [:pointer], :pointer
    attach_function :xcb_property_value_length, [:pointer], :int
    class Outline < FFI::Struct
      layout \
          :nPoints, :uint8,
          :cornerRadius, :uint8,
          :pad1, [:uint8, 2]
    end

    class OutlineIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_outline_next, [:pointer], :void
    attach_function :xcb_outline_end, [:pointer], GenericIterator
    attach_function :xcb_outline_sizeof, [:pointer], :int
    attach_function :xcb_outline_points_iterator, [:pointer], OutlineIterator
    attach_function :xcb_outline_points_length, [:pointer], :int
    class Shape < FFI::Struct
      layout \
          :name, :atom_t,
          :nOutlines, :uint8,
          :primaryNdx, :uint8,
          :approxNdx, :uint8,
          :pad1, [:uint8, 1]
    end

    class ShapeIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_shape_next, [:pointer], :void
    attach_function :xcb_shape_end, [:pointer], GenericIterator
    attach_function :xcb_shape_sizeof, [:pointer], :int
    attach_function :xcb_shape_outlines_iterator, [:pointer], ShapeIterator
    attach_function :xcb_shape_outlines_length, [:pointer], :int
    class Key < FFI::Struct
      layout \
          :name_len, [:uint32 , 4],
          :gap, :int16,
          :shapeNdx, :uint8,
          :colorNdx, :uint8
    end

    class KeyIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_key_next, [:pointer], :void
    attach_function :xcb_key_end, [:pointer], GenericIterator
    attach_function :xcb_key_sizeof, [:pointer], :int
    attach_function :xcb_key_name, [:pointer], :pointer
    attach_function :xcb_key_name_length, [:pointer], :int
    class OverlayKey < FFI::Struct
      layout \
          :over_len, [:uint32 , 4],
          :under_len, [:uint32 , 4]
    end

    class OverlayKeyIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_overlay_key_next, [:pointer], :void
    attach_function :xcb_overlay_key_end, [:pointer], GenericIterator
    attach_function :xcb_overlay_key_sizeof, [:pointer], :int
    attach_function :xcb_overlay_key_over, [:pointer], :pointer
    attach_function :xcb_overlay_key_over_length, [:pointer], :int
    attach_function :xcb_overlay_key_under, [:pointer], :pointer
    attach_function :xcb_overlay_key_under_length, [:pointer], :int
    class OverlayRow < FFI::Struct
      layout \
          :rowUnder, :uint8,
          :nKeys, :uint8,
          :pad1, [:uint8, 2]
    end

    class OverlayRowIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_overlay_row_next, [:pointer], :void
    attach_function :xcb_overlay_row_end, [:pointer], GenericIterator
    attach_function :xcb_overlay_row_sizeof, [:pointer], :int
    attach_function :xcb_overlay_row_keys_iterator, [:pointer], OverlayRowIterator
    attach_function :xcb_overlay_row_keys_length, [:pointer], :int
    class Overlay < FFI::Struct
      layout \
          :name, :atom_t,
          :nRows, :uint8,
          :pad1, [:uint8, 3]
    end

    class OverlayIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_overlay_next, [:pointer], :void
    attach_function :xcb_overlay_end, [:pointer], GenericIterator
    attach_function :xcb_overlay_sizeof, [:pointer], :int
    attach_function :xcb_overlay_rows_iterator, [:pointer], OverlayIterator
    attach_function :xcb_overlay_rows_length, [:pointer], :int
    class Row < FFI::Struct
      layout \
          :top, :int16,
          :left, :int16,
          :nKeys, :uint8,
          :vertical, :bool,
          :pad1, [:uint8, 2]
    end

    class RowIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_row_next, [:pointer], :void
    attach_function :xcb_row_end, [:pointer], GenericIterator
    attach_function :xcb_row_sizeof, [:pointer], :int
    attach_function :xcb_row_keys_iterator, [:pointer], RowIterator
    attach_function :xcb_row_keys_length, [:pointer], :int
    DOODAD_TYPE_OUTLINE = 1
    DOODAD_TYPE_SOLID = 2
    DOODAD_TYPE_TEXT = 3
    DOODAD_TYPE_INDICATOR = 4
    DOODAD_TYPE_LOGO = 5
    class CommonDoodad < FFI::Struct
      layout \
          :name, :atom_t,
          :type, :uint8,
          :priority, :uint8,
          :top, :int16,
          :left, :int16,
          :angle, :int16
    end

    class CommonDoodadIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_common_doodad_next, [:pointer], :void
    attach_function :xcb_common_doodad_end, [:pointer], GenericIterator
    class ShapeDoodad < FFI::Struct
      layout \
          :name, :atom_t,
          :type, :uint8,
          :priority, :uint8,
          :top, :int16,
          :left, :int16,
          :angle, :int16,
          :colorNdx, :uint8,
          :shapeNdx, :uint8,
          :pad1, [:uint8, 6]
    end

    class ShapeDoodadIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_shape_doodad_next, [:pointer], :void
    attach_function :xcb_shape_doodad_end, [:pointer], GenericIterator
    class TextDoodad < FFI::Struct
      layout \
          :name, :atom_t,
          :type, :uint8,
          :priority, :uint8,
          :top, :int16,
          :left, :int16,
          :angle, :int16,
          :width, :uint16,
          :height, :uint16,
          :colorNdx, :uint8,
          :pad1, [:uint8, 3],
          :text, CountedString16,
          :font, CountedString16
    end

    class TextDoodadIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_text_doodad_next, [:pointer], :void
    attach_function :xcb_text_doodad_end, [:pointer], GenericIterator
    class IndicatorDoodad < FFI::Struct
      layout \
          :name, :atom_t,
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

    class IndicatorDoodadIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_indicator_doodad_next, [:pointer], :void
    attach_function :xcb_indicator_doodad_end, [:pointer], GenericIterator
    class LogoDoodad < FFI::Struct
      layout \
          :name, :atom_t,
          :type, :uint8,
          :priority, :uint8,
          :top, :int16,
          :left, :int16,
          :angle, :int16,
          :colorNdx, :uint8,
          :shapeNdx, :uint8,
          :pad1, [:uint8, 6],
          :logoName, CountedString16
    end

    class LogoDoodadIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_logo_doodad_next, [:pointer], :void
    attach_function :xcb_logo_doodad_end, [:pointer], GenericIterator
    class Doodad < FFI::Union
      layout \
          :common, CommonDoodad,
          :shape, ShapeDoodad,
          :text, TextDoodad,
          :indicator, IndicatorDoodad,
          :logo, LogoDoodad
    end

    class Section < FFI::Struct
      layout \
          :name, :atom_t,
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

    class SectionIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_section_next, [:pointer], :void
    attach_function :xcb_section_end, [:pointer], GenericIterator
    attach_function :xcb_section_sizeof, [:pointer], :int
    attach_function :xcb_section_rows_iterator, [:pointer], SectionIterator
    attach_function :xcb_section_rows_length, [:pointer], :int
    attach_function :xcb_section_doodads, [:pointer], :pointer
    attach_function :xcb_section_doodads_length, [:pointer], :int
    attach_function :xcb_section_overlays_iterator, [:pointer], SectionIterator
    attach_function :xcb_section_overlays_length, [:pointer], :int
    class Listing < FFI::Struct
      layout \
          :flags, :uint16,
          :length, :uint16
    end

    class ListingIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_listing_next, [:pointer], :void
    attach_function :xcb_listing_end, [:pointer], GenericIterator
    attach_function :xcb_listing_sizeof, [:pointer], :int
    attach_function :xcb_listing_string, [:pointer], :pointer
    attach_function :xcb_listing_string_length, [:pointer], :int
    class DeviceLedInfo < FFI::Struct
      layout \
          :ledClass, :ledclassspec_t,
          :ledID, :idspec_t,
          :namesPresent, :uint32,
          :mapsPresent, :uint32,
          :physIndicators, :uint32,
          :state, :uint32
    end

    class DeviceLedInfoIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_device_led_info_next, [:pointer], :void
    attach_function :xcb_device_led_info_end, [:pointer], GenericIterator
    attach_function :xcb_device_led_info_sizeof, [:pointer], :int
    attach_function :xcb_device_led_info_names, [:pointer], :pointer
    attach_function :xcb_device_led_info_names_length, [:pointer], :int
    attach_function :xcb_device_led_info_maps_iterator, [:pointer], DeviceLedInfoIterator
    attach_function :xcb_device_led_info_maps_length, [:pointer], :int
    ERROR_BAD_DEVICE = 255
    ERROR_BAD_CLASS = 254
    ERROR_BAD_ID = 253
    SA_CLEAR_LOCKS = 1 << 0
    SA_LATCH_TO_LOCK = 1 << 1
    SA_USE_MOD_MAP_MODS = 1 << 2
    SA_GROUP_ABSOLUTE = 1 << 2
    SA_TYPE_NO_ACTION = 0
    SA_TYPE_SET_MODS = 1
    SA_TYPE_LATCH_MODS = 2
    SA_TYPE_LOCK_MODS = 3
    SA_TYPE_SET_GROUP = 4
    SA_TYPE_LATCH_GROUP = 5
    SA_TYPE_LOCK_GROUP = 6
    SA_TYPE_MOVE_PTR = 7
    SA_TYPE_PTR_BTN = 8
    SA_TYPE_LOCK_PTR_BTN = 9
    SA_TYPE_SET_PTR_DFLT = 10
    SA_TYPE_ISO_LOCK = 11
    SA_TYPE_TERMINATE = 12
    SA_TYPE_SWITCH_SCREEN = 13
    SA_TYPE_SET_CONTROLS = 14
    SA_TYPE_LOCK_CONTROLS = 15
    SA_TYPE_ACTION_MESSAGE = 16
    SA_TYPE_REDIRECT_KEY = 17
    SA_TYPE_DEVICE_BTN = 18
    SA_TYPE_LOCK_DEVICE_BTN = 19
    SA_TYPE_DEVICE_VALUATOR = 20
    class SANoAction < FFI::Struct
      layout \
          :type, :uint8,
          :pad1, [:uint8, 7]
    end

    class SANoActionIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_sa_no_action_next, [:pointer], :void
    attach_function :xcb_sa_no_action_end, [:pointer], GenericIterator
    class SASetMods < FFI::Struct
      layout \
          :type, :uint8,
          :flags, :uint8,
          :mask, :uint8,
          :realMods, :uint8,
          :vmodsHigh, :uint8,
          :vmodsLow, :uint8,
          :pad1, [:uint8, 2]
    end

    class SASetModsIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_sa_set_mods_next, [:pointer], :void
    attach_function :xcb_sa_set_mods_end, [:pointer], GenericIterator
    typedef SASetMods, :salatchmods_t
    class SALatchModsIterator < FFI::Struct
      layout \
          :data, :window_t,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_sa_latch_mods_next, [:pointer], :void
    attach_function :xcb_sa_latch_mods_end, [:pointer], GenericIterator
    typedef SASetMods, :salockmods_t
    class SALockModsIterator < FFI::Struct
      layout \
          :data, :window_t,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_sa_lock_mods_next, [:pointer], :void
    attach_function :xcb_sa_lock_mods_end, [:pointer], GenericIterator
    class SASetGroup < FFI::Struct
      layout \
          :type, :uint8,
          :flags, :uint8,
          :group, :int8,
          :pad1, [:uint8, 5]
    end

    class SASetGroupIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_sa_set_group_next, [:pointer], :void
    attach_function :xcb_sa_set_group_end, [:pointer], GenericIterator
    typedef SASetGroup, :salatchgroup_t
    class SALatchGroupIterator < FFI::Struct
      layout \
          :data, :window_t,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_sa_latch_group_next, [:pointer], :void
    attach_function :xcb_sa_latch_group_end, [:pointer], GenericIterator
    typedef SASetGroup, :salockgroup_t
    class SALockGroupIterator < FFI::Struct
      layout \
          :data, :window_t,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_sa_lock_group_next, [:pointer], :void
    attach_function :xcb_sa_lock_group_end, [:pointer], GenericIterator
    SA_MOVE_PTR_FLAG_NO_ACCELERATION = 1 << 0
    SA_MOVE_PTR_FLAG_MOVE_ABSOLUTE_X = 1 << 1
    SA_MOVE_PTR_FLAG_MOVE_ABSOLUTE_Y = 1 << 2
    class SAMovePtr < FFI::Struct
      layout \
          :type, :uint8,
          :flags, :uint8,
          :xHigh, :int8,
          :xLow, :uint8,
          :yHigh, :int8,
          :yLow, :uint8,
          :pad1, [:uint8, 2]
    end

    class SAMovePtrIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_sa_move_ptr_next, [:pointer], :void
    attach_function :xcb_sa_move_ptr_end, [:pointer], GenericIterator
    class SAPtrBtn < FFI::Struct
      layout \
          :type, :uint8,
          :flags, :uint8,
          :count, :uint8,
          :button, :uint8,
          :pad1, [:uint8, 4]
    end

    class SAPtrBtnIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_sa_ptr_btn_next, [:pointer], :void
    attach_function :xcb_sa_ptr_btn_end, [:pointer], GenericIterator
    class SALockPtrBtn < FFI::Struct
      layout \
          :type, :uint8,
          :flags, :uint8,
          :pad1, [:uint8, 1],
          :button, :uint8,
          :pad2, [:uint8, 4]
    end

    class SALockPtrBtnIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_sa_lock_ptr_btn_next, [:pointer], :void
    attach_function :xcb_sa_lock_ptr_btn_end, [:pointer], GenericIterator
    SA_SET_PTR_DFLT_FLAG_DFLT_BTN_ABSOLUTE = 1 << 1
    SA_SET_PTR_DFLT_FLAG_AFFECT_DFLT_BUTTON = 1 << 0
    class SASetPtrDflt < FFI::Struct
      layout \
          :type, :uint8,
          :flags, :uint8,
          :affect, :uint8,
          :value, :int8,
          :pad1, [:uint8, 4]
    end

    class SASetPtrDfltIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_sa_set_ptr_dflt_next, [:pointer], :void
    attach_function :xcb_sa_set_ptr_dflt_end, [:pointer], GenericIterator
    SA_ISO_LOCK_FLAG_NO_LOCK = 1 << 0
    SA_ISO_LOCK_FLAG_NO_UNLOCK = 1 << 1
    SA_ISO_LOCK_FLAG_USE_MOD_MAP_MODS = 1 << 2
    SA_ISO_LOCK_FLAG_GROUP_ABSOLUTE = 1 << 2
    SA_ISO_LOCK_FLAG_ISO_DFLT_IS_GROUP = 1 << 3
    SA_ISO_LOCK_NO_AFFECT_CTRLS = 1 << 3
    SA_ISO_LOCK_NO_AFFECT_PTR = 1 << 4
    SA_ISO_LOCK_NO_AFFECT_GROUP = 1 << 5
    SA_ISO_LOCK_NO_AFFECT_MODS = 1 << 6
    class SAIsoLock < FFI::Struct
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

    class SAIsoLockIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_sa_iso_lock_next, [:pointer], :void
    attach_function :xcb_sa_iso_lock_end, [:pointer], GenericIterator
    class SATerminate < FFI::Struct
      layout \
          :type, :uint8,
          :pad1, [:uint8, 7]
    end

    class SATerminateIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_sa_terminate_next, [:pointer], :void
    attach_function :xcb_sa_terminate_end, [:pointer], GenericIterator
    SWITCH_SCREEN_FLAG_APPLICATION = 1 << 0
    SWITCH_SCREEN_FLAG_ABSOLUTE = 1 << 2
    class SASwitchScreen < FFI::Struct
      layout \
          :type, :uint8,
          :flags, :uint8,
          :newScreen, :int8,
          :pad1, [:uint8, 5]
    end

    class SASwitchScreenIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_sa_switch_screen_next, [:pointer], :void
    attach_function :xcb_sa_switch_screen_end, [:pointer], GenericIterator
    BOOL_CTRLS_HIGH_ACCESS_X_FEEDBACK = 1 << 0
    BOOL_CTRLS_HIGH_AUDIBLE_BELL = 1 << 1
    BOOL_CTRLS_HIGH_OVERLAY_1 = 1 << 2
    BOOL_CTRLS_HIGH_OVERLAY_2 = 1 << 3
    BOOL_CTRLS_HIGH_IGNORE_GROUP_LOCK = 1 << 4
    BOOL_CTRLS_LOW_REPEAT_KEYS = 1 << 0
    BOOL_CTRLS_LOW_SLOW_KEYS = 1 << 1
    BOOL_CTRLS_LOW_BOUNCE_KEYS = 1 << 2
    BOOL_CTRLS_LOW_STICKY_KEYS = 1 << 3
    BOOL_CTRLS_LOW_MOUSE_KEYS = 1 << 4
    BOOL_CTRLS_LOW_MOUSE_KEYS_ACCEL = 1 << 5
    BOOL_CTRLS_LOW_ACCESS_X_KEYS = 1 << 6
    BOOL_CTRLS_LOW_ACCESS_X_TIMEOUT = 1 << 7
    class SASetControls < FFI::Struct
      layout \
          :type, :uint8,
          :pad1, [:uint8, 3],
          :boolCtrlsHigh, :uint8,
          :boolCtrlsLow, :uint8,
          :pad2, [:uint8, 2]
    end

    class SASetControlsIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_sa_set_controls_next, [:pointer], :void
    attach_function :xcb_sa_set_controls_end, [:pointer], GenericIterator
    typedef SASetControls, :salockcontrols_t
    class SALockControlsIterator < FFI::Struct
      layout \
          :data, :window_t,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_sa_lock_controls_next, [:pointer], :void
    attach_function :xcb_sa_lock_controls_end, [:pointer], GenericIterator
    ACTION_MESSAGE_FLAG_ON_PRESS = 1 << 0
    ACTION_MESSAGE_FLAG_ON_RELEASE = 1 << 1
    ACTION_MESSAGE_FLAG_GEN_KEY_EVENT = 1 << 2
    class SAActionMessage < FFI::Struct
      layout \
          :type, :uint8,
          :flags, :uint8,
          :message_len, [:uint32 , 6]
    end

    class SAActionMessageIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_sa_action_message_next, [:pointer], :void
    attach_function :xcb_sa_action_message_end, [:pointer], GenericIterator
    attach_function :xcb_sa_action_message_sizeof, [:pointer], :int
    attach_function :xcb_sa_action_message_message, [:pointer], :pointer
    attach_function :xcb_sa_action_message_message_length, [:pointer], :int
    class SARedirectKey < FFI::Struct
      layout \
          :type, :uint8,
          :newkey, :keycode_t,
          :mask, :uint8,
          :realModifiers, :uint8,
          :vmodsMaskHigh, :uint8,
          :vmodsMaskLow, :uint8,
          :vmodsHigh, :uint8,
          :vmodsLow, :uint8
    end

    class SARedirectKeyIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_sa_redirect_key_next, [:pointer], :void
    attach_function :xcb_sa_redirect_key_end, [:pointer], GenericIterator
    class SADeviceBtn < FFI::Struct
      layout \
          :type, :uint8,
          :flags, :uint8,
          :count, :uint8,
          :button, :uint8,
          :device, :uint8,
          :pad1, [:uint8, 3]
    end

    class SADeviceBtnIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_sa_device_btn_next, [:pointer], :void
    attach_function :xcb_sa_device_btn_end, [:pointer], GenericIterator
    LOCK_DEVICE_FLAGS_NO_LOCK = 1 << 0
    LOCK_DEVICE_FLAGS_NO_UNLOCK = 1 << 1
    class SALockDeviceBtn < FFI::Struct
      layout \
          :type, :uint8,
          :flags, :uint8,
          :pad1, [:uint8, 1],
          :button, :uint8,
          :device, :uint8
    end

    class SALockDeviceBtnIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_sa_lock_device_btn_next, [:pointer], :void
    attach_function :xcb_sa_lock_device_btn_end, [:pointer], GenericIterator
    SA_VAL_WHAT_IGNORE_VAL = 0
    SA_VAL_WHAT_SET_VAL_MIN = 1
    SA_VAL_WHAT_SET_VAL_CENTER = 2
    SA_VAL_WHAT_SET_VAL_MAX = 3
    SA_VAL_WHAT_SET_VAL_RELATIVE = 4
    SA_VAL_WHAT_SET_VAL_ABSOLUTE = 5
    class SADeviceValuator < FFI::Struct
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

    class SADeviceValuatorIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_sa_device_valuator_next, [:pointer], :void
    attach_function :xcb_sa_device_valuator_end, [:pointer], GenericIterator
    class Action < FFI::Union
      layout \
          :noaction, SANoAction,
          :setmods, SASetMods,
          :latchmods, :salatchmods_t,
          :lockmods, :salockmods_t,
          :setgroup, SASetGroup,
          :latchgroup, :salatchgroup_t,
          :lockgroup, :salockgroup_t,
          :moveptr, SAMovePtr,
          :ptrbtn, SAPtrBtn,
          :lockptrbtn, SALockPtrBtn,
          :setptrdflt, SASetPtrDflt,
          :isolock, SAIsoLock,
          :terminate, SATerminate,
          :switchscreen, SASwitchScreen,
          :setcontrols, SASetControls,
          :lockcontrols, :salockcontrols_t,
          :message, SAActionMessage,
          :redirect, SARedirectKey,
          :devbtn, SADeviceBtn,
          :lockdevbtn, SALockDeviceBtn,
          :devval, SADeviceValuator,
          :type, :uint8
    end

    class NewKeyboardNotifyEvent < FFI::Struct
      layout \
          :response_type, :uint8,
          :time, :timestamp_t,
          :deviceID, :uint8,
          :oldDeviceID, :uint8,
          :minKeyCode, :keycode_t,
          :maxKeyCode, :keycode_t,
          :oldMinKeyCode, :keycode_t,
          :oldMaxKeyCode, :keycode_t,
          :requestMajor, :uint8,
          :requestMinor, :uint8,
          :changed, :uint16,
          :pad1, [:uint8, 14]
    end

    class MapNotifyEvent < FFI::Struct
      layout \
          :response_type, :uint8,
          :time, :timestamp_t,
          :deviceID, :uint8,
          :ptrBtnActions, :uint8,
          :changed, :uint16,
          :minKeyCode, :keycode_t,
          :maxKeyCode, :keycode_t,
          :firstType, :uint8,
          :nTypes, :uint8,
          :firstKeySym, :keycode_t,
          :nKeySyms, :uint8,
          :firstKeyAct, :keycode_t,
          :nKeyActs, :uint8,
          :firstKeyBehavior, :keycode_t,
          :nKeyBehavior, :uint8,
          :firstKeyExplicit, :keycode_t,
          :nKeyExplicit, :uint8,
          :firstModMapKey, :keycode_t,
          :nModMapKeys, :uint8,
          :firstVModMapKey, :keycode_t,
          :nVModMapKeys, :uint8,
          :virtualMods, :uint16,
          :pad1, [:uint8, 2]
    end

    class StateNotifyEvent < FFI::Struct
      layout \
          :response_type, :uint8,
          :time, :timestamp_t,
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
          :keycode, :keycode_t,
          :eventType, :uint8,
          :requestMajor, :uint8,
          :requestMinor, :uint8
    end

    class ControlsNotifyEvent < FFI::Struct
      layout \
          :response_type, :uint8,
          :time, :timestamp_t,
          :deviceID, :uint8,
          :numGroups, :uint8,
          :pad1, [:uint8, 2],
          :changedControls, :uint32,
          :enabledControls, :uint32,
          :enabledControlChanges, :uint32,
          :keycode, :keycode_t,
          :eventType, :uint8,
          :requestMajor, :uint8,
          :requestMinor, :uint8,
          :pad2, [:uint8, 4]
    end

    class IndicatorStateNotifyEvent < FFI::Struct
      layout \
          :response_type, :uint8,
          :time, :timestamp_t,
          :deviceID, :uint8,
          :pad1, [:uint8, 3],
          :state, :uint32,
          :stateChanged, :uint32,
          :pad2, [:uint8, 12]
    end

    class IndicatorMapNotifyEvent < FFI::Struct
      layout \
          :response_type, :uint8,
          :time, :timestamp_t,
          :deviceID, :uint8,
          :pad1, [:uint8, 3],
          :state, :uint32,
          :mapChanged, :uint32,
          :pad2, [:uint8, 12]
    end

    class NamesNotifyEvent < FFI::Struct
      layout \
          :response_type, :uint8,
          :time, :timestamp_t,
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
          :firstKey, :keycode_t,
          :nKeys, :uint8,
          :changedIndicators, :uint32,
          :pad3, [:uint8, 4]
    end

    class CompatMapNotifyEvent < FFI::Struct
      layout \
          :response_type, :uint8,
          :time, :timestamp_t,
          :deviceID, :uint8,
          :changedGroups, :uint8,
          :firstSI, :uint16,
          :nSI, :uint16,
          :nTotalSI, :uint16,
          :pad1, [:uint8, 16]
    end

    class BellNotifyEvent < FFI::Struct
      layout \
          :response_type, :uint8,
          :time, :timestamp_t,
          :deviceID, :uint8,
          :bellClass, :uint8,
          :bellID, :uint8,
          :percent, :uint8,
          :pitch, :uint16,
          :duration, :uint16,
          :name, :atom_t,
          :window, :window_t,
          :eventOnly, :bool,
          :pad1, [:uint8, 7]
    end

    class ActionMessageEvent < FFI::Struct
      layout \
          :response_type, :uint8,
          :time, :timestamp_t,
          :deviceID, :uint8,
          :keycode, :keycode_t,
          :press, :bool,
          :keyEventFollows, :bool,
          :mods, :uint8,
          :group, :uint8,
          :message_len, [:uint32 , 8],
          :pad1, [:uint8, 10]
    end

    class AccessXNotifyEvent < FFI::Struct
      layout \
          :response_type, :uint8,
          :time, :timestamp_t,
          :deviceID, :uint8,
          :keycode, :keycode_t,
          :detailt, :uint16,
          :slowKeysDelay, :uint16,
          :debounceDelay, :uint16,
          :pad1, [:uint8, 16]
    end

    class ExtensionDeviceNotifyEvent < FFI::Struct
      layout \
          :response_type, :uint8,
          :time, :timestamp_t,
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

    class KeyboardError < FFI::Struct
      layout \
          :response_type, :uint8,
          :error_code, :uint8,
          :sequence, :uint16,
          :value, :uint32,
          :minorOpcode, :uint16,
          :majorOpcode, :uint8,
          :pad1, [:uint8, 21]
    end

    class UseExtensionRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :serverMajor, :uint16,
          :serverMinor, :uint16,
          :pad1, [:uint8, 20]
    end

    class UseExtensionCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_use_extension, [:pointer,:uint8,:uint16,:uint16], UseExtensionCookie
    class UseExtensionReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :supported, :bool,
          :sequence, :uint16,
          :length, :uint32,
          :serverMajor, :uint16,
          :serverMinor, :uint16,
          :pad1, [:uint8, 20]
    end

    attach_function :xcb_use_extension_reply, [:pointer, UseExtensionCookie, :pointer], :pointer

        
    class SelectEventsRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :affectExtDev, :uint16,
          :extdevDetails, :uint16
    end

    class SelectEventsCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_select_events_checked, [:pointer,:uint8,:uint16,:uint16], SelectEventsCookie
    attach_function :xcb_select_events, [:pointer,:uint8,:uint16,:uint16], SelectEventsCookie
    class BellRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :deviceSpec, :devicespec_t,
          :bellClass, :bellclassspec_t,
          :bellID, :idspec_t,
          :percent, :int8,
          :forceSound, :bool,
          :eventOnly, :bool,
          :pad1, [:uint8, 1],
          :pitch, :int16,
          :duration, :int16,
          :pad2, [:uint8, 2],
          :name, :atom_t,
          :window, :window_t
    end

    class BellCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_bell_checked, [:pointer,:uint8,:devicespec_t,:bellclassspec_t,:idspec_t,:int8,:bool,:bool,:int16,:int16,:atom_t,:window_t], BellCookie
    attach_function :xcb_bell, [:pointer,:uint8,:devicespec_t,:bellclassspec_t,:idspec_t,:int8,:bool,:bool,:int16,:int16,:atom_t,:window_t], BellCookie
    class GetStateRequest < FFI::Struct
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

    class GetStateCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_state, [:pointer,:uint8,:uint8,:uint8,:uint8,:uint8,:uint8,:uint8,:int16,:int16,:uint8,:uint8,:uint8,:uint8,:uint8,:uint16], GetStateCookie
    class GetStateReply < FFI::Struct
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

    attach_function :xcb_get_state_reply, [:pointer, GetStateCookie, :pointer], :pointer

        
    class LatchLockStateRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :deviceSpec, :devicespec_t,
          :affectModLocks, :uint8,
          :modLocks, :uint8,
          :lockGroup, :bool,
          :groupLock, :uint8,
          :affectModLatches, :uint8,
          :pad1, [:uint8, 1],
          :latchGroup, :bool,
          :groupLatch, :uint16
    end

    class LatchLockStateCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_latch_lock_state_checked, [:pointer,:uint8,:devicespec_t,:uint8,:uint8,:bool,:uint8,:uint8,:bool,:uint16], LatchLockStateCookie
    attach_function :xcb_latch_lock_state, [:pointer,:uint8,:devicespec_t,:uint8,:uint8,:bool,:uint8,:uint8,:bool,:uint16], LatchLockStateCookie
    class GetControlsRequest < FFI::Struct
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
          :accessXOption, AXOption,
          :accessXTimeout, :uint16,
          :accessXTimeoutOptionsMask, AXOption,
          :accessXTimeoutOptionsValues, AXOption,
          :pad2, [:uint8, 2],
          :accessXTimeoutMask, :uint32,
          :accessXTimeoutValues, :uint32,
          :enabledControls, :uint32,
          :perKeyRepeat_len, [:uint32 , 32]
    end

    class GetControlsCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_controls, [:pointer,:uint8,:uint8,:uint8,:uint8,:uint8,:uint8,:uint8,:uint8,:uint16,:uint16,:uint16,:uint16,:uint16,:uint16,:uint16,:uint16,:uint16,:uint16,:int16,AXOption,:uint16,AXOption,AXOption,:uint32,:uint32,:uint32,:uint32], GetControlsCookie
    class GetControlsReply < FFI::Struct
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
          :accessXOption, AXOption,
          :accessXTimeout, :uint16,
          :accessXTimeoutOptionsMask, AXOption,
          :accessXTimeoutOptionsValues, AXOption,
          :pad2, [:uint8, 2],
          :accessXTimeoutMask, :uint32,
          :accessXTimeoutValues, :uint32,
          :enabledControls, :uint32,
          :perKeyRepeat_len, [:uint32 , 32]
    end

    attach_function :xcb_get_controls_reply, [:pointer, GetControlsCookie, :pointer], :pointer

        
    class SetControlsRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :deviceSpec, :devicespec_t,
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
          :accessXOptions, AXOption,
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
          :accessXTimeoutOptionsMask, AXOption,
          :accessXTimeoutOptionsValues, AXOption,
          :perKeyRepeat_len, [:uint32 , 32]
    end

    class SetControlsCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_set_controls_checked, [:pointer,:uint8,:devicespec_t,:uint8,:uint8,:uint8,:uint8,:uint16,:uint16,:uint16,:uint16,:uint8,:uint8,AXOption,:uint32,:uint32,:uint32,:uint16,:uint16,:uint16,:uint16,:uint16,:uint16,:uint16,:uint16,:int16,:uint16,:uint32,:uint32,AXOption,AXOption,:uint32], SetControlsCookie
    attach_function :xcb_set_controls, [:pointer,:uint8,:devicespec_t,:uint8,:uint8,:uint8,:uint8,:uint16,:uint16,:uint16,:uint16,:uint8,:uint8,AXOption,:uint32,:uint32,:uint32,:uint16,:uint16,:uint16,:uint16,:uint16,:uint16,:uint16,:uint16,:int16,:uint16,:uint32,:uint32,AXOption,AXOption,:uint32], SetControlsCookie
    class GetMapRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16
    end

    class GetMapCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_map, [:pointer,:uint8], GetMapCookie
    class GetMapReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :sequence, :uint16,
          :length, :uint32
    end

    attach_function :xcb_get_map_reply, [:pointer, GetMapCookie, :pointer], :pointer

        
    class SetMapRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16
    end

    class SetMapCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_set_map_checked, [:pointer,:uint8,:uint32], SetMapCookie
    attach_function :xcb_set_map, [:pointer,:uint8,:uint32], SetMapCookie
    class GetCompatMapRequest < FFI::Struct
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

    class GetCompatMapCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_compat_map, [:pointer,:uint8,:uint8,:uint16,:uint16,:uint16,:uint32,:uint32], GetCompatMapCookie
    class GetCompatMapReply < FFI::Struct
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

    attach_function :xcb_get_compat_map_reply, [:pointer, GetCompatMapCookie, :pointer], :pointer

        
    class SetCompatMapRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :deviceSpec, :devicespec_t,
          :pad1, [:uint8, 1],
          :recomputeActions, :bool,
          :truncateSI, :bool,
          :groups, :uint8,
          :firstSI, :uint16,
          :nSI, :uint16,
          :pad2, [:uint8, 2],
          :si_len, [:uint32 , 16]
    end

    class SetCompatMapCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_set_compat_map_checked, [:pointer,:uint8,:devicespec_t,:bool,:bool,:uint8,:uint16,:uint16,:uint32,:uint32], SetCompatMapCookie
    attach_function :xcb_set_compat_map, [:pointer,:uint8,:devicespec_t,:bool,:bool,:uint8,:uint16,:uint16,:uint32,:uint32], SetCompatMapCookie
    class GetIndicatorStateRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :state, :uint32,
          :pad1, [:uint8, 20]
    end

    class GetIndicatorStateCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_indicator_state, [:pointer,:uint8,:uint32], GetIndicatorStateCookie
    class GetIndicatorStateReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :deviceID, :uint8,
          :sequence, :uint16,
          :length, :uint32,
          :state, :uint32,
          :pad1, [:uint8, 20]
    end

    attach_function :xcb_get_indicator_state_reply, [:pointer, GetIndicatorStateCookie, :pointer], :pointer

        
    class GetIndicatorMapRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :which, :uint32,
          :realIndicators, :uint32,
          :nIndicators, :uint8,
          :pad1, [:uint8, 15]
    end

    class GetIndicatorMapCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_indicator_map, [:pointer,:uint8,:uint32,:uint32,:uint8,:uint32], GetIndicatorMapCookie
    class GetIndicatorMapReply < FFI::Struct
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

    attach_function :xcb_get_indicator_map_reply, [:pointer, GetIndicatorMapCookie, :pointer], :pointer

        
    class SetIndicatorMapRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :deviceSpec, :devicespec_t,
          :pad1, [:uint8, 2],
          :which, :uint32
    end

    class SetIndicatorMapCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_set_indicator_map_checked, [:pointer,:uint8,:devicespec_t,:uint32,:uint32], SetIndicatorMapCookie
    attach_function :xcb_set_indicator_map, [:pointer,:uint8,:devicespec_t,:uint32,:uint32], SetIndicatorMapCookie
    class GetNamedIndicatorRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :indicator, :atom_t,
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

    class GetNamedIndicatorCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_named_indicator, [:pointer,:uint8,:atom_t,:bool,:bool,:bool,:uint8,:uint8,:uint8,:uint8,:uint8,:uint8,:uint8,:uint16,:uint32], GetNamedIndicatorCookie
    class GetNamedIndicatorReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :deviceID, :uint8,
          :sequence, :uint16,
          :length, :uint32,
          :indicator, :atom_t,
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

    attach_function :xcb_get_named_indicator_reply, [:pointer, GetNamedIndicatorCookie, :pointer], :pointer

        
    class SetNamedIndicatorRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :deviceSpec, :devicespec_t,
          :ledClass, :ledclassspec_t,
          :ledID, :idspec_t,
          :pad1, [:uint8, 2],
          :indicator, :atom_t,
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

    class SetNamedIndicatorCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_set_named_indicator_checked, [:pointer,:uint8,:devicespec_t,:ledclassspec_t,:idspec_t,:atom_t,:bool,:bool,:bool,:bool,:uint8,:uint8,:uint8,:uint8,:uint8,:uint16,:uint32], SetNamedIndicatorCookie
    attach_function :xcb_set_named_indicator, [:pointer,:uint8,:devicespec_t,:ledclassspec_t,:idspec_t,:atom_t,:bool,:bool,:bool,:bool,:uint8,:uint8,:uint8,:uint8,:uint8,:uint16,:uint32], SetNamedIndicatorCookie
    class GetNamesRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16
    end

    class GetNamesCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_names, [:pointer,:uint8], GetNamesCookie
    class GetNamesReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :sequence, :uint16,
          :length, :uint32
    end

    attach_function :xcb_get_names_reply, [:pointer, GetNamesCookie, :pointer], :pointer

        
    class SetNamesRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16
    end

    class SetNamesCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_set_names_checked, [:pointer,:uint8,:uint32], SetNamesCookie
    attach_function :xcb_set_names, [:pointer,:uint8,:uint32], SetNamesCookie
    class GetGeometryRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :name, :atom_t,
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
          :labelFont, CountedString16
    end

    class GetGeometryCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_geometry, [:pointer,:uint8,:atom_t,:bool,:uint16,:uint16,:uint16,:uint16,:uint16,:uint16,:uint16,:uint16,:uint8,:uint8,CountedString16,:uint32,:uint32,:uint32,:uint32,:uint32,:uint32], GetGeometryCookie
    class GetGeometryReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :deviceID, :uint8,
          :sequence, :uint16,
          :length, :uint32,
          :name, :atom_t,
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
          :labelFont, CountedString16
    end

    attach_function :xcb_get_geometry_reply, [:pointer, GetGeometryCookie, :pointer], :pointer

        
    class SetGeometryRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :deviceSpec, :devicespec_t,
          :nShapes, :uint8,
          :nSections, :uint8,
          :name, :atom_t,
          :widthMM, :uint16,
          :heightMM, :uint16,
          :nProperties, :uint16,
          :nColors, :uint16,
          :nDoodads, :uint16,
          :nKeyAliases, :uint16,
          :baseColorNdx, :uint8,
          :labelColorNdx, :uint8,
          :pad1, [:uint8, 2],
          :labelFont, CountedString16
    end

    class SetGeometryCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_set_geometry_checked, [:pointer,:uint8,:devicespec_t,:uint8,:uint8,:atom_t,:uint16,:uint16,:uint16,:uint16,:uint16,:uint16,:uint8,:uint8,CountedString16,:uint32,:uint32,:uint32,:uint32,:uint32,:uint32], SetGeometryCookie
    attach_function :xcb_set_geometry, [:pointer,:uint8,:devicespec_t,:uint8,:uint8,:atom_t,:uint16,:uint16,:uint16,:uint16,:uint16,:uint16,:uint8,:uint8,CountedString16,:uint32,:uint32,:uint32,:uint32,:uint32,:uint32], SetGeometryCookie
    class PerClientFlagsRequest < FFI::Struct
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

    class PerClientFlagsCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_per_client_flags, [:pointer,:uint8,:uint32,:uint32,:uint32,:uint32], PerClientFlagsCookie
    class PerClientFlagsReply < FFI::Struct
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

    attach_function :xcb_per_client_flags_reply, [:pointer, PerClientFlagsCookie, :pointer], :pointer

        
    class ListComponentsRequest < FFI::Struct
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

    class ListComponentsCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_list_components, [:pointer,:uint8,:uint16,:uint16,:uint16,:uint16,:uint16,:uint16,:uint16,:uint32,:uint32,:uint32,:uint32,:uint32,:uint32], ListComponentsCookie
    class ListComponentsReply < FFI::Struct
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

    attach_function :xcb_list_components_reply, [:pointer, ListComponentsCookie, :pointer], :pointer

        
    class GetKbdByNameRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :name, :atom_t,
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
          :labelFont, CountedString16
    end

    class GetKbdByNameCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_kbd_by_name, [:pointer,:uint8,:atom_t,:bool,:uint16,:uint16,:uint16,:uint16,:uint16,:uint16,:uint16,:uint16,:uint8,:uint8,CountedString16,:uint32,:uint32,:uint32,:uint32,:uint32,:uint32], GetKbdByNameCookie
    class GetKbdByNameReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :geometryDeviceID, :uint8,
          :sequence, :uint16,
          :length, :uint32,
          :name, :atom_t,
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
          :labelFont, CountedString16
    end

    attach_function :xcb_get_kbd_by_name_reply, [:pointer, GetKbdByNameCookie, :pointer], :pointer

        
    class GetDeviceInfoRequest < FFI::Struct
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
          :devType, :atom_t,
          :nameLen, :uint16
    end

    class GetDeviceInfoCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_device_info, [:pointer,:uint8,:uint16,:uint16,:uint16,:uint16,:uint8,:uint8,:uint8,:uint8,:uint8,:bool,:uint16,:uint16,:atom_t,:uint16,:uint32,:uint32,:uint32], GetDeviceInfoCookie
    class GetDeviceInfoReply < FFI::Struct
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
          :devType, :atom_t,
          :nameLen, :uint16
    end

    attach_function :xcb_get_device_info_reply, [:pointer, GetDeviceInfoCookie, :pointer], :pointer

        
    class SetDeviceInfoRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :deviceSpec, :devicespec_t,
          :firstBtn, :uint8,
          :nBtns, :uint8,
          :change, :uint16,
          :nDeviceLedFBs, :uint16
    end

    class SetDeviceInfoCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_set_device_info_checked, [:pointer,:uint8,:devicespec_t,:uint8,:uint8,:uint16,:uint16,:uint32,:uint32], SetDeviceInfoCookie
    attach_function :xcb_set_device_info, [:pointer,:uint8,:devicespec_t,:uint8,:uint8,:uint16,:uint16,:uint32,:uint32], SetDeviceInfoCookie
    class SetDebuggingFlagsRequest < FFI::Struct
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

    class SetDebuggingFlagsCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_set_debugging_flags, [:pointer,:uint8,:uint32,:uint32,:uint32,:uint32], SetDebuggingFlagsCookie
    class SetDebuggingFlagsReply < FFI::Struct
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

    attach_function :xcb_set_debugging_flags_reply, [:pointer, SetDebuggingFlagsCookie, :pointer], :pointer

        
  end
end
