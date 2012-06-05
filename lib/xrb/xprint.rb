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
    typedef :uint8, :xrb_string8_t
    class XrbString8Iterator < FFI::Struct
      layout \
          :data, :xrb_window_t,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_string8_next, [:pointer], :void
    attach_function :xcb_string8_end, [:pointer], XrbGenericIterator
    class XrbPrinter < FFI::Struct
      layout \
          :nameLen, :uint32,
          :descLen, :uint32
    end

    class XrbPrinterIterator < FFI::Struct
      layout \
          :data, :pointer,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_printer_next, [:pointer], :void
    attach_function :xcb_printer_end, [:pointer], XrbGenericIterator
    attach_function :xcb_printer_sizeof, [:pointer], :int
    attach_function :xcb_printer_name, [:pointer], :pointer
    attach_function :xcb_printer_name_length, [:pointer], :int
    attach_function :xcb_printer_description, [:pointer], :pointer
    attach_function :xcb_printer_description_length, [:pointer], :int
    typedef :uint32, :xrb_pcontext_t
    class XrbPcontextIterator < FFI::Struct
      layout \
          :data, :xrb_window_t,
          :rem, :int,
          :indent, :int
    end
    attach_function :xcb_pcontext_next, [:pointer], :void
    attach_function :xcb_pcontext_end, [:pointer], XrbGenericIterator
    XRB_GET_DOC_FINISHED = 0
    XRB_GET_DOC_SECOND_CONSUMER = 1
    XRB_EV_MASK_NO_EVENT_MASK = 0
    XRB_EV_MASK_PRINT_MASK = 1 << 0
    XRB_EV_MASK_ATTRIBUTE_MASK = 1 << 1
    XRB_DETAIL_START_JOB_NOTIFY = 1
    XRB_DETAIL_END_JOB_NOTIFY = 2
    XRB_DETAIL_START_DOC_NOTIFY = 3
    XRB_DETAIL_END_DOC_NOTIFY = 4
    XRB_DETAIL_START_PAGE_NOTIFY = 5
    XRB_DETAIL_END_PAGE_NOTIFY = 6
    XRB_ATTR_JOB_ATTR = 1
    XRB_ATTR_DOC_ATTR = 2
    XRB_ATTR_PAGE_ATTR = 3
    XRB_ATTR_PRINTER_ATTR = 4
    XRB_ATTR_SERVER_ATTR = 5
    XRB_ATTR_MEDIUM_ATTR = 6
    XRB_ATTR_SPOOLER_ATTR = 7
    class XrbNotifyEvent < FFI::Struct
      layout \
          :response_type, :uint8,
          :detail, :uint8,
          :context, :xrb_pcontext_t,
          :cancel, :bool
    end

    class XrbAttributNotifyEvent < FFI::Struct
      layout \
          :response_type, :uint8,
          :detail, :uint8,
          :context, :xrb_pcontext_t
    end

    class XrbBadContextError < FFI::Struct
      layout \
          :response_type, :uint8,
          :error_code, :uint8,
          :sequence, :uint16
    end

    class XrbBadSequenceError < FFI::Struct
      layout \
          :response_type, :uint8,
          :error_code, :uint8,
          :sequence, :uint16
    end

    class XrbPrintQueryVersionRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :major_version, :uint16,
          :minor_version, :uint16
    end

    class XrbPrintQueryVersionCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_print_query_version, [:pointer,:uint8,:uint16,:uint16], XrbPrintQueryVersionCookie
    class XrbPrintQueryVersionReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :major_version, :uint16,
          :minor_version, :uint16
    end

    attach_function :xcb_print_query_version_reply, [:pointer, XrbPrintQueryVersionCookie, :pointer], :pointer

        
    class XrbPrintGetPrinterListRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :listCount, :uint32,
          :pad2, [:uint8, 20]
    end

    class XrbPrintGetPrinterListCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_print_get_printer_list, [:pointer,:uint8,:uint32,:uint32], XrbPrintGetPrinterListCookie
    class XrbPrintGetPrinterListReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :listCount, :uint32,
          :pad2, [:uint8, 20]
    end

    attach_function :xcb_print_get_printer_list_reply, [:pointer, XrbPrintGetPrinterListCookie, :pointer], :pointer

        
    class XrbPrintRehashPrinterListRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16
    end

    class XrbPrintRehashPrinterListCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_print_rehash_printer_list_checked, [:pointer,:uint8], XrbPrintRehashPrinterListCookie
    attach_function :xcb_print_rehash_printer_list, [:pointer,:uint8], XrbPrintRehashPrinterListCookie
    class XrbCreateContextRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :context_id, :uint32,
          :printerNameLen, :uint32,
          :localeLen, :uint32
    end

    class XrbCreateContextCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_create_context_checked, [:pointer,:uint8,:uint32,:uint32,:uint32,:uint32,:uint32], XrbCreateContextCookie
    attach_function :xcb_create_context, [:pointer,:uint8,:uint32,:uint32,:uint32,:uint32,:uint32], XrbCreateContextCookie
    class XrbPrintSetContextRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :context, :uint32
    end

    class XrbPrintSetContextCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_print_set_context_checked, [:pointer,:uint8,:uint32], XrbPrintSetContextCookie
    attach_function :xcb_print_set_context, [:pointer,:uint8,:uint32], XrbPrintSetContextCookie
    class XrbPrintGetContextRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :context, :uint32
    end

    class XrbPrintGetContextCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_print_get_context, [:pointer,:uint8,:uint32], XrbPrintGetContextCookie
    class XrbPrintGetContextReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :context, :uint32
    end

    attach_function :xcb_print_get_context_reply, [:pointer, XrbPrintGetContextCookie, :pointer], :pointer

        
    class XrbPrintDestroyContextRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :context, :uint32
    end

    class XrbPrintDestroyContextCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_print_destroy_context_checked, [:pointer,:uint8,:uint32], XrbPrintDestroyContextCookie
    attach_function :xcb_print_destroy_context, [:pointer,:uint8,:uint32], XrbPrintDestroyContextCookie
    class XrbPrintGetScreenOfContextRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :root, :xrb_window_t
    end

    class XrbPrintGetScreenOfContextCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_print_get_screen_of_context, [:pointer,:uint8,:xrb_window_t], XrbPrintGetScreenOfContextCookie
    class XrbPrintGetScreenOfContextReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :root, :xrb_window_t
    end

    attach_function :xcb_print_get_screen_of_context_reply, [:pointer, XrbPrintGetScreenOfContextCookie, :pointer], :pointer

        
    class XrbPrintStartJobRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :output_mode, :uint8
    end

    class XrbPrintStartJobCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_print_start_job_checked, [:pointer,:uint8,:uint8], XrbPrintStartJobCookie
    attach_function :xcb_print_start_job, [:pointer,:uint8,:uint8], XrbPrintStartJobCookie
    class XrbPrintEndJobRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :cancel, :bool
    end

    class XrbPrintEndJobCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_print_end_job_checked, [:pointer,:uint8,:bool], XrbPrintEndJobCookie
    attach_function :xcb_print_end_job, [:pointer,:uint8,:bool], XrbPrintEndJobCookie
    class XrbPrintStartDocRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :driver_mode, :uint8
    end

    class XrbPrintStartDocCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_print_start_doc_checked, [:pointer,:uint8,:uint8], XrbPrintStartDocCookie
    attach_function :xcb_print_start_doc, [:pointer,:uint8,:uint8], XrbPrintStartDocCookie
    class XrbPrintEndDocRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :cancel, :bool
    end

    class XrbPrintEndDocCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_print_end_doc_checked, [:pointer,:uint8,:bool], XrbPrintEndDocCookie
    attach_function :xcb_print_end_doc, [:pointer,:uint8,:bool], XrbPrintEndDocCookie
    class XrbPrintPutDocumentDataRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :drawable, :xrb_drawable_t,
          :len_data, :uint32,
          :len_fmt, :uint16,
          :len_options, :uint16
    end

    class XrbPrintPutDocumentDataCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_print_put_document_data_checked, [:pointer,:uint8,:xrb_drawable_t,:uint32,:uint16,:uint16,:uint32,:uint32,:uint32], XrbPrintPutDocumentDataCookie
    attach_function :xcb_print_put_document_data, [:pointer,:uint8,:xrb_drawable_t,:uint32,:uint16,:uint16,:uint32,:uint32,:uint32], XrbPrintPutDocumentDataCookie
    class XrbPrintGetDocumentDataRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :status_code, :uint32,
          :finished_flag, :uint32,
          :dataLen, :uint32,
          :pad2, [:uint8, 12]
    end

    class XrbPrintGetDocumentDataCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_print_get_document_data, [:pointer,:uint8,:uint32,:uint32,:uint32,:uint32], XrbPrintGetDocumentDataCookie
    class XrbPrintGetDocumentDataReply < FFI::Struct
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

    attach_function :xcb_print_get_document_data_reply, [:pointer, XrbPrintGetDocumentDataCookie, :pointer], :pointer

        
    class XrbPrintStartPageRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :window, :xrb_window_t
    end

    class XrbPrintStartPageCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_print_start_page_checked, [:pointer,:uint8,:xrb_window_t], XrbPrintStartPageCookie
    attach_function :xcb_print_start_page, [:pointer,:uint8,:xrb_window_t], XrbPrintStartPageCookie
    class XrbPrintEndPageRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :cancel, :bool,
          :pad1, [:uint8, 3]
    end

    class XrbPrintEndPageCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_print_end_page_checked, [:pointer,:uint8,:bool], XrbPrintEndPageCookie
    attach_function :xcb_print_end_page, [:pointer,:uint8,:bool], XrbPrintEndPageCookie
    class XrbPrintSelectInputRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :context, :xrb_pcontext_t,
          :event_mask, :uint32
    end

    class XrbPrintSelectInputCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_print_select_input_checked, [:pointer,:uint8,:xrb_pcontext_t,:uint32,:pointer], XrbPrintSelectInputCookie
    attach_function :xcb_print_select_input, [:pointer,:uint8,:xrb_pcontext_t,:uint32,:pointer], XrbPrintSelectInputCookie
    class XrbPrintInputSelectedRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :event_mask, :uint32,
          :all_events_mask, :uint32
    end

    class XrbPrintInputSelectedCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_print_input_selected, [:pointer,:uint8,:uint32,:pointer,:uint32,:pointer], XrbPrintInputSelectedCookie
    class XrbPrintInputSelectedReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :event_mask, :uint32,
          :all_events_mask, :uint32
    end

    attach_function :xcb_print_input_selected_reply, [:pointer, XrbPrintInputSelectedCookie, :pointer], :pointer

        
    class XrbPrintGetAttributesRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :stringLen, :uint32,
          :pad2, [:uint8, 20],
          :attributes, :xrb_string8_t
    end

    class XrbPrintGetAttributesCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_print_get_attributes, [:pointer,:uint8,:uint32,:xrb_string8_t], XrbPrintGetAttributesCookie
    class XrbPrintGetAttributesReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :stringLen, :uint32,
          :pad2, [:uint8, 20],
          :attributes, :xrb_string8_t
    end

    attach_function :xcb_print_get_attributes_reply, [:pointer, XrbPrintGetAttributesCookie, :pointer], :pointer

        
    class XrbPrintGetOneAttributesRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :valueLen, :uint32,
          :pad2, [:uint8, 20]
    end

    class XrbPrintGetOneAttributesCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_print_get_one_attributes, [:pointer,:uint8,:uint32,:uint32], XrbPrintGetOneAttributesCookie
    class XrbPrintGetOneAttributesReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :valueLen, :uint32,
          :pad2, [:uint8, 20]
    end

    attach_function :xcb_print_get_one_attributes_reply, [:pointer, XrbPrintGetOneAttributesCookie, :pointer], :pointer

        
    class XrbPrintSetAttributesRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :context, :xrb_pcontext_t,
          :stringLen, :uint32,
          :pool, :uint8,
          :rule, :uint8,
          :pad1, [:uint8, 2]
    end

    class XrbPrintSetAttributesCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_print_set_attributes_checked, [:pointer,:uint8,:xrb_pcontext_t,:uint32,:uint8,:uint8,:uint32], XrbPrintSetAttributesCookie
    attach_function :xcb_print_set_attributes, [:pointer,:uint8,:xrb_pcontext_t,:uint32,:uint8,:uint8,:uint32], XrbPrintSetAttributesCookie
    class XrbPrintGetPageDimensionsRequest < FFI::Struct
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

    class XrbPrintGetPageDimensionsCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_print_get_page_dimensions, [:pointer,:uint8,:uint16,:uint16,:uint16,:uint16,:uint16,:uint16], XrbPrintGetPageDimensionsCookie
    class XrbPrintGetPageDimensionsReply < FFI::Struct
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

    attach_function :xcb_print_get_page_dimensions_reply, [:pointer, XrbPrintGetPageDimensionsCookie, :pointer], :pointer

        
    class XrbPrintQueryScreensRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :listCount, :uint32,
          :pad2, [:uint8, 20]
    end

    class XrbPrintQueryScreensCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_print_query_screens, [:pointer,:uint8,:uint32,:uint32], XrbPrintQueryScreensCookie
    class XrbPrintQueryScreensReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :listCount, :uint32,
          :pad2, [:uint8, 20]
    end

    attach_function :xcb_print_query_screens_reply, [:pointer, XrbPrintQueryScreensCookie, :pointer], :pointer

        
    class XrbPrintSetImageResolutionRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :previous_resolutions, :uint16
    end

    class XrbPrintSetImageResolutionCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_print_set_image_resolution, [:pointer,:uint8,:uint16], XrbPrintSetImageResolutionCookie
    class XrbPrintSetImageResolutionReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :status, :bool,
          :sequence, :uint16,
          :length, :uint32,
          :previous_resolutions, :uint16
    end

    attach_function :xcb_print_set_image_resolution_reply, [:pointer, XrbPrintSetImageResolutionCookie, :pointer], :pointer

        
    class XrbPrintGetImageResolutionRequest < FFI::Struct
      layout \
          :major_opcode, :uint8,
          :minor_opcode, :uint8,
          :length, :uint16,
          :image_resolution, :uint16
    end

    class XrbPrintGetImageResolutionCookie < FFI::Struct
      layout \
          :sequence, :int
    end
    attach_function :xcb_print_get_image_resolution, [:pointer,:uint8,:uint16], XrbPrintGetImageResolutionCookie
    class XrbPrintGetImageResolutionReply < FFI::Struct
      layout \
          :response_type, :uint8,
          :pad1, [:uint8, 1],
          :sequence, :uint16,
          :length, :uint32,
          :image_resolution, :uint16
    end

    attach_function :xcb_print_get_image_resolution_reply, [:pointer, XrbPrintGetImageResolutionCookie, :pointer], :pointer

        
  end
end
