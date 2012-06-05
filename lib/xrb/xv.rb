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
    typedef :uint32, :port_t
    class PortIterator < FFI::Struct
      layout \
          :data, :window_t,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_port_next, [:pointer], :void
    attach_function :xcb_port_end, [:pointer], GenericIterator
    typedef :uint32, :encoding_t
    class EncodingIterator < FFI::Struct
      layout \
          :data, :window_t,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_encoding_next, [:pointer], :void
    attach_function :xcb_encoding_end, [:pointer], GenericIterator
    TYPE_INPUT_MASK = 1 << 0
    TYPE_OUTPUT_MASK = 1 << 1
    TYPE_VIDEO_MASK = 1 << 2
    TYPE_STILL_MASK = 1 << 3
    TYPE_IMAGE_MASK = 1 << 4
    IMAGE_FORMAT_INFO_TYPE_RGB = 1
    IMAGE_FORMAT_INFO_TYPE_YUV = 2
    IMAGE_FORMAT_INFO_FORMAT_PACKED = 1
    IMAGE_FORMAT_INFO_FORMAT_PLANAR = 2
    ATTRIBUTE_FLAG_GETTABLE = 1 << 0
    ATTRIBUTE_FLAG_SETTABLE = 1 << 1
    VIDEO_NOTIFY_REASON_STARTED = 1
    VIDEO_NOTIFY_REASON_STOPPED = 2
    VIDEO_NOTIFY_REASON_BUSY = 3
    VIDEO_NOTIFY_REASON_PREEMPTED = 4
    VIDEO_NOTIFY_REASON_HARD_ERROR = 5
    SCANLINE_ORDER_TOP_TO_BOTTOM = 1
    SCANLINE_ORDER_BOTTOM_TO_TOP = 2
    GRAB_PORT_STATUS_SUCCESS = 1
    GRAB_PORT_STATUS_BAD_EXTENSION = 2
    GRAB_PORT_STATUS_ALREADY_GRABBED = 3
    GRAB_PORT_STATUS_INVALID_TIME = 4
    GRAB_PORT_STATUS_BAD_REPLY = 5
    GRAB_PORT_STATUS_BAD_ALLOC = 6
    class Rational < FFI::Struct
      layout \
          :numerator, :int32,
          :denominator, :int32
    end

    class RationalIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_rational_next, [:pointer], :void
    attach_function :xcb_rational_end, [:pointer], GenericIterator
    class Format < FFI::Struct
      layout \
          :visual, :visualid_t,
          :depth, :uint8,
          :pad1, [:uint8, 3]
    end

    class FormatIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_format_next, [:pointer], :void
    attach_function :xcb_format_end, [:pointer], GenericIterator
    class AdaptorInfo < FFI::Struct
      layout \
          :base_id, :port_t,
          :name_size, :uint16,
          :num_ports, :uint16,
          :num_formats, :uint16,
          :type, :uint8,
          :pad1, [:uint8, 1]
    end

    class AdaptorInfoIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_adaptor_info_next, [:pointer], :void
    attach_function :xcb_adaptor_info_end, [:pointer], GenericIterator
    attach_function :xcb_adaptor_info_sizeof, [:pointer], :int
    attach_function :xcb_adaptor_info_name, [:pointer], :pointer
    attach_function :xcb_adaptor_info_name_length, [:pointer], :int
    attach_function :xcb_adaptor_info_formats_iterator, [:pointer], AdaptorInfoIterator
    attach_function :xcb_adaptor_info_formats_length, [:pointer], :int
    class EncodingInfo < FFI::Struct
      layout \
          :encoding, :encoding_t,
          :name_size, :uint16,
          :width, :uint16,
          :height, :uint16,
          :pad1, [:uint8, 2],
          :rate, Rational
    end

    class EncodingInfoIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_encoding_info_next, [:pointer], :void
    attach_function :xcb_encoding_info_end, [:pointer], GenericIterator
    attach_function :xcb_encoding_info_sizeof, [:pointer], :int
    attach_function :xcb_encoding_info_name, [:pointer], :pointer
    attach_function :xcb_encoding_info_name_length, [:pointer], :int
    class Image < FFI::Struct
      layout \
          :id, :uint32,
          :width, :uint16,
          :height, :uint16,
          :data_size, :uint32,
          :num_planes, :uint32
    end

    class ImageIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_image_next, [:pointer], :void
    attach_function :xcb_image_end, [:pointer], GenericIterator
    attach_function :xcb_image_sizeof, [:pointer], :int
    attach_function :xcb_image_pitches, [:pointer], :pointer
    attach_function :xcb_image_pitches_length, [:pointer], :int
    attach_function :xcb_image_offsets, [:pointer], :pointer
    attach_function :xcb_image_offsets_length, [:pointer], :int
    attach_function :xcb_image_data, [:pointer], :pointer
    attach_function :xcb_image_data_length, [:pointer], :int
    class AttributeInfo < FFI::Struct
      layout \
          :flags, :uint32,
          :min, :int32,
          :max, :int32,
          :size, :uint32
    end

    class AttributeInfoIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_attribute_info_next, [:pointer], :void
    attach_function :xcb_attribute_info_end, [:pointer], GenericIterator
    attach_function :xcb_attribute_info_sizeof, [:pointer], :int
    attach_function :xcb_attribute_info_name, [:pointer], :pointer
    attach_function :xcb_attribute_info_name_length, [:pointer], :int
    class ImageFormatInfo < FFI::Struct
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

    class ImageFormatInfoIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_image_format_info_next, [:pointer], :void
    attach_function :xcb_image_format_info_end, [:pointer], GenericIterator
    attach_function :xcb_image_format_info_sizeof, [:pointer], :int
    attach_function :xcb_image_format_info_guid, [:pointer], :pointer
    attach_function :xcb_image_format_info_guid_length, [:pointer], :int
    attach_function :xcb_image_format_info_vcomp_order, [:pointer], :pointer
    attach_function :xcb_image_format_info_vcomp_order_length, [:pointer], :int
    class VideoNotifyEvent < FFI::Struct
      layout \
          :response_type, :uint8,
          :reason, :uint8,
          :time, :timestamp_t,
          :drawable, :drawable_t,
          :port, :port_t
    end

    class PortNotifyEvent < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :time, :timestamp_t,
          :port, :port_t,
          :attribute, :atom_t,
          :value, :int32
    end

    class BadPortError < FFI::Struct
      layout \
          :response_type, :uint8,
          :error_code, :uint8,
          :sequence, :uint16
    end

    class BadEncodingError < FFI::Struct
      layout \
          :response_type, :uint8,
          :error_code, :uint8,
          :sequence, :uint16
    end

    class BadControlError < FFI::Struct
      layout \
          :response_type, :uint8,
          :error_code, :uint8,
          :sequence, :uint16
    end

    class QueryExtensionRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :major, :uint16,
          :minor, :uint16
    end

    class QueryExtensionCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_query_extension, [:pointer,:uint8,:uint16,:uint16], QueryExtensionCookie
    class QueryExtensionReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :major, :uint16,
          :minor, :uint16
    end

    attach_function :xcb_query_extension_reply, [:pointer, QueryExtensionCookie, :pointer], :pointer

        
    class QueryAdaptorsRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :num_adaptors, :uint16,
          :pad2, [:uint8, 22]
    end

    class QueryAdaptorsCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_query_adaptors, [:pointer,:uint8,:uint16,:uint32], QueryAdaptorsCookie
    class QueryAdaptorsReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :num_adaptors, :uint16,
          :pad2, [:uint8, 22]
    end

    attach_function :xcb_query_adaptors_reply, [:pointer, QueryAdaptorsCookie, :pointer], :pointer

        
    class QueryEncodingsRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :num_encodings, :uint16,
          :pad2, [:uint8, 22]
    end

    class QueryEncodingsCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_query_encodings, [:pointer,:uint8,:uint16,:uint32], QueryEncodingsCookie
    class QueryEncodingsReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :num_encodings, :uint16,
          :pad2, [:uint8, 22]
    end

    attach_function :xcb_query_encodings_reply, [:pointer, QueryEncodingsCookie, :pointer], :pointer

        
    class GrabPortRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16
    end

    class GrabPortCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_grab_port, [:pointer,:uint8], GrabPortCookie
    class GrabPortReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :result, :uint8,
          :sequence, :uint16,
          :length, :uint32
    end

    attach_function :xcb_grab_port_reply, [:pointer, GrabPortCookie, :pointer], :pointer

        
    class UngrabPortRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :port, :port_t,
          :time, :timestamp_t
    end

    class UngrabPortCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_ungrab_port_checked, [:pointer,:uint8,:port_t,:timestamp_t], UngrabPortCookie
    attach_function :xcb_ungrab_port, [:pointer,:uint8,:port_t,:timestamp_t], UngrabPortCookie
    class PutVideoRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :port, :port_t,
          :drawable, :drawable_t,
          :gc, :gcontext_t,
          :vid_x, :int16,
          :vid_y, :int16,
          :vid_w, :uint16,
          :vid_h, :uint16,
          :drw_x, :int16,
          :drw_y, :int16,
          :drw_w, :uint16,
          :drw_h, :uint16
    end

    class PutVideoCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_put_video_checked, [:pointer,:uint8,:port_t,:drawable_t,:gcontext_t,:int16,:int16,:uint16,:uint16,:int16,:int16,:uint16,:uint16], PutVideoCookie
    attach_function :xcb_put_video, [:pointer,:uint8,:port_t,:drawable_t,:gcontext_t,:int16,:int16,:uint16,:uint16,:int16,:int16,:uint16,:uint16], PutVideoCookie
    class PutStillRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :port, :port_t,
          :drawable, :drawable_t,
          :gc, :gcontext_t,
          :vid_x, :int16,
          :vid_y, :int16,
          :vid_w, :uint16,
          :vid_h, :uint16,
          :drw_x, :int16,
          :drw_y, :int16,
          :drw_w, :uint16,
          :drw_h, :uint16
    end

    class PutStillCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_put_still_checked, [:pointer,:uint8,:port_t,:drawable_t,:gcontext_t,:int16,:int16,:uint16,:uint16,:int16,:int16,:uint16,:uint16], PutStillCookie
    attach_function :xcb_put_still, [:pointer,:uint8,:port_t,:drawable_t,:gcontext_t,:int16,:int16,:uint16,:uint16,:int16,:int16,:uint16,:uint16], PutStillCookie
    class GetVideoRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :port, :port_t,
          :drawable, :drawable_t,
          :gc, :gcontext_t,
          :vid_x, :int16,
          :vid_y, :int16,
          :vid_w, :uint16,
          :vid_h, :uint16,
          :drw_x, :int16,
          :drw_y, :int16,
          :drw_w, :uint16,
          :drw_h, :uint16
    end

    class GetVideoCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_video_checked, [:pointer,:uint8,:port_t,:drawable_t,:gcontext_t,:int16,:int16,:uint16,:uint16,:int16,:int16,:uint16,:uint16], GetVideoCookie
    attach_function :xcb_get_video, [:pointer,:uint8,:port_t,:drawable_t,:gcontext_t,:int16,:int16,:uint16,:uint16,:int16,:int16,:uint16,:uint16], GetVideoCookie
    class GetStillRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :port, :port_t,
          :drawable, :drawable_t,
          :gc, :gcontext_t,
          :vid_x, :int16,
          :vid_y, :int16,
          :vid_w, :uint16,
          :vid_h, :uint16,
          :drw_x, :int16,
          :drw_y, :int16,
          :drw_w, :uint16,
          :drw_h, :uint16
    end

    class GetStillCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_still_checked, [:pointer,:uint8,:port_t,:drawable_t,:gcontext_t,:int16,:int16,:uint16,:uint16,:int16,:int16,:uint16,:uint16], GetStillCookie
    attach_function :xcb_get_still, [:pointer,:uint8,:port_t,:drawable_t,:gcontext_t,:int16,:int16,:uint16,:uint16,:int16,:int16,:uint16,:uint16], GetStillCookie
    class StopVideoRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :port, :port_t,
          :drawable, :drawable_t
    end

    class StopVideoCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_stop_video_checked, [:pointer,:uint8,:port_t,:drawable_t], StopVideoCookie
    attach_function :xcb_stop_video, [:pointer,:uint8,:port_t,:drawable_t], StopVideoCookie
    class SelectVideoNotifyRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :drawable, :drawable_t,
          :onoff, :bool,
          :pad1, [:uint8, 3]
    end

    class SelectVideoNotifyCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_select_video_notify_checked, [:pointer,:uint8,:drawable_t,:bool], SelectVideoNotifyCookie
    attach_function :xcb_select_video_notify, [:pointer,:uint8,:drawable_t,:bool], SelectVideoNotifyCookie
    class SelectPortNotifyRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :port, :port_t,
          :onoff, :bool,
          :pad1, [:uint8, 3]
    end

    class SelectPortNotifyCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_select_port_notify_checked, [:pointer,:uint8,:port_t,:bool], SelectPortNotifyCookie
    attach_function :xcb_select_port_notify, [:pointer,:uint8,:port_t,:bool], SelectPortNotifyCookie
    class QueryBestSizeRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :actual_width, :uint16,
          :actual_height, :uint16
    end

    class QueryBestSizeCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_query_best_size, [:pointer,:uint8,:uint16,:uint16], QueryBestSizeCookie
    class QueryBestSizeReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :actual_width, :uint16,
          :actual_height, :uint16
    end

    attach_function :xcb_query_best_size_reply, [:pointer, QueryBestSizeCookie, :pointer], :pointer

        
    class SetPortAttributeRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :port, :port_t,
          :attribute, :atom_t,
          :value, :int32
    end

    class SetPortAttributeCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_set_port_attribute_checked, [:pointer,:uint8,:port_t,:atom_t,:int32], SetPortAttributeCookie
    attach_function :xcb_set_port_attribute, [:pointer,:uint8,:port_t,:atom_t,:int32], SetPortAttributeCookie
    class GetPortAttributeRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :value, :int32
    end

    class GetPortAttributeCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_port_attribute, [:pointer,:uint8,:int32], GetPortAttributeCookie
    class GetPortAttributeReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :value, :int32
    end

    attach_function :xcb_get_port_attribute_reply, [:pointer, GetPortAttributeCookie, :pointer], :pointer

        
    class QueryPortAttributesRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :num_attributes, :uint32,
          :text_size, :uint32,
          :pad2, [:uint8, 16]
    end

    class QueryPortAttributesCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_query_port_attributes, [:pointer,:uint8,:uint32,:uint32,:uint32], QueryPortAttributesCookie
    class QueryPortAttributesReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :num_attributes, :uint32,
          :text_size, :uint32,
          :pad2, [:uint8, 16]
    end

    attach_function :xcb_query_port_attributes_reply, [:pointer, QueryPortAttributesCookie, :pointer], :pointer

        
    class ListImageFormatsRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :num_formats, :uint32,
          :pad2, [:uint8, 20]
    end

    class ListImageFormatsCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_list_image_formats, [:pointer,:uint8,:uint32,:uint32], ListImageFormatsCookie
    class ListImageFormatsReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :num_formats, :uint32,
          :pad2, [:uint8, 20]
    end

    attach_function :xcb_list_image_formats_reply, [:pointer, ListImageFormatsCookie, :pointer], :pointer

        
    class QueryImageAttributesRequest < FFI::Struct
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

    class QueryImageAttributesCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_query_image_attributes, [:pointer,:uint8,:uint32,:uint32,:uint16,:uint16,:uint32,:uint32], QueryImageAttributesCookie
    class QueryImageAttributesReply < FFI::Struct
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

    attach_function :xcb_query_image_attributes_reply, [:pointer, QueryImageAttributesCookie, :pointer], :pointer

        
    class PutImageRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :port, :port_t,
          :drawable, :drawable_t,
          :gc, :gcontext_t,
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

    class PutImageCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_put_image_checked, [:pointer,:uint8,:port_t,:drawable_t,:gcontext_t,:uint32,:int16,:int16,:uint16,:uint16,:int16,:int16,:uint16,:uint16,:uint16,:uint16,:uint32], PutImageCookie
    attach_function :xcb_put_image, [:pointer,:uint8,:port_t,:drawable_t,:gcontext_t,:uint32,:int16,:int16,:uint16,:uint16,:int16,:int16,:uint16,:uint16,:uint16,:uint16,:uint32], PutImageCookie
    class ShmPutImageRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :port, :port_t,
          :drawable, :drawable_t,
          :gc, :gcontext_t,
          :shmseg, :seg_t,
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

    class ShmPutImageCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_shm_put_image_checked, [:pointer,:uint8,:port_t,:drawable_t,:gcontext_t,:seg_t,:uint32,:uint32,:int16,:int16,:uint16,:uint16,:int16,:int16,:uint16,:uint16,:uint16,:uint16,:uint8], ShmPutImageCookie
    attach_function :xcb_shm_put_image, [:pointer,:uint8,:port_t,:drawable_t,:gcontext_t,:seg_t,:uint32,:uint32,:int16,:int16,:uint16,:uint16,:int16,:int16,:uint16,:uint16,:uint16,:uint16,:uint8], ShmPutImageCookie
  end
end
