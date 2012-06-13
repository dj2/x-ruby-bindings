#
# This file was auto-generated. Do not edit.
#

module Xrb
  module Sync
    # ALARMSTATE
    ALARMSTATE_ACTIVE = (1),
    ALARMSTATE_INACTIVE = (2),
    ALARMSTATE_DESTROYED = (3)
    
    # TESTTYPE
    TESTTYPE_POSITIVE_TRANSITION = (1),
    TESTTYPE_NEGATIVE_TRANSITION = (2),
    TESTTYPE_POSITIVE_COMPARISON = (3),
    TESTTYPE_NEGATIVE_COMPARISON = (4)
    
    # VALUETYPE
    VALUETYPE_ABSOLUTE = (1),
    VALUETYPE_RELATIVE = (2)
    
    # CA
    CA_COUNTER = (1 << 0),
    CA_VALUE_TYPE = (1 << 1),
    CA_VALUE = (1 << 2),
    CA_TEST_TYPE = (1 << 3),
    CA_DELTA = (1 << 4),
    CA_EVENTS = (1 << 5)
    
  end
end
