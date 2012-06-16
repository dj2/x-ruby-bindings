module Xrb
  class Window
    attr_reader :id

    DEFAULT_OPTS = {x: 0, y: 0, border_width: 2, depth: Xrb::COPY_FROM_PARENT,
        class: Xrb::WINDOW_CLASS_INPUT_OUTPUT}

    def initialize(conn, opts = {})
      @conn = conn

      o = DEFAULT_OPTS.merge(opts)

      screen = o[:screen]
      if o[:parent].nil? || o[:visual].nil?
        screen = o[:screen] || @conn.setup.roots.first
        o[:parent] = screen.root
        o[:visual] = screen.root_visual
      end

      @id = @conn.generate_id
      o[:wid] = @id

      @handlers = {
        error: [],
        event: []
      }

      @conn.send(Xrb::Request::CreateWindow.new(o))
      @conn.register_window(self)
    end

    def on_event(&blk)
      return unless block_given?
      @handlers[:event] << blk
    end

    def on_error(&blk)
      return unless block_given?
      @handlers[:error] << blk
    end

    def handle_message(event, type)
      @handlers[type].each { |h| h.call(event) }
    end


    def show(flush = true)
      cookie = @conn.send(Xrb::Request::MapWindow.new(window: @id))
      @conn.flush if flush
      cookie
    end
  end
end
