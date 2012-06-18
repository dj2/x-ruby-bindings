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

    def allocate_named_color(name, &blk)
      cookie = @conn.send(Xrb::Request::AllocNamedColor.new(cmap: @id,
          name: name))
      cookie.callback = blk if block_given?
      cookie
    end

    def store_colors(items)
      @conn.send(Xrb::Request::StoreColors.new(cmap: @id, items: items))
    end

    def store_named_color(opts)
      o = opts.merge(cmap: @id)
      @conn.send(Xrb::Request::StoreNamedColor.new(o))
    end

    def query(pixels, &blk)
      cookie = @conn.send(Xrb::Request::QueryColors.new(cmap: @id,
          pixels: pixels))
      cookie.callback = blk if block_given?
      cookie
    end

    def lookup(name, &blk)
      cookie = @conn.send(Xrb::Request::LookupColor.new(cmap: @id, name: name))
      cookie.callback = blk if block_given?
      cookie
    end

    def free_colors(colors)
      @conn.send(Xrb::Request::FreeColors.new(cmap: @id, pixels: colors))
    end

    def copy_and_free(to)
      @conn.send(Xrb::Request::CopyColormapAndFree.new(src_cmap: @id, mid: to))
    end

    def install
      @conn.send(Xrb::Request::InstallColormap.new(cmap: @id))
    end

    def uninstall
      @conn.send(xrb::Request::UninstallColormap.new(cmap: @id))
    end

    def free
      @conn.send(Xrb::Request::FreeColormap.new(cmap: @id))
    end
  end
end
