require 'xrb/constants'
require 'xrb/generic_types'
require 'xrb/generated/xproto'

module Xrb
  def self.connection(display = nil)
    @@connection ||= Xrb::Connection.new(display).connect
  end

  class Connection
    def initialize(display = nil)
    end

    def connect
    end

    def setup
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

  class Setup
    def screens
    end
  end

  class Window
    DEFAULT_OPTS = {x: 0, y: 0, border: 2, depth: Xrb::COPY_FROM_PARENT,
        class: Xrb::WINDOW_CLASS_INPUT_OUTPUT}

    def initialize(opts = {})
      conn = Xrb.connection
      o = DEFAULT_OPTS.merge(opts)

      screen = o[:screen]
      if o[:parent].nil? || o[:visual].nil?
        screen = o[:screen] || conn.setup.screens.first
        o[:parent] = screen.root
        o[:visual] = screen.visual
      end

    end

    def show(flush = true)

      Xrb.connection.flush if flush
    end
  end
end
