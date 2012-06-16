module Xrb
  class Colormap
    DEFAULT_OPTS = {alloc: COLORMAP_ALLOC_NONE}

    def initialize(conn, opts = {})
      @conn = conn
      @id = @conn.generate_id

      o = DEFAULT_OPTS.merge(opts)
      if o[:visual].nil?
        screen = o[:screen] || @conn.setup.roots.first
        o[:visual] = screen.root_visual
      end
      o[:mid] = @id
      o[:window] = o[:window].id

      @conn.send(Xrb::Request::CreateColormap.new(o))
    end

    def allocate_color(r, g, b, &blk)
      o = {cmap: @id, red: r, green: g, blue: b}

      cookie = @conn.send(Xrb::Request::AllocColor.new(o))
      cookie.callback = blk if block_given?
      cookie
    end
  end
end
