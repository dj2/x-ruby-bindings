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
    typedef :uint32, :mode_t
    class ModeIterator < FFI::Struct
      layout \
          :data, :window_t,
          :rem, :int,
          :indent, :int
    end
    attach_function :mode_next, :xcb_mode_next, [:pointer], :void
    attach_function :mode_end, :xcb_mode_end, [:pointer], GenericIterator
    typedef :uint32, :crtc_t
    class CrtcIterator < FFI::Struct
      layout \
          :data, :window_t,
          :rem, :int,
          :indent, :int
    end
    attach_function :crtc_next, :xcb_crtc_next, [:pointer], :void
    attach_function :crtc_end, :xcb_crtc_end, [:pointer], GenericIterator
    typedef :uint32, :output_t
    class OutputIterator < FFI::Struct
      layout \
          :data, :window_t,
          :rem, :int,
          :indent, :int
    end
    attach_function :output_next, :xcb_output_next, [:pointer], :void
    attach_function :output_end, :xcb_output_end, [:pointer], GenericIterator
    ROTATION_ROTATE_0 = 1 << 0
    ROTATION_ROTATE_90 = 1 << 1
    ROTATION_ROTATE_180 = 1 << 2
    ROTATION_ROTATE_270 = 1 << 3
    ROTATION_REFLECT_X = 1 << 4
    ROTATION_REFLECT_Y = 1 << 5
    class ScreenSize < FFI::Struct
      layout \
          :width, :uint16,
          :height, :uint16,
          :mwidth, :uint16,
          :mheight, :uint16
    end

    class ScreenSizeIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :screen_size_next, :xcb_screen_size_next, [:pointer], :void
    attach_function :screen_size_end, :xcb_screen_size_end, [:pointer], GenericIterator
    class RefreshRates < FFI::Struct
      layout \
          :nRates, :uint16
    end

    class RefreshRatesIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :refresh_rates_next, :xcb_refresh_rates_next, [:pointer], :void
    attach_function :refresh_rates_end, :xcb_refresh_rates_end, [:pointer], GenericIterator
    attach_function :refresh_rates_sizeof, :xcb_refresh_rates_sizeof, [:pointer], :int
    attach_function :refresh_rates_rates, :xcb_refresh_rates_rates, [:pointer], :pointer
    attach_function :refresh_rates_rates_length, :xcb_refresh_rates_rates_length, [:pointer], :int
    SET_CONFIG_SUCCESS = 0
    SET_CONFIG_INVALID_CONFIG_TIME = 1
    SET_CONFIG_INVALID_TIME = 2
    SET_CONFIG_FAILED = 3
    NOTIFY_MASK_SCREEN_CHANGE = 1 << 0
    NOTIFY_MASK_CRTC_CHANGE = 1 << 1
    NOTIFY_MASK_OUTPUT_CHANGE = 1 << 2
    NOTIFY_MASK_OUTPUT_PROPERTY = 1 << 3
    MODE_FLAG_HSYNC_POSITIVE = 1 << 0
    MODE_FLAG_HSYNC_NEGATIVE = 1 << 1
    MODE_FLAG_VSYNC_POSITIVE = 1 << 2
    MODE_FLAG_VSYNC_NEGATIVE = 1 << 3
    MODE_FLAG_INTERLACE = 1 << 4
    MODE_FLAG_DOUBLE_SCAN = 1 << 5
    MODE_FLAG_CSYNC = 1 << 6
    MODE_FLAG_CSYNC_POSITIVE = 1 << 7
    MODE_FLAG_CSYNC_NEGATIVE = 1 << 8
    MODE_FLAG_HSKEW_PRESENT = 1 << 9
    MODE_FLAG_BCAST = 1 << 10
    MODE_FLAG_PIXEL_MULTIPLEX = 1 << 11
    MODE_FLAG_DOUBLE_CLOCK = 1 << 12
    MODE_FLAG_HALVE_CLOCK = 1 << 13
    class ModeInfo < FFI::Struct
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

    class ModeInfoIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :mode_info_next, :xcb_mode_info_next, [:pointer], :void
    attach_function :mode_info_end, :xcb_mode_info_end, [:pointer], GenericIterator
    CONNECTION_CONNECTED = 1
    CONNECTION_DISCONNECTED = 2
    CONNECTION_UNKNOWN = 3
    NOTIFY_CRTC_CHANGE = 0
    NOTIFY_OUTPUT_CHANGE = 1
    NOTIFY_OUTPUT_PROPERTY = 2
    class CrtcChange < FFI::Struct
      layout \
          :timestamp, :timestamp_t,
          :window, :window_t,
          :crtc, :crtc_t,
          :mode, :mode_t,
          :rotation, :uint16,
          :pad1, [:uint8, 2],
          :x, :int16,
          :y, :int16,
          :width, :uint16,
          :height, :uint16
    end

    class CrtcChangeIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :crtc_change_next, :xcb_crtc_change_next, [:pointer], :void
    attach_function :crtc_change_end, :xcb_crtc_change_end, [:pointer], GenericIterator
    class OutputChange < FFI::Struct
      layout \
          :timestamp, :timestamp_t,
          :config_timestamp, :timestamp_t,
          :window, :window_t,
          :output, :output_t,
          :crtc, :crtc_t,
          :mode, :mode_t,
          :rotation, :uint16,
          :connection, :uint8,
          :subpixel_order, :uint8
    end

    class OutputChangeIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :output_change_next, :xcb_output_change_next, [:pointer], :void
    attach_function :output_change_end, :xcb_output_change_end, [:pointer], GenericIterator
    class OutputProperty < FFI::Struct
      layout \
          :window, :window_t,
          :output, :output_t,
          :atom, :atom_t,
          :timestamp, :timestamp_t,
          :status, :uint8,
          :pad1, [:uint8, 11]
    end

    class OutputPropertyIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :output_property_next, :xcb_output_property_next, [:pointer], :void
    attach_function :output_property_end, :xcb_output_property_end, [:pointer], GenericIterator
    class NotifyData < FFI::Union
      layout \
          :cc, CrtcChange,
          :oc, OutputChange,
          :op, OutputProperty
    end

    class ScreenChangeNotifyEvent < FFI::Struct
      layout \
          :response_type, :uint8,
          :rotation, :uint8,
          :timestamp, :timestamp_t,
          :config_timestamp, :timestamp_t,
          :root, :window_t,
          :request_window, :window_t,
          :sizeID, :uint16,
          :subpixel_order, :uint16,
          :width, :uint16,
          :height, :uint16,
          :mwidth, :uint16,
          :mheight, :uint16
    end

    class NotifyEvent < FFI::Struct
      layout \
          :response_type, :uint8,
          :subCode, :uint8,
          :u, NotifyData
    end

    class BadOutputError < FFI::Struct
      layout \
          :response_type, :uint8,
          :error_code, :uint8,
          :sequence, :uint16
    end

    class BadCrtcError < FFI::Struct
      layout \
          :response_type, :uint8,
          :error_code, :uint8,
          :sequence, :uint16
    end

    class BadModeError < FFI::Struct
      layout \
          :response_type, :uint8,
          :error_code, :uint8,
          :sequence, :uint16
    end

    class QueryVersionRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :major_version, :uint32,
          :minor_version, :uint32,
          :pad2, [:uint8, 16]
    end

    class QueryVersionCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :query_version, :xcb_query_version, [:pointer,:uint8,:uint32,:uint32], QueryVersionCookie
    class QueryVersionReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :major_version, :uint32,
          :minor_version, :uint32,
          :pad2, [:uint8, 16]
    end

    attach_function :query_version_reply, :xcb_query_version_reply, [:pointer, QueryVersionCookie, :pointer], :pointer

        
    class SetScreenConfigRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :new_timestamp, :timestamp_t,
          :config_timestamp, :timestamp_t,
          :root, :window_t,
          :subpixel_order, :uint16,
          :pad1, [:uint8, 10]
    end

    class SetScreenConfigCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :set_screen_config, :xcb_set_screen_config, [:pointer,:uint8,:timestamp_t,:timestamp_t,:window_t,:uint16], SetScreenConfigCookie
    class SetScreenConfigReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :status, :uint8,
          :sequence, :uint16,
          :length, :uint32,
          :new_timestamp, :timestamp_t,
          :config_timestamp, :timestamp_t,
          :root, :window_t,
          :subpixel_order, :uint16,
          :pad1, [:uint8, 10]
    end

    attach_function :set_screen_config_reply, :xcb_set_screen_config_reply, [:pointer, SetScreenConfigCookie, :pointer], :pointer

        
    class SelectInputRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :window, :window_t,
          :enable, :uint16,
          :pad1, [:uint8, 2]
    end

    class SelectInputCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :select_input_checked, :xcb_select_input_checked, [:pointer,:uint8,:window_t,:uint16], SelectInputCookie
    attach_function :select_input, :xcb_select_input, [:pointer,:uint8,:window_t,:uint16], SelectInputCookie
    class GetScreenInfoRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :root, :window_t,
          :timestamp, :timestamp_t,
          :config_timestamp, :timestamp_t,
          :nSizes, :uint16,
          :sizeID, :uint16,
          :rotation, :uint16,
          :rate, :uint16,
          :nInfo, :uint16,
          :pad1, [:uint8, 2]
    end

    class GetScreenInfoCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :get_screen_info, :xcb_get_screen_info, [:pointer,:uint8,:window_t,:timestamp_t,:timestamp_t,:uint16,:uint16,:uint16,:uint16,:uint16,:uint32,:uint32], GetScreenInfoCookie
    class GetScreenInfoReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :rotations, :uint8,
          :sequence, :uint16,
          :length, :uint32,
          :root, :window_t,
          :timestamp, :timestamp_t,
          :config_timestamp, :timestamp_t,
          :nSizes, :uint16,
          :sizeID, :uint16,
          :rotation, :uint16,
          :rate, :uint16,
          :nInfo, :uint16,
          :pad1, [:uint8, 2]
    end

    attach_function :get_screen_info_reply, :xcb_get_screen_info_reply, [:pointer, GetScreenInfoCookie, :pointer], :pointer

        
    class GetScreenSizeRangeRequest < FFI::Struct
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

    class GetScreenSizeRangeCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :get_screen_size_range, :xcb_get_screen_size_range, [:pointer,:uint8,:uint16,:uint16,:uint16,:uint16], GetScreenSizeRangeCookie
    class GetScreenSizeRangeReply < FFI::Struct
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

    attach_function :get_screen_size_range_reply, :xcb_get_screen_size_range_reply, [:pointer, GetScreenSizeRangeCookie, :pointer], :pointer

        
    class SetScreenSizeRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :window, :window_t,
          :width, :uint16,
          :height, :uint16,
          :mm_width, :uint32,
          :mm_height, :uint32
    end

    class SetScreenSizeCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :set_screen_size_checked, :xcb_set_screen_size_checked, [:pointer,:uint8,:window_t,:uint16,:uint16,:uint32,:uint32], SetScreenSizeCookie
    attach_function :set_screen_size, :xcb_set_screen_size, [:pointer,:uint8,:window_t,:uint16,:uint16,:uint32,:uint32], SetScreenSizeCookie
    class GetScreenResourcesRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :timestamp, :timestamp_t,
          :config_timestamp, :timestamp_t,
          :num_crtcs, :uint16,
          :num_outputs, :uint16,
          :num_modes, :uint16,
          :names_len, :uint16,
          :pad2, [:uint8, 8]
    end

    class GetScreenResourcesCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :get_screen_resources, :xcb_get_screen_resources, [:pointer,:uint8,:timestamp_t,:timestamp_t,:uint16,:uint16,:uint16,:uint16,:uint32,:uint32,:uint32,:uint32], GetScreenResourcesCookie
    class GetScreenResourcesReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :timestamp, :timestamp_t,
          :config_timestamp, :timestamp_t,
          :num_crtcs, :uint16,
          :num_outputs, :uint16,
          :num_modes, :uint16,
          :names_len, :uint16,
          :pad2, [:uint8, 8]
    end

    attach_function :get_screen_resources_reply, :xcb_get_screen_resources_reply, [:pointer, GetScreenResourcesCookie, :pointer], :pointer

        
    class GetOutputInfoRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :timestamp, :timestamp_t,
          :crtc, :crtc_t,
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

    class GetOutputInfoCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :get_output_info, :xcb_get_output_info, [:pointer,:uint8,:timestamp_t,:crtc_t,:uint32,:uint32,:uint8,:uint8,:uint16,:uint16,:uint16,:uint16,:uint16,:uint32,:uint32,:uint32,:uint32], GetOutputInfoCookie
    class GetOutputInfoReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :status, :uint8,
          :sequence, :uint16,
          :length, :uint32,
          :timestamp, :timestamp_t,
          :crtc, :crtc_t,
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

    attach_function :get_output_info_reply, :xcb_get_output_info_reply, [:pointer, GetOutputInfoCookie, :pointer], :pointer

        
    class ListOutputPropertiesRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :num_atoms, :uint16,
          :pad2, [:uint8, 22]
    end

    class ListOutputPropertiesCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :list_output_properties, :xcb_list_output_properties, [:pointer,:uint8,:uint16,:uint32], ListOutputPropertiesCookie
    class ListOutputPropertiesReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :num_atoms, :uint16,
          :pad2, [:uint8, 22]
    end

    attach_function :list_output_properties_reply, :xcb_list_output_properties_reply, [:pointer, ListOutputPropertiesCookie, :pointer], :pointer

        
    class QueryOutputPropertyRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :pending, :bool,
          :range, :bool,
          :immutable, :bool,
          :pad2, [:uint8, 21]
    end

    class QueryOutputPropertyCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :query_output_property, :xcb_query_output_property, [:pointer,:uint8,:bool,:bool,:bool,:uint32], QueryOutputPropertyCookie
    class QueryOutputPropertyReply < FFI::Struct
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

    attach_function :query_output_property_reply, :xcb_query_output_property_reply, [:pointer, QueryOutputPropertyCookie, :pointer], :pointer

        
    class ConfigureOutputPropertyRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :output, :output_t,
          :property, :atom_t,
          :pending, :bool,
          :range, :bool,
          :pad1, [:uint8, 2]
    end

    class ConfigureOutputPropertyCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :configure_output_property_checked, :xcb_configure_output_property_checked, [:pointer,:uint8,:output_t,:atom_t,:bool,:bool,:uint32], ConfigureOutputPropertyCookie
    attach_function :configure_output_property, :xcb_configure_output_property, [:pointer,:uint8,:output_t,:atom_t,:bool,:bool,:uint32], ConfigureOutputPropertyCookie
    class ChangeOutputPropertyRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :output, :output_t,
          :property, :atom_t,
          :type, :atom_t,
          :format, :uint8,
          :mode, :uint8,
          :pad1, [:uint8, 2],
          :num_units, :uint32
    end

    class ChangeOutputPropertyCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :change_output_property_checked, :xcb_change_output_property_checked, [:pointer,:uint8,:output_t,:atom_t,:atom_t,:uint8,:uint8,:uint32,:uint32], ChangeOutputPropertyCookie
    attach_function :change_output_property, :xcb_change_output_property, [:pointer,:uint8,:output_t,:atom_t,:atom_t,:uint8,:uint8,:uint32,:uint32], ChangeOutputPropertyCookie
    class DeleteOutputPropertyRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :output, :output_t,
          :property, :atom_t
    end

    class DeleteOutputPropertyCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :delete_output_property_checked, :xcb_delete_output_property_checked, [:pointer,:uint8,:output_t,:atom_t], DeleteOutputPropertyCookie
    attach_function :delete_output_property, :xcb_delete_output_property, [:pointer,:uint8,:output_t,:atom_t], DeleteOutputPropertyCookie
    class GetOutputPropertyRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :type, :atom_t,
          :bytes_after, :uint32,
          :num_items, :uint32,
          :pad1, [:uint8, 12]
    end

    class GetOutputPropertyCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :get_output_property, :xcb_get_output_property, [:pointer,:uint8,:atom_t,:uint32,:uint32,:uint32], GetOutputPropertyCookie
    class GetOutputPropertyReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :format, :uint8,
          :sequence, :uint16,
          :length, :uint32,
          :type, :atom_t,
          :bytes_after, :uint32,
          :num_items, :uint32,
          :pad1, [:uint8, 12]
    end

    attach_function :get_output_property_reply, :xcb_get_output_property_reply, [:pointer, GetOutputPropertyCookie, :pointer], :pointer

        
    class CreateModeRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :mode, :mode_t,
          :pad2, [:uint8, 20]
    end

    class CreateModeCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :create_mode, :xcb_create_mode, [:pointer,:uint8,:mode_t], CreateModeCookie
    class CreateModeReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :mode, :mode_t,
          :pad2, [:uint8, 20]
    end

    attach_function :create_mode_reply, :xcb_create_mode_reply, [:pointer, CreateModeCookie, :pointer], :pointer

        
    class DestroyModeRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :mode, :mode_t
    end

    class DestroyModeCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :destroy_mode_checked, :xcb_destroy_mode_checked, [:pointer,:uint8,:mode_t], DestroyModeCookie
    attach_function :destroy_mode, :xcb_destroy_mode, [:pointer,:uint8,:mode_t], DestroyModeCookie
    class AddOutputModeRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :output, :output_t,
          :mode, :mode_t
    end

    class AddOutputModeCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :add_output_mode_checked, :xcb_add_output_mode_checked, [:pointer,:uint8,:output_t,:mode_t], AddOutputModeCookie
    attach_function :add_output_mode, :xcb_add_output_mode, [:pointer,:uint8,:output_t,:mode_t], AddOutputModeCookie
    class DeleteOutputModeRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :output, :output_t,
          :mode, :mode_t
    end

    class DeleteOutputModeCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :delete_output_mode_checked, :xcb_delete_output_mode_checked, [:pointer,:uint8,:output_t,:mode_t], DeleteOutputModeCookie
    attach_function :delete_output_mode, :xcb_delete_output_mode, [:pointer,:uint8,:output_t,:mode_t], DeleteOutputModeCookie
    class GetCrtcInfoRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :timestamp, :timestamp_t,
          :x, :int16,
          :y, :int16,
          :width, :uint16,
          :height, :uint16,
          :mode, :mode_t,
          :rotation, :uint16,
          :rotations, :uint16,
          :num_outputs, :uint16,
          :num_possible_outputs, :uint16
    end

    class GetCrtcInfoCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :get_crtc_info, :xcb_get_crtc_info, [:pointer,:uint8,:timestamp_t,:int16,:int16,:uint16,:uint16,:mode_t,:uint16,:uint16,:uint16,:uint16,:uint32,:uint32], GetCrtcInfoCookie
    class GetCrtcInfoReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :status, :uint8,
          :sequence, :uint16,
          :length, :uint32,
          :timestamp, :timestamp_t,
          :x, :int16,
          :y, :int16,
          :width, :uint16,
          :height, :uint16,
          :mode, :mode_t,
          :rotation, :uint16,
          :rotations, :uint16,
          :num_outputs, :uint16,
          :num_possible_outputs, :uint16
    end

    attach_function :get_crtc_info_reply, :xcb_get_crtc_info_reply, [:pointer, GetCrtcInfoCookie, :pointer], :pointer

        
    class SetCrtcConfigRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :timestamp, :timestamp_t,
          :pad1, [:uint8, 20]
    end

    class SetCrtcConfigCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :set_crtc_config, :xcb_set_crtc_config, [:pointer,:uint8,:timestamp_t], SetCrtcConfigCookie
    class SetCrtcConfigReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :status, :uint8,
          :sequence, :uint16,
          :length, :uint32,
          :timestamp, :timestamp_t,
          :pad1, [:uint8, 20]
    end

    attach_function :set_crtc_config_reply, :xcb_set_crtc_config_reply, [:pointer, SetCrtcConfigCookie, :pointer], :pointer

        
    class GetCrtcGammaSizeRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :size, :uint16,
          :pad2, [:uint8, 22]
    end

    class GetCrtcGammaSizeCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :get_crtc_gamma_size, :xcb_get_crtc_gamma_size, [:pointer,:uint8,:uint16], GetCrtcGammaSizeCookie
    class GetCrtcGammaSizeReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :size, :uint16,
          :pad2, [:uint8, 22]
    end

    attach_function :get_crtc_gamma_size_reply, :xcb_get_crtc_gamma_size_reply, [:pointer, GetCrtcGammaSizeCookie, :pointer], :pointer

        
    class GetCrtcGammaRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :size, :uint16,
          :pad2, [:uint8, 22]
    end

    class GetCrtcGammaCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :get_crtc_gamma, :xcb_get_crtc_gamma, [:pointer,:uint8,:uint16,:uint32,:uint32,:uint32], GetCrtcGammaCookie
    class GetCrtcGammaReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :size, :uint16,
          :pad2, [:uint8, 22]
    end

    attach_function :get_crtc_gamma_reply, :xcb_get_crtc_gamma_reply, [:pointer, GetCrtcGammaCookie, :pointer], :pointer

        
    class SetCrtcGammaRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :crtc, :crtc_t,
          :size, :uint16,
          :pad1, [:uint8, 2]
    end

    class SetCrtcGammaCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :set_crtc_gamma_checked, :xcb_set_crtc_gamma_checked, [:pointer,:uint8,:crtc_t,:uint16,:uint32,:uint32,:uint32], SetCrtcGammaCookie
    attach_function :set_crtc_gamma, :xcb_set_crtc_gamma, [:pointer,:uint8,:crtc_t,:uint16,:uint32,:uint32,:uint32], SetCrtcGammaCookie
    class GetScreenResourcesCurrentRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :timestamp, :timestamp_t,
          :config_timestamp, :timestamp_t,
          :num_crtcs, :uint16,
          :num_outputs, :uint16,
          :num_modes, :uint16,
          :names_len, :uint16,
          :pad2, [:uint8, 8]
    end

    class GetScreenResourcesCurrentCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :get_screen_resources_current, :xcb_get_screen_resources_current, [:pointer,:uint8,:timestamp_t,:timestamp_t,:uint16,:uint16,:uint16,:uint16,:uint32,:uint32,:uint32,:uint32], GetScreenResourcesCurrentCookie
    class GetScreenResourcesCurrentReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :timestamp, :timestamp_t,
          :config_timestamp, :timestamp_t,
          :num_crtcs, :uint16,
          :num_outputs, :uint16,
          :num_modes, :uint16,
          :names_len, :uint16,
          :pad2, [:uint8, 8]
    end

    attach_function :get_screen_resources_current_reply, :xcb_get_screen_resources_current_reply, [:pointer, GetScreenResourcesCurrentCookie, :pointer], :pointer

        
    class SetCrtcTransformRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :crtc, :crtc_t,
          :transform, Transform,
          :filter_len, :uint16,
          :pad1, [:uint8, 2]
    end

    class SetCrtcTransformCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :set_crtc_transform_checked, :xcb_set_crtc_transform_checked, [:pointer,:uint8,:crtc_t,Transform,:uint16,:uint32,:uint32], SetCrtcTransformCookie
    attach_function :set_crtc_transform, :xcb_set_crtc_transform, [:pointer,:uint8,:crtc_t,Transform,:uint16,:uint32,:uint32], SetCrtcTransformCookie
    class GetCrtcTransformRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :pending_transform, Transform,
          :has_transforms, :bool,
          :pad2, [:uint8, 3],
          :current_transform, Transform,
          :pad3, [:uint8, 4],
          :pending_len, :uint16,
          :pending_nparams, :uint16,
          :current_len, :uint16,
          :current_nparams, :uint16
    end

    class GetCrtcTransformCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :get_crtc_transform, :xcb_get_crtc_transform, [:pointer,:uint8,Transform,:bool,Transform,:uint16,:uint16,:uint16,:uint16,:uint32,:uint32,:uint32,:uint32], GetCrtcTransformCookie
    class GetCrtcTransformReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :pending_transform, Transform,
          :has_transforms, :bool,
          :pad2, [:uint8, 3],
          :current_transform, Transform,
          :pad3, [:uint8, 4],
          :pending_len, :uint16,
          :pending_nparams, :uint16,
          :current_len, :uint16,
          :current_nparams, :uint16
    end

    attach_function :get_crtc_transform_reply, :xcb_get_crtc_transform_reply, [:pointer, GetCrtcTransformCookie, :pointer], :pointer

        
    class GetPanningRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :timestamp, :timestamp_t,
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

    class GetPanningCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :get_panning, :xcb_get_panning, [:pointer,:uint8,:timestamp_t,:uint16,:uint16,:uint16,:uint16,:uint16,:uint16,:uint16,:uint16,:int16,:int16,:int16,:int16], GetPanningCookie
    class GetPanningReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :status, :uint8,
          :sequence, :uint16,
          :length, :uint32,
          :timestamp, :timestamp_t,
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

    attach_function :get_panning_reply, :xcb_get_panning_reply, [:pointer, GetPanningCookie, :pointer], :pointer

        
    class SetPanningRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :timestamp, :timestamp_t
    end

    class SetPanningCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :set_panning, :xcb_set_panning, [:pointer,:uint8,:timestamp_t], SetPanningCookie
    class SetPanningReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :status, :uint8,
          :sequence, :uint16,
          :length, :uint32,
          :timestamp, :timestamp_t
    end

    attach_function :set_panning_reply, :xcb_set_panning_reply, [:pointer, SetPanningCookie, :pointer], :pointer

        
    class SetOutputPrimaryRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :window, :window_t,
          :output, :output_t
    end

    class SetOutputPrimaryCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :set_output_primary_checked, :xcb_set_output_primary_checked, [:pointer,:uint8,:window_t,:output_t], SetOutputPrimaryCookie
    attach_function :set_output_primary, :xcb_set_output_primary, [:pointer,:uint8,:window_t,:output_t], SetOutputPrimaryCookie
    class GetOutputPrimaryRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :output, :output_t
    end

    class GetOutputPrimaryCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :get_output_primary, :xcb_get_output_primary, [:pointer,:uint8,:output_t], GetOutputPrimaryCookie
    class GetOutputPrimaryReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :output, :output_t
    end

    attach_function :get_output_primary_reply, :xcb_get_output_primary_reply, [:pointer, GetOutputPrimaryCookie, :pointer], :pointer

        
  end
end
