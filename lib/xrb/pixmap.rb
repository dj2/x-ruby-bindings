module Xrb
  class Pixmap
    def initialize(conn, opts = {})
      @conn = conn
      @id = @conn.generate_id

      o = opts.merge!({pid: @id})
      win = o.delete(:window)
      o[:drawable] = win.id
      o[:depth] = win.depth if o[:depth].nil?

      @conn.send(Xrb::Request::CreatePixmap.new(o))
    end

    def poly_fill_rectangle(color, rects)
      o = {gc: color.id, drawable: @id, rectangles: rects}
      @conn.send(Xrb::Request::PolyFillRectangle.new(o))
    end

    def poly_fill_arc(color, arcs)
      o = {gc: color.id, drawable: @id, arcs: arcs}
      @conn.send(Xrb::Request::PolyFillArc.new(o))
    end

    def copy_area(opts)
      o = {
        src_drawable: @id,
        dst_drawable: opts[:dest].id,
        gc: opts[:gc].id,
        src_x: opts[:from].first,
        src_y: opts[:from].last,
        dst_x: opts[:to].first,
        dst_y: opts[:to].last,
        width: opts[:size].first,
        height: opts[:size].last
      }

      @conn.send(Xrb::Request::CopyArea.new(o))
    end
  end
end
