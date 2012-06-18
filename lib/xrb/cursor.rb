module Xrb
  class Cursor
    def initialize(conn, opts)
      @conn = conn
      @id = @conn.generate_id

      o = opts.merge(cid: @id)

      if opts.has_key?(:source_font)
        @conn.send(Xrb::Request::CreateGlyphCursor.new(o))
      else
        @conn.send(Xrb::Request::CreateCursor.new(o))
      end
    end

    def free
      @conn.send(Xrb::Request::FreeCursor.new(cid: @id))
    end

    def recolor(opts)
      o = opts.merge(cursor: @id)
      @conn.send(Xrb::Request::RecolorCursor.new(o))
    end
  end
end
