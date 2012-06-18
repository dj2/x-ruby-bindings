module Xrb
  class Font
    attr_reader :id

    def initialize(conn, name)
      @conn = conn
      @name = name

      @id = conn.generate_id

      o = {fid: @id, name_len: @name.length, name: @name}
      @conn.send(Xrb::Request::OpenFont.new(o))
    end

    def close
      @conn.send(Xrb::Request::CloseFont.new(font: @id))
    end

    def query(fontable, &blk)
      cookie = @conn.send(Xrb::Request::QueryFont.new(fontable: fontable))
      cookie.callback = blk if block_given?
      cookie
    end

    def query_text_extends(opts)
      cookie = @conn.send(Xrb::Request::QueryTextExtends.new(opts))
      cookie.callback = blk if block_given?
      cookie
    end

    def list(opts, &blk)
      cookie = @conn.send(Xrb::Request::ListFonts.new(opts))
      cookie.callback = blk if block_given?
      cookie
    end

    def list_with_info(opts, &blk)
      cookie = @conn.send(Xrb::Request::ListFontWithInfo.new(opts))
      cookie.callback = blk if block_given?
      cookie
    end

    def set_font_paths(paths)
      @conn.send(Xrb::Request::SetFontPath.new(path: paths))
    end

    def font_path(&blk)
      cookie = @conn.send(Xrb::Request::GetFontPath.new)
      cookie.callback = blk if block_given?
      cookie
    end
  end
end
