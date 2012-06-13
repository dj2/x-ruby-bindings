#
# This file was auto-generated. Do not edit.
#

module Xrb
  module Xv
    # Type
    TYPE_INPUT_MASK = (1 << 0),
    TYPE_OUTPUT_MASK = (1 << 1),
    TYPE_VIDEO_MASK = (1 << 2),
    TYPE_STILL_MASK = (1 << 3),
    TYPE_IMAGE_MASK = (1 << 4)
    
    # ImageFormatInfoType
    IMAGE_FORMAT_INFO_TYPE_RGB = (1),
    IMAGE_FORMAT_INFO_TYPE_YUV = (2)
    
    # ImageFormatInfoFormat
    IMAGE_FORMAT_INFO_FORMAT_PACKED = (1),
    IMAGE_FORMAT_INFO_FORMAT_PLANAR = (2)
    
    # AttributeFlag
    ATTRIBUTE_FLAG_GETTABLE = (1 << 0),
    ATTRIBUTE_FLAG_SETTABLE = (1 << 1)
    
    # VideoNotifyReason
    VIDEO_NOTIFY_REASON_STARTED = (1),
    VIDEO_NOTIFY_REASON_STOPPED = (2),
    VIDEO_NOTIFY_REASON_BUSY = (3),
    VIDEO_NOTIFY_REASON_PREEMPTED = (4),
    VIDEO_NOTIFY_REASON_HARD_ERROR = (5)
    
    # ScanlineOrder
    SCANLINE_ORDER_TOP_TO_BOTTOM = (1),
    SCANLINE_ORDER_BOTTOM_TO_TOP = (2)
    
    # GrabPortStatus
    GRAB_PORT_STATUS_SUCCESS = (1),
    GRAB_PORT_STATUS_BAD_EXTENSION = (2),
    GRAB_PORT_STATUS_ALREADY_GRABBED = (3),
    GRAB_PORT_STATUS_INVALID_TIME = (4),
    GRAB_PORT_STATUS_BAD_REPLY = (5),
    GRAB_PORT_STATUS_BAD_ALLOC = (6)
    
  end
end
