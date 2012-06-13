module Xrb
  module Request
    class CreateWindow
      def value=(value)
        @value = value
      end
    end
  end

  class Window
    DEFAULT_OPTS = {x: 0, y: 0, border_width: 2, depth: Xrb::COPY_FROM_PARENT,
        class: Xrb::WINDOW_CLASS_INPUT_OUTPUT}

    def initialize(opts = {})
      @conn = Xrb.connection
      o = DEFAULT_OPTS.merge(opts)

      screen = o[:screen]
      if o[:parent].nil? || o[:visual].nil?
        screen = o[:screen] || @conn.setup.roots.first
        o[:parent] = screen.root
        o[:visual] = screen.root_visual
      end

      @id = @conn.generate_id
      o[:wid] = @id

      request = Xrb::Request::CreateWindow.new(o)

      @conn.send(request.pack)
    end

    def show(flush = true)
      cookie = @conn.send(Xrb::Request::MapWindow.new(window: @id).pack)
      @conn.flush if flush
      cookie
    end
  end
end