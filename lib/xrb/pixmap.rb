module Xrb
  class Pixmap
    def initialize(conn, opts = {})
      @conn = conn
      @id = @conn.generate_id

      o = opts.merge!({pid: @id})
      o[:drawable] = o.delete(:window).id

      if o[:depth].nil?
        o[:depth] = @conn.setup.pixmap_formats.last.depth
      end

      @conn.send(Xrb::Request::CreatePixmap.new(o).pack)
    end

    def poly_fill_rectangle(color, rect)
      o = {gc: color.id, drawable: @id, rectangles: rect}
      @conn.send(Xrb::Request::PolyFillRectangle.new(o).pack)
    end
  end
end