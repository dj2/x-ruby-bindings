#
# This file auto-generated. Do not edit.
#

require 'ffi'
require 'xrb/xproto'
class Xrb
  class XPrint
    extend FFI::Library
    ffi_lib 'xprint'
    MAJOR_VERSION = 1
    MINOR_VERSION = 0
    typedef :uint8, :string8_t
    class String8Iterator < FFI::Struct
      layout \
          :data, :window_t,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_string8_next, [:pointer], :void
    attach_function :xcb_string8_end, [:pointer], GenericIterator
    class Printer < FFI::Struct
      layout \
          :nameLen, :uint32,
          :descLen, :uint32
    end

    class PrinterIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_printer_next, [:pointer], :void
    attach_function :xcb_printer_end, [:pointer], GenericIterator
    attach_function :xcb_printer_sizeof, [:pointer], :int
    attach_function :xcb_printer_name, [:pointer], :pointer
    attach_function :xcb_printer_name_length, [:pointer], :int
    attach_function :xcb_printer_description, [:pointer], :pointer
    attach_function :xcb_printer_description_length, [:pointer], :int
    typedef :uint32, :pcontext_t
    class PcontextIterator < FFI::Struct
      layout \
          :data, :window_t,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_pcontext_next, [:pointer], :void
    attach_function :xcb_pcontext_end, [:pointer], GenericIterator
    GET_DOC_FINISHED = 0
    GET_DOC_SECOND_CONSUMER = 1
    EV_MASK_NO_EVENT_MASK = 0
    EV_MASK_PRINT_MASK = 1 << 0
    EV_MASK_ATTRIBUTE_MASK = 1 << 1
    DETAIL_START_JOB_NOTIFY = 1
    DETAIL_END_JOB_NOTIFY = 2
    DETAIL_START_DOC_NOTIFY = 3
    DETAIL_END_DOC_NOTIFY = 4
    DETAIL_START_PAGE_NOTIFY = 5
    DETAIL_END_PAGE_NOTIFY = 6
    ATTR_JOB_ATTR = 1
    ATTR_DOC_ATTR = 2
    ATTR_PAGE_ATTR = 3
    ATTR_PRINTER_ATTR = 4
    ATTR_SERVER_ATTR = 5
    ATTR_MEDIUM_ATTR = 6
    ATTR_SPOOLER_ATTR = 7
    class NotifyEvent < FFI::Struct
      layout \
          :response_type, :uint8,
          :detail, :uint8,
          :context, :pcontext_t,
          :cancel, :bool
    end

    class AttributNotifyEvent < FFI::Struct
      layout \
          :response_type, :uint8,
          :detail, :uint8,
          :context, :pcontext_t
    end

    class BadContextError < FFI::Struct
      layout \
          :response_type, :uint8,
          :error_code, :uint8,
          :sequence, :uint16
    end

    class BadSequenceError < FFI::Struct
      layout \
          :response_type, :uint8,
          :error_code, :uint8,
          :sequence, :uint16
    end

    class PrintQueryVersionRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :major_version, :uint16,
          :minor_version, :uint16
    end

    class PrintQueryVersionCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_print_query_version, [:pointer,:uint8,:uint16,:uint16], PrintQueryVersionCookie
    class PrintQueryVersionReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :major_version, :uint16,
          :minor_version, :uint16
    end

    attach_function :xcb_print_query_version_reply, [:pointer, PrintQueryVersionCookie, :pointer], :pointer

        
    class PrintGetPrinterListRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :listCount, :uint32,
          :pad2, [:uint8, 20]
    end

    class PrintGetPrinterListCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_print_get_printer_list, [:pointer,:uint8,:uint32,:uint32], PrintGetPrinterListCookie
    class PrintGetPrinterListReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :listCount, :uint32,
          :pad2, [:uint8, 20]
    end

    attach_function :xcb_print_get_printer_list_reply, [:pointer, PrintGetPrinterListCookie, :pointer], :pointer

        
    class PrintRehashPrinterListRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16
    end

    class PrintRehashPrinterListCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_print_rehash_printer_list_checked, [:pointer,:uint8], PrintRehashPrinterListCookie
    attach_function :xcb_print_rehash_printer_list, [:pointer,:uint8], PrintRehashPrinterListCookie
    class CreateContextRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :context_id, :uint32,
          :printerNameLen, :uint32,
          :localeLen, :uint32
    end

    class CreateContextCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_create_context_checked, [:pointer,:uint8,:uint32,:uint32,:uint32,:uint32,:uint32], CreateContextCookie
    attach_function :xcb_create_context, [:pointer,:uint8,:uint32,:uint32,:uint32,:uint32,:uint32], CreateContextCookie
    class PrintSetContextRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :context, :uint32
    end

    class PrintSetContextCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_print_set_context_checked, [:pointer,:uint8,:uint32], PrintSetContextCookie
    attach_function :xcb_print_set_context, [:pointer,:uint8,:uint32], PrintSetContextCookie
    class PrintGetContextRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :context, :uint32
    end

    class PrintGetContextCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_print_get_context, [:pointer,:uint8,:uint32], PrintGetContextCookie
    class PrintGetContextReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :context, :uint32
    end

    attach_function :xcb_print_get_context_reply, [:pointer, PrintGetContextCookie, :pointer], :pointer

        
    class PrintDestroyContextRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :context, :uint32
    end

    class PrintDestroyContextCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_print_destroy_context_checked, [:pointer,:uint8,:uint32], PrintDestroyContextCookie
    attach_function :xcb_print_destroy_context, [:pointer,:uint8,:uint32], PrintDestroyContextCookie
    class PrintGetScreenOfContextRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :root, :window_t
    end

    class PrintGetScreenOfContextCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_print_get_screen_of_context, [:pointer,:uint8,:window_t], PrintGetScreenOfContextCookie
    class PrintGetScreenOfContextReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :root, :window_t
    end

    attach_function :xcb_print_get_screen_of_context_reply, [:pointer, PrintGetScreenOfContextCookie, :pointer], :pointer

        
    class PrintStartJobRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :output_mode, :uint8
    end

    class PrintStartJobCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_print_start_job_checked, [:pointer,:uint8,:uint8], PrintStartJobCookie
    attach_function :xcb_print_start_job, [:pointer,:uint8,:uint8], PrintStartJobCookie
    class PrintEndJobRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :cancel, :bool
    end

    class PrintEndJobCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_print_end_job_checked, [:pointer,:uint8,:bool], PrintEndJobCookie
    attach_function :xcb_print_end_job, [:pointer,:uint8,:bool], PrintEndJobCookie
    class PrintStartDocRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :driver_mode, :uint8
    end

    class PrintStartDocCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_print_start_doc_checked, [:pointer,:uint8,:uint8], PrintStartDocCookie
    attach_function :xcb_print_start_doc, [:pointer,:uint8,:uint8], PrintStartDocCookie
    class PrintEndDocRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :cancel, :bool
    end

    class PrintEndDocCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_print_end_doc_checked, [:pointer,:uint8,:bool], PrintEndDocCookie
    attach_function :xcb_print_end_doc, [:pointer,:uint8,:bool], PrintEndDocCookie
    class PrintPutDocumentDataRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :drawable, :drawable_t,
          :len_data, :uint32,
          :len_fmt, :uint16,
          :len_options, :uint16
    end

    class PrintPutDocumentDataCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_print_put_document_data_checked, [:pointer,:uint8,:drawable_t,:uint32,:uint16,:uint16,:uint32,:uint32,:uint32], PrintPutDocumentDataCookie
    attach_function :xcb_print_put_document_data, [:pointer,:uint8,:drawable_t,:uint32,:uint16,:uint16,:uint32,:uint32,:uint32], PrintPutDocumentDataCookie
    class PrintGetDocumentDataRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :status_code, :uint32,
          :finished_flag, :uint32,
          :dataLen, :uint32,
          :pad2, [:uint8, 12]
    end

    class PrintGetDocumentDataCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_print_get_document_data, [:pointer,:uint8,:uint32,:uint32,:uint32,:uint32], PrintGetDocumentDataCookie
    class PrintGetDocumentDataReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :status_code, :uint32,
          :finished_flag, :uint32,
          :dataLen, :uint32,
          :pad2, [:uint8, 12]
    end

    attach_function :xcb_print_get_document_data_reply, [:pointer, PrintGetDocumentDataCookie, :pointer], :pointer

        
    class PrintStartPageRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :window, :window_t
    end

    class PrintStartPageCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_print_start_page_checked, [:pointer,:uint8,:window_t], PrintStartPageCookie
    attach_function :xcb_print_start_page, [:pointer,:uint8,:window_t], PrintStartPageCookie
    class PrintEndPageRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :cancel, :bool,
          :pad1, [:uint8, 3]
    end

    class PrintEndPageCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_print_end_page_checked, [:pointer,:uint8,:bool], PrintEndPageCookie
    attach_function :xcb_print_end_page, [:pointer,:uint8,:bool], PrintEndPageCookie
    class PrintSelectInputRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :context, :pcontext_t,
          :event_mask, :uint32
    end

    class PrintSelectInputCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_print_select_input_checked, [:pointer,:uint8,:pcontext_t,:uint32,:pointer], PrintSelectInputCookie
    attach_function :xcb_print_select_input, [:pointer,:uint8,:pcontext_t,:uint32,:pointer], PrintSelectInputCookie
    class PrintInputSelectedRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :event_mask, :uint32,
          :all_events_mask, :uint32
    end

    class PrintInputSelectedCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_print_input_selected, [:pointer,:uint8,:uint32,:pointer,:uint32,:pointer], PrintInputSelectedCookie
    class PrintInputSelectedReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :event_mask, :uint32,
          :all_events_mask, :uint32
    end

    attach_function :xcb_print_input_selected_reply, [:pointer, PrintInputSelectedCookie, :pointer], :pointer

        
    class PrintGetAttributesRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :stringLen, :uint32,
          :pad2, [:uint8, 20],
          :attributes, :string8_t
    end

    class PrintGetAttributesCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_print_get_attributes, [:pointer,:uint8,:uint32,:string8_t], PrintGetAttributesCookie
    class PrintGetAttributesReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :stringLen, :uint32,
          :pad2, [:uint8, 20],
          :attributes, :string8_t
    end

    attach_function :xcb_print_get_attributes_reply, [:pointer, PrintGetAttributesCookie, :pointer], :pointer

        
    class PrintGetOneAttributesRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :valueLen, :uint32,
          :pad2, [:uint8, 20]
    end

    class PrintGetOneAttributesCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_print_get_one_attributes, [:pointer,:uint8,:uint32,:uint32], PrintGetOneAttributesCookie
    class PrintGetOneAttributesReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :valueLen, :uint32,
          :pad2, [:uint8, 20]
    end

    attach_function :xcb_print_get_one_attributes_reply, [:pointer, PrintGetOneAttributesCookie, :pointer], :pointer

        
    class PrintSetAttributesRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :context, :pcontext_t,
          :stringLen, :uint32,
          :pool, :uint8,
          :rule, :uint8,
          :pad1, [:uint8, 2]
    end

    class PrintSetAttributesCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_print_set_attributes_checked, [:pointer,:uint8,:pcontext_t,:uint32,:uint8,:uint8,:uint32], PrintSetAttributesCookie
    attach_function :xcb_print_set_attributes, [:pointer,:uint8,:pcontext_t,:uint32,:uint8,:uint8,:uint32], PrintSetAttributesCookie
    class PrintGetPageDimensionsRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :width, :uint16,
          :height, :uint16,
          :offset_x, :uint16,
          :offset_y, :uint16,
          :reproducible_width, :uint16,
          :reproducible_height, :uint16
    end

    class PrintGetPageDimensionsCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_print_get_page_dimensions, [:pointer,:uint8,:uint16,:uint16,:uint16,:uint16,:uint16,:uint16], PrintGetPageDimensionsCookie
    class PrintGetPageDimensionsReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :width, :uint16,
          :height, :uint16,
          :offset_x, :uint16,
          :offset_y, :uint16,
          :reproducible_width, :uint16,
          :reproducible_height, :uint16
    end

    attach_function :xcb_print_get_page_dimensions_reply, [:pointer, PrintGetPageDimensionsCookie, :pointer], :pointer

        
    class PrintQueryScreensRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :listCount, :uint32,
          :pad2, [:uint8, 20]
    end

    class PrintQueryScreensCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_print_query_screens, [:pointer,:uint8,:uint32,:uint32], PrintQueryScreensCookie
    class PrintQueryScreensReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :listCount, :uint32,
          :pad2, [:uint8, 20]
    end

    attach_function :xcb_print_query_screens_reply, [:pointer, PrintQueryScreensCookie, :pointer], :pointer

        
    class PrintSetImageResolutionRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :previous_resolutions, :uint16
    end

    class PrintSetImageResolutionCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_print_set_image_resolution, [:pointer,:uint8,:uint16], PrintSetImageResolutionCookie
    class PrintSetImageResolutionReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :status, :bool,
          :sequence, :uint16,
          :length, :uint32,
          :previous_resolutions, :uint16
    end

    attach_function :xcb_print_set_image_resolution_reply, [:pointer, PrintSetImageResolutionCookie, :pointer], :pointer

        
    class PrintGetImageResolutionRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :image_resolution, :uint16
    end

    class PrintGetImageResolutionCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_print_get_image_resolution, [:pointer,:uint8,:uint16], PrintGetImageResolutionCookie
    class PrintGetImageResolutionReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :image_resolution, :uint16
    end

    attach_function :xcb_print_get_image_resolution_reply, [:pointer, PrintGetImageResolutionCookie, :pointer], :pointer

        
  end
end
