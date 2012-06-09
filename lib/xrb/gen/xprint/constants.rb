#
# This file was auto-generated. Do not edit.
#

module Xrb
  module XPrint
    # GetDoc
    GET_DOC_FINISHED = (0),
    GET_DOC_SECOND_CONSUMER = (1)
    
    # EvMask
    EV_MASK_NO_EVENT_MASK = (0),
    EV_MASK_PRINT_MASK = (1 << 0),
    EV_MASK_ATTRIBUTE_MASK = (1 << 1)
    
    # Detail
    DETAIL_START_JOB_NOTIFY = (1),
    DETAIL_END_JOB_NOTIFY = (2),
    DETAIL_START_DOC_NOTIFY = (3),
    DETAIL_END_DOC_NOTIFY = (4),
    DETAIL_START_PAGE_NOTIFY = (5),
    DETAIL_END_PAGE_NOTIFY = (6)
    
    # Attr
    ATTR_JOB_ATTR = (1),
    ATTR_DOC_ATTR = (2),
    ATTR_PAGE_ATTR = (3),
    ATTR_PRINTER_ATTR = (4),
    ATTR_SERVER_ATTR = (5),
    ATTR_MEDIUM_ATTR = (6),
    ATTR_SPOOLER_ATTR = (7)
    
  end
end
