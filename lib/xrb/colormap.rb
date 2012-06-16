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

      @conn.send(Xrb::Request::CreateColormap.new(o).pack)
    end

    def allocate_color(r, g, b)
      o = {cmap: @id, red: r, green: g, blue: b}

      @conn.send(Xrb::Request::AllocColor.new(o).pack)
    end
  end
end
