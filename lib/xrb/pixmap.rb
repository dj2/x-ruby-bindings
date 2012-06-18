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

    def draw_filled_rectangles(color, rects)
      o = {gc: color.id, drawable: @id, rectangles: rects}
      @conn.send(Xrb::Request::PolyFillRectangle.new(o))
    end

    def draw_filled_arcs(color, arcs)
      o = {gc: color.id, drawable: @id, arcs: arcs}
      @conn.send(Xrb::Request::PolyFillArc.new(o))
    end

    def draw_filled_shape(color, shape, coordinate_mode, points)
      o = {gc: color.id, drawable: @id, points: points,
           shape: shape, coordinate_mode: coordinate_mode}
      @conn.send(Xrb::Request::FillPoly.new(o))
    end

    def draw_points(color, coordinate_mode, points)
      o = {gc: color.id, drawable: @id, points: points,
           coordinate_mode: coordinate_mode}
      @conn.send(Xrb::Request::PolyPoint.new(o))
    end

    def draw_lines(color, coordinate_mode, points)
      o = {gc: color.id, drawable: @id, points: points,
           coordinate_mode: coordinate_mode}
      @conn.send(Xrb::Request::PolyLine.new(o))
    end

    def draw_line_segments(color, segments)
      o = {gc: color.id, drawable: @id, segments: segments}
      @conn.send(Xrb::Request::PolySegment.new(o))
    end

    def draw_rectangles(color, rectangles)
      o = {gc: color.id, drawable: @id, rectangles: rectangles}
      @conn.send(Xrb::Request::PolyRectangle.new(o))
    end

    def draw_arcs(color, arcs)
      o = {gc: color.id, drawable: @id, arcs: arcs}
      @conn.send(Xrb::Request::PolyArc.new(o))
    end

    def draw_text8(color, x, y, text)
      chars = []
      text.split('').each do |b|
        char2b = Xrb::Message::Char2b.new
        char2b.byte1 = 0
        char2b.byte2 = b.ord
        chars << char2b
      end

      o = {gc: color.id, drawable: @id, x: x, y: y, items: chars}
      @conn.send(Xrb::Request::PolyText_8.new(o))
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
