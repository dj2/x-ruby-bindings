#
# This file auto-generated. Do not edit.
#

require 'ffi'
require 'xrb/xproto'
require 'xrb/render'
class Xrb
  class RandR
    extend FFI::Library
    ffi_lib 'randr'
    MAJOR_VERSION = 1
    MINOR_VERSION = 3
    typedef :uint32, :xrb_mode_t
    class XrbModeIterator < FFI::Struct
      layout \
          :data, :xrb_window_t,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_mode_next, [:pointer], :void
    attach_function :xcb_mode_end, [:pointer], XrbGenericIterator
    typedef :uint32, :xrb_crtc_t
    class XrbCrtcIterator < FFI::Struct
      layout \
          :data, :xrb_window_t,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_crtc_next, [:pointer], :void
    attach_function :xcb_crtc_end, [:pointer], XrbGenericIterator
    typedef :uint32, :xrb_output_t
    class XrbOutputIterator < FFI::Struct
      layout \
          :data, :xrb_window_t,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_output_next, [:pointer], :void
    attach_function :xcb_output_end, [:pointer], XrbGenericIterator
    enum :xrb_rotation_t, [
        :xrb_rotation_rotate_0, 1 << 0,
        :xrb_rotation_rotate_90, 1 << 1,
        :xrb_rotation_rotate_180, 1 << 2,
        :xrb_rotation_rotate_270, 1 << 3,
        :xrb_rotation_reflect_x, 1 << 4,
        :xrb_rotation_reflect_y, 1 << 5
    ]
    class XrbScreenSize < FFI::Struct
      layout \
          :width, :uint16,
          :height, :uint16,
          :mwidth, :uint16,
          :mheight, :uint16
    end

    class XrbScreenSizeIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_screen_size_next, [:pointer], :void
    attach_function :xcb_screen_size_end, [:pointer], XrbGenericIterator
    class XrbRefreshRates < FFI::Struct
      layout \
          :nRates, :uint16
    end

    class XrbRefreshRatesIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_refresh_rates_next, [:pointer], :void
    attach_function :xcb_refresh_rates_end, [:pointer], XrbGenericIterator
    attach_function :xcb_refresh_rates_sizeof, [:pointer], :int
    attach_function :xcb_refresh_rates_rates, [:pointer], :pointer
    attach_function :xcb_refresh_rates_rates_length, [:pointer], :int
    enum :xrb_set_config_t, [
        :xrb_set_config_success, 0,
        :xrb_set_config_invalid_config_time, 1,
        :xrb_set_config_invalid_time, 2,
        :xrb_set_config_failed, 3
    ]
    enum :xrb_notify_mask_t, [
        :xrb_notify_mask_screen_change, 1 << 0,
        :xrb_notify_mask_crtc_change, 1 << 1,
        :xrb_notify_mask_output_change, 1 << 2,
        :xrb_notify_mask_output_property, 1 << 3
    ]
    enum :xrb_mode_flag_t, [
        :xrb_mode_flag_hsync_positive, 1 << 0,
        :xrb_mode_flag_hsync_negative, 1 << 1,
        :xrb_mode_flag_vsync_positive, 1 << 2,
        :xrb_mode_flag_vsync_negative, 1 << 3,
        :xrb_mode_flag_interlace, 1 << 4,
        :xrb_mode_flag_double_scan, 1 << 5,
        :xrb_mode_flag_csync, 1 << 6,
        :xrb_mode_flag_csync_positive, 1 << 7,
        :xrb_mode_flag_csync_negative, 1 << 8,
        :xrb_mode_flag_hskew_present, 1 << 9,
        :xrb_mode_flag_bcast, 1 << 10,
        :xrb_mode_flag_pixel_multiplex, 1 << 11,
        :xrb_mode_flag_double_clock, 1 << 12,
        :xrb_mode_flag_halve_clock, 1 << 13
    ]
    class XrbModeInfo < FFI::Struct
      layout \
          :id, :uint32,
          :width, :uint16,
          :height, :uint16,
          :dot_clock, :uint32,
          :hsync_start, :uint16,
          :hsync_end, :uint16,
          :htotal, :uint16,
          :hskew, :uint16,
          :vsync_start, :uint16,
          :vsync_end, :uint16,
          :vtotal, :uint16,
          :name_len, :uint16,
          :mode_flags, :uint32
    end

    class XrbModeInfoIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_mode_info_next, [:pointer], :void
    attach_function :xcb_mode_info_end, [:pointer], XrbGenericIterator
    enum :xrb_connection_t, [
        :xrb_connection_connected, 1,
        :xrb_connection_disconnected, 2,
        :xrb_connection_unknown, 3
    ]
    enum :xrb_notify_t, [
        :xrb_notify_crtc_change, 0,
        :xrb_notify_output_change, 1,
        :xrb_notify_output_property, 2
    ]
    class XrbCrtcChange < FFI::Struct
      layout \
          :timestamp, :xrb_timestamp_t,
          :window, :xrb_window_t,
          :crtc, :xrb_crtc_t,
          :mode, :xrb_mode_t,
          :rotation, :uint16,
          :pad1, [:uint8, 2],
          :x, :int16,
          :y, :int16,
          :width, :uint16,
          :height, :uint16
    end

    class XrbCrtcChangeIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_crtc_change_next, [:pointer], :void
    attach_function :xcb_crtc_change_end, [:pointer], XrbGenericIterator
    class XrbOutputChange < FFI::Struct
      layout \
          :timestamp, :xrb_timestamp_t,
          :config_timestamp, :xrb_timestamp_t,
          :window, :xrb_window_t,
          :output, :xrb_output_t,
          :crtc, :xrb_crtc_t,
          :mode, :xrb_mode_t,
          :rotation, :uint16,
          :connection, :uint8,
          :subpixel_order, :uint8
    end

    class XrbOutputChangeIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_output_change_next, [:pointer], :void
    attach_function :xcb_output_change_end, [:pointer], XrbGenericIterator
    class XrbOutputProperty < FFI::Struct
      layout \
          :window, :xrb_window_t,
          :output, :xrb_output_t,
          :atom, :xrb_atom_t,
          :timestamp, :xrb_timestamp_t,
          :status, :uint8,
          :pad1, [:uint8, 11]
    end

    class XrbOutputPropertyIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_output_property_next, [:pointer], :void
    attach_function :xcb_output_property_end, [:pointer], XrbGenericIterator
    class XrbNotifyData < FFI::Union
      layout \
          :cc, XrbCrtcChange,
          :oc, XrbOutputChange,
          :op, XrbOutputProperty
    end

    class XrbScreenChangeNotifyEvent < FFI::Struct
      layout \
          :response_type, :uint8,
          :rotation, :uint8,
          :timestamp, :xrb_timestamp_t,
          :config_timestamp, :xrb_timestamp_t,
          :root, :xrb_window_t,
          :request_window, :xrb_window_t,
          :sizeID, :uint16,
          :subpixel_order, :uint16,
          :width, :uint16,
          :height, :uint16,
          :mwidth, :uint16,
          :mheight, :uint16
    end

    class XrbNotifyEvent < FFI::Struct
      layout \
          :response_type, :uint8,
          :subCode, :uint8,
          :u, XrbNotifyData
    end

    class XrbBadOutputError < FFI::Struct
      layout \
          :response_type, :uint8,
          :error_code, :uint8,
          :sequence, :uint16
    end

    class XrbBadCrtcError < FFI::Struct
      layout \
          :response_type, :uint8,
          :error_code, :uint8,
          :sequence, :uint16
    end

    class XrbBadModeError < FFI::Struct
      layout \
          :response_type, :uint8,
          :error_code, :uint8,
          :sequence, :uint16
    end

    class XrbQueryVersionRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :major_version, :uint32,
          :minor_version, :uint32,
          :pad2, [:uint8, 16]
    end

    class XrbQueryVersionCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_query_version, [:pointer,:uint8,:uint8,:uint16,:uint32,:uint32], XrbQueryVersionCookie
    class XrbQueryVersionReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :major_version, :uint32,
          :minor_version, :uint32,
          :pad2, [:uint8, 16]
    end

    attach_function :xcb_query_version_reply, [:pointer, XrbQueryVersionCookie, :pointer], :pointer

        
    class XrbSetScreenConfigRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :new_timestamp, :xrb_timestamp_t,
          :config_timestamp, :xrb_timestamp_t,
          :root, :xrb_window_t,
          :subpixel_order, :uint16,
          :pad1, [:uint8, 10]
    end

    class XrbSetScreenConfigCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_set_screen_config, [:pointer,:uint8,:uint8,:uint16,:xrb_timestamp_t,:xrb_timestamp_t,:xrb_window_t,:uint16], XrbSetScreenConfigCookie
    class XrbSetScreenConfigReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :status, :uint8,
          :sequence, :uint16,
          :length, :uint32,
          :new_timestamp, :xrb_timestamp_t,
          :config_timestamp, :xrb_timestamp_t,
          :root, :xrb_window_t,
          :subpixel_order, :uint16,
          :pad1, [:uint8, 10]
    end

    attach_function :xcb_set_screen_config_reply, [:pointer, XrbSetScreenConfigCookie, :pointer], :pointer

        
    class XrbSelectInputRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :window, :xrb_window_t,
          :enable, :uint16,
          :pad1, [:uint8, 2]
    end

    class XrbSelectInputCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_select_input_checked, [:pointer,:uint8,:uint8,:uint16,:xrb_window_t,:uint16], XrbSelectInputCookie
    attach_function :xcb_select_input, [:pointer,:uint8,:uint8,:uint16,:xrb_window_t,:uint16], XrbSelectInputCookie
    class XrbGetScreenInfoRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :root, :xrb_window_t,
          :timestamp, :xrb_timestamp_t,
          :config_timestamp, :xrb_timestamp_t,
          :nSizes, :uint16,
          :sizeID, :uint16,
          :rotation, :uint16,
          :rate, :uint16,
          :nInfo, :uint16,
          :pad1, [:uint8, 2]
    end

    class XrbGetScreenInfoCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_screen_info, [:pointer,:uint8,:uint8,:uint16,:xrb_window_t,:xrb_timestamp_t,:xrb_timestamp_t,:uint16,:uint16,:uint16,:uint16,:uint16,:uint32,:uint32], XrbGetScreenInfoCookie
    class XrbGetScreenInfoReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :rotations, :uint8,
          :sequence, :uint16,
          :length, :uint32,
          :root, :xrb_window_t,
          :timestamp, :xrb_timestamp_t,
          :config_timestamp, :xrb_timestamp_t,
          :nSizes, :uint16,
          :sizeID, :uint16,
          :rotation, :uint16,
          :rate, :uint16,
          :nInfo, :uint16,
          :pad1, [:uint8, 2]
    end

    attach_function :xcb_get_screen_info_reply, [:pointer, XrbGetScreenInfoCookie, :pointer], :pointer

        
    class XrbGetScreenSizeRangeRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :min_width, :uint16,
          :min_height, :uint16,
          :max_width, :uint16,
          :max_height, :uint16,
          :pad2, [:uint8, 16]
    end

    class XrbGetScreenSizeRangeCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_screen_size_range, [:pointer,:uint8,:uint8,:uint16,:uint16,:uint16,:uint16,:uint16], XrbGetScreenSizeRangeCookie
    class XrbGetScreenSizeRangeReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :min_width, :uint16,
          :min_height, :uint16,
          :max_width, :uint16,
          :max_height, :uint16,
          :pad2, [:uint8, 16]
    end

    attach_function :xcb_get_screen_size_range_reply, [:pointer, XrbGetScreenSizeRangeCookie, :pointer], :pointer

        
    class XrbSetScreenSizeRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :window, :xrb_window_t,
          :width, :uint16,
          :height, :uint16,
          :mm_width, :uint32,
          :mm_height, :uint32
    end

    class XrbSetScreenSizeCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_set_screen_size_checked, [:pointer,:uint8,:uint8,:uint16,:xrb_window_t,:uint16,:uint16,:uint32,:uint32], XrbSetScreenSizeCookie
    attach_function :xcb_set_screen_size, [:pointer,:uint8,:uint8,:uint16,:xrb_window_t,:uint16,:uint16,:uint32,:uint32], XrbSetScreenSizeCookie
    class XrbGetScreenResourcesRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :timestamp, :xrb_timestamp_t,
          :config_timestamp, :xrb_timestamp_t,
          :num_crtcs, :uint16,
          :num_outputs, :uint16,
          :num_modes, :uint16,
          :names_len, :uint16,
          :pad2, [:uint8, 8]
    end

    class XrbGetScreenResourcesCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_screen_resources, [:pointer,:uint8,:uint8,:uint16,:xrb_timestamp_t,:xrb_timestamp_t,:uint16,:uint16,:uint16,:uint16,:uint32,:uint32,:uint32,:uint32], XrbGetScreenResourcesCookie
    class XrbGetScreenResourcesReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :timestamp, :xrb_timestamp_t,
          :config_timestamp, :xrb_timestamp_t,
          :num_crtcs, :uint16,
          :num_outputs, :uint16,
          :num_modes, :uint16,
          :names_len, :uint16,
          :pad2, [:uint8, 8]
    end

    attach_function :xcb_get_screen_resources_reply, [:pointer, XrbGetScreenResourcesCookie, :pointer], :pointer

        
    class XrbGetOutputInfoRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :timestamp, :xrb_timestamp_t,
          :crtc, :xrb_crtc_t,
          :mm_width, :uint32,
          :mm_height, :uint32,
          :connection, :uint8,
          :subpixel_order, :uint8,
          :num_crtcs, :uint16,
          :num_modes, :uint16,
          :num_preferred, :uint16,
          :num_clones, :uint16,
          :name_len, :uint16
    end

    class XrbGetOutputInfoCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_output_info, [:pointer,:uint8,:uint8,:uint16,:xrb_timestamp_t,:xrb_crtc_t,:uint32,:uint32,:uint8,:uint8,:uint16,:uint16,:uint16,:uint16,:uint16,:uint32,:uint32,:uint32,:uint32], XrbGetOutputInfoCookie
    class XrbGetOutputInfoReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :status, :uint8,
          :sequence, :uint16,
          :length, :uint32,
          :timestamp, :xrb_timestamp_t,
          :crtc, :xrb_crtc_t,
          :mm_width, :uint32,
          :mm_height, :uint32,
          :connection, :uint8,
          :subpixel_order, :uint8,
          :num_crtcs, :uint16,
          :num_modes, :uint16,
          :num_preferred, :uint16,
          :num_clones, :uint16,
          :name_len, :uint16
    end

    attach_function :xcb_get_output_info_reply, [:pointer, XrbGetOutputInfoCookie, :pointer], :pointer

        
    class XrbListOutputPropertiesRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :num_atoms, :uint16,
          :pad2, [:uint8, 22]
    end

    class XrbListOutputPropertiesCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_list_output_properties, [:pointer,:uint8,:uint8,:uint16,:uint16,:uint32], XrbListOutputPropertiesCookie
    class XrbListOutputPropertiesReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :num_atoms, :uint16,
          :pad2, [:uint8, 22]
    end

    attach_function :xcb_list_output_properties_reply, [:pointer, XrbListOutputPropertiesCookie, :pointer], :pointer

        
    class XrbQueryOutputPropertyRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :pending, :bool,
          :range, :bool,
          :immutable, :bool,
          :pad2, [:uint8, 21]
    end

    class XrbQueryOutputPropertyCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_query_output_property, [:pointer,:uint8,:uint8,:uint16,:bool,:bool,:bool,:uint32], XrbQueryOutputPropertyCookie
    class XrbQueryOutputPropertyReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :pending, :bool,
          :range, :bool,
          :immutable, :bool,
          :pad2, [:uint8, 21]
    end

    attach_function :xcb_query_output_property_reply, [:pointer, XrbQueryOutputPropertyCookie, :pointer], :pointer

        
    class XrbConfigureOutputPropertyRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :output, :xrb_output_t,
          :property, :xrb_atom_t,
          :pending, :bool,
          :range, :bool,
          :pad1, [:uint8, 2]
    end

    class XrbConfigureOutputPropertyCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_configure_output_property_checked, [:pointer,:uint8,:uint8,:uint16,:xrb_output_t,:xrb_atom_t,:bool,:bool,:uint32], XrbConfigureOutputPropertyCookie
    attach_function :xcb_configure_output_property, [:pointer,:uint8,:uint8,:uint16,:xrb_output_t,:xrb_atom_t,:bool,:bool,:uint32], XrbConfigureOutputPropertyCookie
    class XrbChangeOutputPropertyRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :output, :xrb_output_t,
          :property, :xrb_atom_t,
          :type, :xrb_atom_t,
          :format, :uint8,
          :mode, :uint8,
          :pad1, [:uint8, 2],
          :num_units, :uint32
    end

    class XrbChangeOutputPropertyCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_change_output_property_checked, [:pointer,:uint8,:uint8,:uint16,:xrb_output_t,:xrb_atom_t,:xrb_atom_t,:uint8,:uint8,:uint32,:uint32], XrbChangeOutputPropertyCookie
    attach_function :xcb_change_output_property, [:pointer,:uint8,:uint8,:uint16,:xrb_output_t,:xrb_atom_t,:xrb_atom_t,:uint8,:uint8,:uint32,:uint32], XrbChangeOutputPropertyCookie
    class XrbDeleteOutputPropertyRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :output, :xrb_output_t,
          :property, :xrb_atom_t
    end

    class XrbDeleteOutputPropertyCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_delete_output_property_checked, [:pointer,:uint8,:uint8,:uint16,:xrb_output_t,:xrb_atom_t], XrbDeleteOutputPropertyCookie
    attach_function :xcb_delete_output_property, [:pointer,:uint8,:uint8,:uint16,:xrb_output_t,:xrb_atom_t], XrbDeleteOutputPropertyCookie
    class XrbGetOutputPropertyRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :type, :xrb_atom_t,
          :bytes_after, :uint32,
          :num_items, :uint32,
          :pad1, [:uint8, 12]
    end

    class XrbGetOutputPropertyCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_output_property, [:pointer,:uint8,:uint8,:uint16,:xrb_atom_t,:uint32,:uint32,:uint32], XrbGetOutputPropertyCookie
    class XrbGetOutputPropertyReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :format, :uint8,
          :sequence, :uint16,
          :length, :uint32,
          :type, :xrb_atom_t,
          :bytes_after, :uint32,
          :num_items, :uint32,
          :pad1, [:uint8, 12]
    end

    attach_function :xcb_get_output_property_reply, [:pointer, XrbGetOutputPropertyCookie, :pointer], :pointer

        
    class XrbCreateModeRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :mode, :xrb_mode_t,
          :pad2, [:uint8, 20]
    end

    class XrbCreateModeCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_create_mode, [:pointer,:uint8,:uint8,:uint16,:xrb_mode_t], XrbCreateModeCookie
    class XrbCreateModeReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :mode, :xrb_mode_t,
          :pad2, [:uint8, 20]
    end

    attach_function :xcb_create_mode_reply, [:pointer, XrbCreateModeCookie, :pointer], :pointer

        
    class XrbDestroyModeRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :mode, :xrb_mode_t
    end

    class XrbDestroyModeCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_destroy_mode_checked, [:pointer,:uint8,:uint8,:uint16,:xrb_mode_t], XrbDestroyModeCookie
    attach_function :xcb_destroy_mode, [:pointer,:uint8,:uint8,:uint16,:xrb_mode_t], XrbDestroyModeCookie
    class XrbAddOutputModeRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :output, :xrb_output_t,
          :mode, :xrb_mode_t
    end

    class XrbAddOutputModeCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_add_output_mode_checked, [:pointer,:uint8,:uint8,:uint16,:xrb_output_t,:xrb_mode_t], XrbAddOutputModeCookie
    attach_function :xcb_add_output_mode, [:pointer,:uint8,:uint8,:uint16,:xrb_output_t,:xrb_mode_t], XrbAddOutputModeCookie
    class XrbDeleteOutputModeRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :output, :xrb_output_t,
          :mode, :xrb_mode_t
    end

    class XrbDeleteOutputModeCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_delete_output_mode_checked, [:pointer,:uint8,:uint8,:uint16,:xrb_output_t,:xrb_mode_t], XrbDeleteOutputModeCookie
    attach_function :xcb_delete_output_mode, [:pointer,:uint8,:uint8,:uint16,:xrb_output_t,:xrb_mode_t], XrbDeleteOutputModeCookie
    class XrbGetCrtcInfoRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :timestamp, :xrb_timestamp_t,
          :x, :int16,
          :y, :int16,
          :width, :uint16,
          :height, :uint16,
          :mode, :xrb_mode_t,
          :rotation, :uint16,
          :rotations, :uint16,
          :num_outputs, :uint16,
          :num_possible_outputs, :uint16
    end

    class XrbGetCrtcInfoCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_crtc_info, [:pointer,:uint8,:uint8,:uint16,:xrb_timestamp_t,:int16,:int16,:uint16,:uint16,:xrb_mode_t,:uint16,:uint16,:uint16,:uint16,:uint32,:uint32], XrbGetCrtcInfoCookie
    class XrbGetCrtcInfoReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :status, :uint8,
          :sequence, :uint16,
          :length, :uint32,
          :timestamp, :xrb_timestamp_t,
          :x, :int16,
          :y, :int16,
          :width, :uint16,
          :height, :uint16,
          :mode, :xrb_mode_t,
          :rotation, :uint16,
          :rotations, :uint16,
          :num_outputs, :uint16,
          :num_possible_outputs, :uint16
    end

    attach_function :xcb_get_crtc_info_reply, [:pointer, XrbGetCrtcInfoCookie, :pointer], :pointer

        
    class XrbSetCrtcConfigRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :timestamp, :xrb_timestamp_t,
          :pad1, [:uint8, 20]
    end

    class XrbSetCrtcConfigCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_set_crtc_config, [:pointer,:uint8,:uint8,:uint16,:xrb_timestamp_t], XrbSetCrtcConfigCookie
    class XrbSetCrtcConfigReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :status, :uint8,
          :sequence, :uint16,
          :length, :uint32,
          :timestamp, :xrb_timestamp_t,
          :pad1, [:uint8, 20]
    end

    attach_function :xcb_set_crtc_config_reply, [:pointer, XrbSetCrtcConfigCookie, :pointer], :pointer

        
    class XrbGetCrtcGammaSizeRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :size, :uint16,
          :pad2, [:uint8, 22]
    end

    class XrbGetCrtcGammaSizeCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_crtc_gamma_size, [:pointer,:uint8,:uint8,:uint16,:uint16], XrbGetCrtcGammaSizeCookie
    class XrbGetCrtcGammaSizeReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :size, :uint16,
          :pad2, [:uint8, 22]
    end

    attach_function :xcb_get_crtc_gamma_size_reply, [:pointer, XrbGetCrtcGammaSizeCookie, :pointer], :pointer

        
    class XrbGetCrtcGammaRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :size, :uint16,
          :pad2, [:uint8, 22]
    end

    class XrbGetCrtcGammaCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_crtc_gamma, [:pointer,:uint8,:uint8,:uint16,:uint16,:uint32,:uint32,:uint32], XrbGetCrtcGammaCookie
    class XrbGetCrtcGammaReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :size, :uint16,
          :pad2, [:uint8, 22]
    end

    attach_function :xcb_get_crtc_gamma_reply, [:pointer, XrbGetCrtcGammaCookie, :pointer], :pointer

        
    class XrbSetCrtcGammaRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :crtc, :xrb_crtc_t,
          :size, :uint16,
          :pad1, [:uint8, 2]
    end

    class XrbSetCrtcGammaCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_set_crtc_gamma_checked, [:pointer,:uint8,:uint8,:uint16,:xrb_crtc_t,:uint16,:uint32,:uint32,:uint32], XrbSetCrtcGammaCookie
    attach_function :xcb_set_crtc_gamma, [:pointer,:uint8,:uint8,:uint16,:xrb_crtc_t,:uint16,:uint32,:uint32,:uint32], XrbSetCrtcGammaCookie
    class XrbGetScreenResourcesCurrentRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :timestamp, :xrb_timestamp_t,
          :config_timestamp, :xrb_timestamp_t,
          :num_crtcs, :uint16,
          :num_outputs, :uint16,
          :num_modes, :uint16,
          :names_len, :uint16,
          :pad2, [:uint8, 8]
    end

    class XrbGetScreenResourcesCurrentCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_screen_resources_current, [:pointer,:uint8,:uint8,:uint16,:xrb_timestamp_t,:xrb_timestamp_t,:uint16,:uint16,:uint16,:uint16,:uint32,:uint32,:uint32,:uint32], XrbGetScreenResourcesCurrentCookie
    class XrbGetScreenResourcesCurrentReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :timestamp, :xrb_timestamp_t,
          :config_timestamp, :xrb_timestamp_t,
          :num_crtcs, :uint16,
          :num_outputs, :uint16,
          :num_modes, :uint16,
          :names_len, :uint16,
          :pad2, [:uint8, 8]
    end

    attach_function :xcb_get_screen_resources_current_reply, [:pointer, XrbGetScreenResourcesCurrentCookie, :pointer], :pointer

        
    class XrbSetCrtcTransformRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :crtc, :xrb_crtc_t,
          :transform, XrbTransform,
          :filter_len, :uint16,
          :pad1, [:uint8, 2]
    end

    class XrbSetCrtcTransformCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_set_crtc_transform_checked, [:pointer,:uint8,:uint8,:uint16,:xrb_crtc_t,XrbTransform,:uint16,:uint32,:uint32], XrbSetCrtcTransformCookie
    attach_function :xcb_set_crtc_transform, [:pointer,:uint8,:uint8,:uint16,:xrb_crtc_t,XrbTransform,:uint16,:uint32,:uint32], XrbSetCrtcTransformCookie
    class XrbGetCrtcTransformRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :pending_transform, XrbTransform,
          :has_transforms, :bool,
          :pad2, [:uint8, 3],
          :current_transform, XrbTransform,
          :pad3, [:uint8, 4],
          :pending_len, :uint16,
          :pending_nparams, :uint16,
          :current_len, :uint16,
          :current_nparams, :uint16
    end

    class XrbGetCrtcTransformCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_crtc_transform, [:pointer,:uint8,:uint8,:uint16,XrbTransform,:bool,XrbTransform,:uint16,:uint16,:uint16,:uint16,:uint32,:uint32,:uint32,:uint32], XrbGetCrtcTransformCookie
    class XrbGetCrtcTransformReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :pending_transform, XrbTransform,
          :has_transforms, :bool,
          :pad2, [:uint8, 3],
          :current_transform, XrbTransform,
          :pad3, [:uint8, 4],
          :pending_len, :uint16,
          :pending_nparams, :uint16,
          :current_len, :uint16,
          :current_nparams, :uint16
    end

    attach_function :xcb_get_crtc_transform_reply, [:pointer, XrbGetCrtcTransformCookie, :pointer], :pointer

        
    class XrbGetPanningRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :timestamp, :xrb_timestamp_t,
          :left, :uint16,
          :top, :uint16,
          :width, :uint16,
          :height, :uint16,
          :track_left, :uint16,
          :track_top, :uint16,
          :track_width, :uint16,
          :track_height, :uint16,
          :border_left, :int16,
          :border_top, :int16,
          :border_right, :int16,
          :border_bottom, :int16
    end

    class XrbGetPanningCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_panning, [:pointer,:uint8,:uint8,:uint16,:xrb_timestamp_t,:uint16,:uint16,:uint16,:uint16,:uint16,:uint16,:uint16,:uint16,:int16,:int16,:int16,:int16], XrbGetPanningCookie
    class XrbGetPanningReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :status, :uint8,
          :sequence, :uint16,
          :length, :uint32,
          :timestamp, :xrb_timestamp_t,
          :left, :uint16,
          :top, :uint16,
          :width, :uint16,
          :height, :uint16,
          :track_left, :uint16,
          :track_top, :uint16,
          :track_width, :uint16,
          :track_height, :uint16,
          :border_left, :int16,
          :border_top, :int16,
          :border_right, :int16,
          :border_bottom, :int16
    end

    attach_function :xcb_get_panning_reply, [:pointer, XrbGetPanningCookie, :pointer], :pointer

        
    class XrbSetPanningRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :timestamp, :xrb_timestamp_t
    end

    class XrbSetPanningCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_set_panning, [:pointer,:uint8,:uint8,:uint16,:xrb_timestamp_t], XrbSetPanningCookie
    class XrbSetPanningReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :status, :uint8,
          :sequence, :uint16,
          :length, :uint32,
          :timestamp, :xrb_timestamp_t
    end

    attach_function :xcb_set_panning_reply, [:pointer, XrbSetPanningCookie, :pointer], :pointer

        
    class XrbSetOutputPrimaryRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :window, :xrb_window_t,
          :output, :xrb_output_t
    end

    class XrbSetOutputPrimaryCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_set_output_primary_checked, [:pointer,:uint8,:uint8,:uint16,:xrb_window_t,:xrb_output_t], XrbSetOutputPrimaryCookie
    attach_function :xcb_set_output_primary, [:pointer,:uint8,:uint8,:uint16,:xrb_window_t,:xrb_output_t], XrbSetOutputPrimaryCookie
    class XrbGetOutputPrimaryRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :output, :xrb_output_t
    end

    class XrbGetOutputPrimaryCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_get_output_primary, [:pointer,:uint8,:uint8,:uint16,:xrb_output_t], XrbGetOutputPrimaryCookie
    class XrbGetOutputPrimaryReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :output, :xrb_output_t
    end

    attach_function :xcb_get_output_primary_reply, [:pointer, XrbGetOutputPrimaryCookie, :pointer], :pointer

        
  end
end
