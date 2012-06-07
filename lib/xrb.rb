require 'xrb/constants'
require 'xrb/generic_types'
require 'xrb/generated/xproto'

module Xrb
  class Connection
    def initialize(display)
    end

    def connect
    end

    def disconnect
    end

    def flush
    end

    def generate_id
    end

    def next_event(&blk)
    end
  end
end
