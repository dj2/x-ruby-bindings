#
# This file auto-generated. Do not edit.
#

require 'ffi'
require 'xrb/xproto'
require 'xrb/shm'
class Xrb
  class Xv
    extend FFI::Library
    ffi_lib 'xv'
    MAJOR_VERSION = 2
    MINOR_VERSION = 2
    typedef :uint32, :xrb_port_t
    class XrbPortIterator < FFI::Struct
      layout \
          :data, :xrb_window_t,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_port_next, [:pointer], :void
    attach_function :xcb_port_end, [:pointer], XrbGenericIterator
    typedef :uint32, :xrb_encoding_t
    class XrbEncodingIterator < FFI::Struct
      layout \
          :data, :xrb_window_t,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_encoding_next, [:pointer], :void
    attach_function :xcb_encoding_end, [:pointer], XrbGenericIterator
    XRB_TYPE_INPUT_MASK = 1 << 0
    XRB_TYPE_OUTPUT_MASK = 1 << 1
    XRB_TYPE_VIDEO_MASK = 1 << 2
    XRB_TYPE_STILL_MASK = 1 << 3
    XRB_TYPE_IMAGE_MASK = 1 << 4
    XRB_IMAGE_FORMAT_INFO_TYPE_RGB = 1
    XRB_IMAGE_FORMAT_INFO_TYPE_YUV = 2
    XRB_IMAGE_FORMAT_INFO_FORMAT_PACKED = 1
    XRB_IMAGE_FORMAT_INFO_FORMAT_PLANAR = 2
    XRB_ATTRIBUTE_FLAG_GETTABLE = 1 << 0
    XRB_ATTRIBUTE_FLAG_SETTABLE = 1 << 1
    XRB_VIDEO_NOTIFY_REASON_STARTED = 1
    XRB_VIDEO_NOTIFY_REASON_STOPPED = 2
    XRB_VIDEO_NOTIFY_REASON_BUSY = 3
    XRB_VIDEO_NOTIFY_REASON_PREEMPTED = 4
    XRB_VIDEO_NOTIFY_REASON_HARD_ERROR = 5
    XRB_SCANLINE_ORDER_TOP_TO_BOTTOM = 1
    XRB_SCANLINE_ORDER_BOTTOM_TO_TOP = 2
    XRB_GRAB_PORT_STATUS_SUCCESS = 1
    XRB_GRAB_PORT_STATUS_BAD_EXTENSION = 2
    XRB_GRAB_PORT_STATUS_ALREADY_GRABBED = 3
    XRB_GRAB_PORT_STATUS_INVALID_TIME = 4
    XRB_GRAB_PORT_STATUS_BAD_REPLY = 5
    XRB_GRAB_PORT_STATUS_BAD_ALLOC = 6
    class XrbRational < FFI::Struct
      layout \
          :numerator, :int32,
          :denominator, :int32
    end

    class XrbRationalIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_rational_next, [:pointer], :void
    attach_function :xcb_rational_end, [:pointer], XrbGenericIterator
    class XrbFormat < FFI::Struct
      layout \
          :visual, :xrb_visualid_t,
          :depth, :uint8,
          :pad1, [:uint8, 3]
    end

    class XrbFormatIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_format_next, [:pointer], :void
    attach_function :xcb_format_end, [:pointer], XrbGenericIterator
    class XrbAdaptorInfo < FFI::Struct
      layout \
          :base_id, :xrb_port_t,
          :name_size, :uint16,
          :num_ports, :uint16,
          :num_formats, :uint16,
          :type, :uint8,
          :pad1, [:uint8, 1]
    end

    class XrbAdaptorInfoIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_adaptor_info_next, [:pointer], :void
    attach_function :xcb_adaptor_info_end, [:pointer], XrbGenericIterator
    attach_function :xcb_adaptor_info_sizeof, [:pointer], :int
    attach_function :xcb_adaptor_info_name, [:pointer], :pointer
    attach_function :xcb_adaptor_info_name_length, [:pointer], :int
    attach_function :xcb_adaptor_info_formats_iterator, [:pointer], XrbAdaptorInfoIterator
    attach_function :xcb_adaptor_info_formats_length, [:pointer], :int
    class XrbEncodingInfo < FFI::Struct
      layout \
          :encoding, :xrb_encoding_t,
          :name_size, :uint16,
          :width, :uint16,
          :height, :uint16,
          :pad1, [:uint8, 2],
          :rate, XrbRational
    end

    class XrbEncodingInfoIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_encoding_info_next, [:pointer], :void
    attach_function :xcb_encoding_info_end, [:pointer], XrbGenericIterator
    attach_function :xcb_encoding_info_sizeof, [:pointer], :int
    attach_function :xcb_encoding_info_name, [:pointer], :pointer
    attach_function :xcb_encoding_info_name_length, [:pointer], :int
    class XrbImage < FFI::Struct
      layout \
          :id, :uint32,
          :width, :uint16,
          :height, :uint16,
          :data_size, :uint32,
          :num_planes, :uint32
    end

    class XrbImageIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_image_next, [:pointer], :void
    attach_function :xcb_image_end, [:pointer], XrbGenericIterator
    attach_function :xcb_image_sizeof, [:pointer], :int
    attach_function :xcb_image_pitches, [:pointer], :pointer
    attach_function :xcb_image_pitches_length, [:pointer], :int
    attach_function :xcb_image_offsets, [:pointer], :pointer
    attach_function :xcb_image_offsets_length, [:pointer], :int
    attach_function :xcb_image_data, [:pointer], :pointer
    attach_function :xcb_image_data_length, [:pointer], :int
    class XrbAttributeInfo < FFI::Struct
      layout \
          :flags, :uint32,
          :min, :int32,
          :max, :int32,
          :size, :uint32
    end

    class XrbAttributeInfoIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_attribute_info_next, [:pointer], :void
    attach_function :xcb_attribute_info_end, [:pointer], XrbGenericIterator
    attach_function :xcb_attribute_info_sizeof, [:pointer], :int
    attach_function :xcb_attribute_info_name, [:pointer], :pointer
    attach_function :xcb_attribute_info_name_length, [:pointer], :int
    class XrbImageFormatInfo < FFI::Struct
      layout \
          :id, :uint32,
          :type, :uint8,
          :byte_order, :uint8,
          :pad1, [:uint8, 2],
          :guid_len, [:uint32 , 16],
          :bpp, :uint8,
          :num_planes, :uint8,
          :pad2, [:uint8, 2],
          :depth, :uint8,
          :pad3, [:uint8, 3],
          :red_mask, :uint32,
          :green_mask, :uint32,
          :blue_mask, :uint32,
          :format, :uint8,
          :pad4, [:uint8, 3],
          :y_sample_bits, :uint32,
          :u_sample_bits, :uint32,
          :v_sample_bits, :uint32,
          :vhorz_y_period, :uint32,
          :vhorz_u_period, :uint32,
          :vhorz_v_period, :uint32,
          :vvert_y_period, :uint32,
          :vvert_u_period, :uint32,
          :vvert_v_period, :uint32,
          :vcomp_order_len, [:uint32 , 32],
          :vscanline_order, :uint8,
          :pad5, [:uint8, 11]
    end

    class XrbImageFormatInfoIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_image_format_info_next, [:pointer], :void
    attach_function :xcb_image_format_info_end, [:pointer], XrbGenericIterator
    attach_function :xcb_image_format_info_sizeof, [:pointer], :int
    attach_function :xcb_image_format_info_guid, [:pointer], :pointer
    attach_function :xcb_image_format_info_guid_length, [:pointer], :int
    attach_function :xcb_image_format_info_vcomp_order, [:pointer], :pointer
    attach_function :xcb_image_format_info_vcomp_order_length, [:pointer], :int
    class XrbVideoNotifyEvent < FFI::Struct
      layout \
          :response_type, :uint8,
          :reason, :uint8,
          :time, :xrb_timestamp_t,
          :drawable, :xrb_drawable_t,
          :port, :xrb_port_t
    end

    class XrbPortNotifyEvent < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :time, :xrb_timestamp_t,
          :port, :xrb_port_t,
          :attribute, :xrb_atom_t,
          :value, :int32
    end

    class XrbBadPortError < FFI::Struct
      layout \
          :response_type, :uint8,
          :error_code, :uint8,
          :sequence, :uint16
    end

    class XrbBadEncodingError < FFI::Struct
      layout \
          :response_type, :uint8,
          :error_code, :uint8,
          :sequence, :uint16
    end

    class XrbBadControlError < FFI::Struct
      layout \
          :response_type, :uint8,
          :error_code, :uint8,
          :sequence, :uint16
    end

    class XrbQueryExtensionRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :major, :uint16,
          :minor, :uint16
    end

    class XrbQueryExtensionCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_query_extension, [:pointer,:uint8,:uint16,:uint16], XrbQueryExtensionCookie
    class XrbQueryExtensionReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :major, :uint16,
          :minor, :uint16
    end

    attach_function :xcb_query_extension_reply, [:pointer, XrbQueryExtensionCookie, :pointer], :pointer

        
    class XrbQueryAdaptorsRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :num_adaptors, :uint16,
          :pad2, [:uint8, 22]
    end

    class XrbQueryAdaptorsCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_query_adaptors, [:pointer,:uint8,:uint16,:uint32], XrbQueryAdaptorsCookie
    class XrbQueryAdaptorsReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :num_adaptors, :uint16,
          :pad2, [:uint8, 22]
    end

    attach_function :xcb_query_adaptors_reply, [:pointer, XrbQueryAdaptorsCookie, :pointer], :pointer

        
    class XrbQueryEncodingsRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :num_encodings, :uint16,
          :pad2, [:uint8, 22]
    end

    class XrbQueryEncodingsCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_query_encodings, [:pointer,:uint8,:uint16,:uint32], XrbQueryEncodingsCookie
    class XrbQueryEncodingsReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :num_encodings, :uint16,
          :pad2, [:uint8, 22]
    end

    attach_function :xcb_query_encodings_reply, [:pointer, XrbQueryEncodingsCookie, :pointer], :pointer

        
    class XrbGrabPortRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16
    end

    class XrbGrabPortCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_grab_port, [:pointer,:uint8], XrbGrabPortCookie
    class XrbGrabPortReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :result, :uint8,
          :sequence, :uint16,
          :length, :uint32
    end

    attach_function :xcb_grab_port_reply, [:pointer, XrbGrabPortCookie, :pointer], :pointer

        
    class XrbUngrabPortRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :port, :xrb_port_t,
          :time, :xrb_timestamp_t
    end

    class XrbUngrabPortCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_ungrab_port_checked, [:pointer,:uint8,:xrb_port_t,:xrb_timestamp_t], XrbUngrabPortCookie
    attach_function :xcb_ungrab_port, [:pointer,:uint8,:xrb_port_t,:xrb_timestamp_t], XrbUngrabPortCookie
    class XrbPutVideoRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :port, :xrb_port_t,
          :drawable, :xrb_drawable_t,
          :gc, :xrb_gcontext_t,
          :vid_x, :int16,
          :vid_y, :int16,
          :vid_w, :uint16,
          :vid_h, :uint16,
          :drw_x, :int16,
          :drw_y, :int16,
          :drw_w, :uint16,
          :drw_h, :uint16
    end

    class XrbPutVideoCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_put_video_checked, [:pointer,:uint8,:xrb_port_t,:xrb_drawable_t,:xrb_gcontext_t,:int16,:int16,:uint16,:uint16,:int16,:int16,:uint16,:uint16], XrbPutVideoCookie
    attach_function :xcb_put_video, [:pointer,:uint8,:xrb_port_t,:xrb_drawable_t,:xrb_gcontext_t,:int16,:int16,:uint16,:uint16,:int16,:int16,:uint16,:uint16], XrbPutVideoCookie
    class XrbPutStillRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :port, :xrb_port_t,
          :drawable, :xrb_drawable_t,
          :gc, :xrb_gcontext_t,
          :vid_x, :int16,
          :vid_y, :int16,
          :vid_w, :uint16,
          :vid_h, :uint16,
          :drw_x, :int16,
          :drw_y, :int16,
          :drw_w, :uint16,
          :drw_h, :uint16
    end

    class XrbPutStillCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_put_still_checked, [:pointer,:uint8,:xrb_port_t,:xrb_drawable_t,:xrb_gcontext_t,:int16,:int16,:uint16,:uint16,:int16,:int16,:uint16,:uint16], XrbPutStillCookie
    attach_function :xcb_put_still, [:pointer,:uint8,:xrb_port_t,:xrb_drawable_t,:xrb_gcontext_t,:int16,:int16,:uint16,:uint16,:int16,:int16,:uint16,:uint16], XrbPutStillCookie
    class XrbGetVideoRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :port, :xrb_port_t,
          :drawable, :xrb_drawable_t,
          :gc, :xrb_gcontext_t,
          :vid_x, :int16,
          :vid_y, :int16,
          :vid_w, :uint16,
          :vid_h, :uint16,
          :drw_x, :int16,
          :drw_y, :int16,
          :drw_w, :uint16,
          :drw_h, :uint16
    end

    class XrbGetVideoCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_video_checked, [:pointer,:uint8,:xrb_port_t,:xrb_drawable_t,:xrb_gcontext_t,:int16,:int16,:uint16,:uint16,:int16,:int16,:uint16,:uint16], XrbGetVideoCookie
    attach_function :xcb_get_video, [:pointer,:uint8,:xrb_port_t,:xrb_drawable_t,:xrb_gcontext_t,:int16,:int16,:uint16,:uint16,:int16,:int16,:uint16,:uint16], XrbGetVideoCookie
    class XrbGetStillRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :port, :xrb_port_t,
          :drawable, :xrb_drawable_t,
          :gc, :xrb_gcontext_t,
          :vid_x, :int16,
          :vid_y, :int16,
          :vid_w, :uint16,
          :vid_h, :uint16,
          :drw_x, :int16,
          :drw_y, :int16,
          :drw_w, :uint16,
          :drw_h, :uint16
    end

    class XrbGetStillCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_still_checked, [:pointer,:uint8,:xrb_port_t,:xrb_drawable_t,:xrb_gcontext_t,:int16,:int16,:uint16,:uint16,:int16,:int16,:uint16,:uint16], XrbGetStillCookie
    attach_function :xcb_get_still, [:pointer,:uint8,:xrb_port_t,:xrb_drawable_t,:xrb_gcontext_t,:int16,:int16,:uint16,:uint16,:int16,:int16,:uint16,:uint16], XrbGetStillCookie
    class XrbStopVideoRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :port, :xrb_port_t,
          :drawable, :xrb_drawable_t
    end

    class XrbStopVideoCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_stop_video_checked, [:pointer,:uint8,:xrb_port_t,:xrb_drawable_t], XrbStopVideoCookie
    attach_function :xcb_stop_video, [:pointer,:uint8,:xrb_port_t,:xrb_drawable_t], XrbStopVideoCookie
    class XrbSelectVideoNotifyRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :drawable, :xrb_drawable_t,
          :onoff, :bool,
          :pad1, [:uint8, 3]
    end

    class XrbSelectVideoNotifyCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_select_video_notify_checked, [:pointer,:uint8,:xrb_drawable_t,:bool], XrbSelectVideoNotifyCookie
    attach_function :xcb_select_video_notify, [:pointer,:uint8,:xrb_drawable_t,:bool], XrbSelectVideoNotifyCookie
    class XrbSelectPortNotifyRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :port, :xrb_port_t,
          :onoff, :bool,
          :pad1, [:uint8, 3]
    end

    class XrbSelectPortNotifyCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_select_port_notify_checked, [:pointer,:uint8,:xrb_port_t,:bool], XrbSelectPortNotifyCookie
    attach_function :xcb_select_port_notify, [:pointer,:uint8,:xrb_port_t,:bool], XrbSelectPortNotifyCookie
    class XrbQueryBestSizeRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :actual_width, :uint16,
          :actual_height, :uint16
    end

    class XrbQueryBestSizeCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_query_best_size, [:pointer,:uint8,:uint16,:uint16], XrbQueryBestSizeCookie
    class XrbQueryBestSizeReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :actual_width, :uint16,
          :actual_height, :uint16
    end

    attach_function :xcb_query_best_size_reply, [:pointer, XrbQueryBestSizeCookie, :pointer], :pointer

        
    class XrbSetPortAttributeRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :port, :xrb_port_t,
          :attribute, :xrb_atom_t,
          :value, :int32
    end

    class XrbSetPortAttributeCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_set_port_attribute_checked, [:pointer,:uint8,:xrb_port_t,:xrb_atom_t,:int32], XrbSetPortAttributeCookie
    attach_function :xcb_set_port_attribute, [:pointer,:uint8,:xrb_port_t,:xrb_atom_t,:int32], XrbSetPortAttributeCookie
    class XrbGetPortAttributeRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :value, :int32
    end

    class XrbGetPortAttributeCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_port_attribute, [:pointer,:uint8,:int32], XrbGetPortAttributeCookie
    class XrbGetPortAttributeReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :value, :int32
    end

    attach_function :xcb_get_port_attribute_reply, [:pointer, XrbGetPortAttributeCookie, :pointer], :pointer

        
    class XrbQueryPortAttributesRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :num_attributes, :uint32,
          :text_size, :uint32,
          :pad2, [:uint8, 16]
    end

    class XrbQueryPortAttributesCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_query_port_attributes, [:pointer,:uint8,:uint32,:uint32,:uint32], XrbQueryPortAttributesCookie
    class XrbQueryPortAttributesReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :num_attributes, :uint32,
          :text_size, :uint32,
          :pad2, [:uint8, 16]
    end

    attach_function :xcb_query_port_attributes_reply, [:pointer, XrbQueryPortAttributesCookie, :pointer], :pointer

        
    class XrbListImageFormatsRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :num_formats, :uint32,
          :pad2, [:uint8, 20]
    end

    class XrbListImageFormatsCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_list_image_formats, [:pointer,:uint8,:uint32,:uint32], XrbListImageFormatsCookie
    class XrbListImageFormatsReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :num_formats, :uint32,
          :pad2, [:uint8, 20]
    end

    attach_function :xcb_list_image_formats_reply, [:pointer, XrbListImageFormatsCookie, :pointer], :pointer

        
    class XrbQueryImageAttributesRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :num_planes, :uint32,
          :data_size, :uint32,
          :width, :uint16,
          :height, :uint16,
          :pad2, [:uint8, 12]
    end

    class XrbQueryImageAttributesCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_query_image_attributes, [:pointer,:uint8,:uint32,:uint32,:uint16,:uint16,:uint32,:uint32], XrbQueryImageAttributesCookie
    class XrbQueryImageAttributesReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :num_planes, :uint32,
          :data_size, :uint32,
          :width, :uint16,
          :height, :uint16,
          :pad2, [:uint8, 12]
    end

    attach_function :xcb_query_image_attributes_reply, [:pointer, XrbQueryImageAttributesCookie, :pointer], :pointer

        
    class XrbPutImageRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :port, :xrb_port_t,
          :drawable, :xrb_drawable_t,
          :gc, :xrb_gcontext_t,
          :id, :uint32,
          :src_x, :int16,
          :src_y, :int16,
          :src_w, :uint16,
          :src_h, :uint16,
          :drw_x, :int16,
          :drw_y, :int16,
          :drw_w, :uint16,
          :drw_h, :uint16,
          :width, :uint16,
          :height, :uint16
    end

    class XrbPutImageCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_put_image_checked, [:pointer,:uint8,:xrb_port_t,:xrb_drawable_t,:xrb_gcontext_t,:uint32,:int16,:int16,:uint16,:uint16,:int16,:int16,:uint16,:uint16,:uint16,:uint16,:uint32], XrbPutImageCookie
    attach_function :xcb_put_image, [:pointer,:uint8,:xrb_port_t,:xrb_drawable_t,:xrb_gcontext_t,:uint32,:int16,:int16,:uint16,:uint16,:int16,:int16,:uint16,:uint16,:uint16,:uint16,:uint32], XrbPutImageCookie
    class XrbShmPutImageRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :port, :xrb_port_t,
          :drawable, :xrb_drawable_t,
          :gc, :xrb_gcontext_t,
          :shmseg, :xrb_seg_t,
          :id, :uint32,
          :offset, :uint32,
          :src_x, :int16,
          :src_y, :int16,
          :src_w, :uint16,
          :src_h, :uint16,
          :drw_x, :int16,
          :drw_y, :int16,
          :drw_w, :uint16,
          :drw_h, :uint16,
          :width, :uint16,
          :height, :uint16,
          :send_event, :uint8,
          :pad1, [:uint8, 3]
    end

    class XrbShmPutImageCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_shm_put_image_checked, [:pointer,:uint8,:xrb_port_t,:xrb_drawable_t,:xrb_gcontext_t,:xrb_seg_t,:uint32,:uint32,:int16,:int16,:uint16,:uint16,:int16,:int16,:uint16,:uint16,:uint16,:uint16,:uint8], XrbShmPutImageCookie
    attach_function :xcb_shm_put_image, [:pointer,:uint8,:xrb_port_t,:xrb_drawable_t,:xrb_gcontext_t,:xrb_seg_t,:uint32,:uint32,:int16,:int16,:uint16,:uint16,:int16,:int16,:uint16,:uint16,:uint16,:uint16,:uint8], XrbShmPutImageCookie
  end
end
