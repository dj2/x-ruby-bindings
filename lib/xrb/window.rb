module Xrb
  class Window
    DEFAULT_OPTS = {x: 0, y: 0, border: 2, depth: Xrb::COPY_FROM_PARENT,
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
      o[:id] = @id

      request = Xrb::Request::CreateWindow.new
      
      @conn.send(request.pack)
    end

    def show(flush = true)
      cookie = @conn.send(Xrb::Request::MapWindow.new(id: @id))
      @conn.flush if flush
      cookie
    end
  end
end