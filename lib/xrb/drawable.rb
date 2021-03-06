module Xrb
  module Drawable
    def geometry(&blk)
      cookie = @conn.send(Xrb::Request::GetGeometry.new(drawable: @id))
      cookie.callback = blk if block_given?
      cookie
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

    def draw_image_text8(color, txt, opts)
      o = opts.merge(gc: color.id, drawable: @id, string: txt)
      @conn.send(Xrb::Request::ImageText_8.new(o))
    end

    def copy_area(opts)
      o = opts.merge(src_drawable: @id)
      @conn.send(Xrb::Request::CopyArea.new(o))
    end

    def copy_plane(opts)
      o = opts.merge(src_drawable: @id)
      @conn.send(Xrb::Request::CopyPlane.new(o))
    end

    def query_best_size(opts, &blk)
      o = opts.merge(drawable: @id)
      cookie = @conn.send(Xrb::Request::QueryBestSize.new(o))
      cookie.callback = blk if block_given?
      cookie
    end
  end
end
