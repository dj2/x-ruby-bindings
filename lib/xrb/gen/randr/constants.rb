#
# This file was auto-generated. Do not edit.
#

module Xrb
  module RandR
    # Rotation
    ROTATION_ROTATE_0 = (1 << 0),
    ROTATION_ROTATE_90 = (1 << 1),
    ROTATION_ROTATE_180 = (1 << 2),
    ROTATION_ROTATE_270 = (1 << 3),
    ROTATION_REFLECT_X = (1 << 4),
    ROTATION_REFLECT_Y = (1 << 5)
    
    # SetConfig
    SET_CONFIG_SUCCESS = (0),
    SET_CONFIG_INVALID_CONFIG_TIME = (1),
    SET_CONFIG_INVALID_TIME = (2),
    SET_CONFIG_FAILED = (3)
    
    # NotifyMask
    NOTIFY_MASK_SCREEN_CHANGE = (1 << 0),
    NOTIFY_MASK_CRTC_CHANGE = (1 << 1),
    NOTIFY_MASK_OUTPUT_CHANGE = (1 << 2),
    NOTIFY_MASK_OUTPUT_PROPERTY = (1 << 3)
    
    # ModeFlag
    MODE_FLAG_HSYNC_POSITIVE = (1 << 0),
    MODE_FLAG_HSYNC_NEGATIVE = (1 << 1),
    MODE_FLAG_VSYNC_POSITIVE = (1 << 2),
    MODE_FLAG_VSYNC_NEGATIVE = (1 << 3),
    MODE_FLAG_INTERLACE = (1 << 4),
    MODE_FLAG_DOUBLE_SCAN = (1 << 5),
    MODE_FLAG_CSYNC = (1 << 6),
    MODE_FLAG_CSYNC_POSITIVE = (1 << 7),
    MODE_FLAG_CSYNC_NEGATIVE = (1 << 8),
    MODE_FLAG_HSKEW_PRESENT = (1 << 9),
    MODE_FLAG_BCAST = (1 << 10),
    MODE_FLAG_PIXEL_MULTIPLEX = (1 << 11),
    MODE_FLAG_DOUBLE_CLOCK = (1 << 12),
    MODE_FLAG_HALVE_CLOCK = (1 << 13)
    
    # Connection
    CONNECTION_CONNECTED = (1),
    CONNECTION_DISCONNECTED = (2),
    CONNECTION_UNKNOWN = (3)
    
    # Notify
    NOTIFY_CRTC_CHANGE = (0),
    NOTIFY_OUTPUT_CHANGE = (1),
    NOTIFY_OUTPUT_PROPERTY = (2)
    
  end
end