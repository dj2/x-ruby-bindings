module Xrb
  class Gc
    attr_reader :id

    def initialize(conn, opts = {})
      @conn = conn
      @id = @conn.generate_id

      o = opts.merge(cid: @id)
      if o[:window].nil?
        screen = o[:screen] || @conn.setup.roots.first
        o[:drawable] = screen.root
      else
        o[:drawable] = o.delete(:window).id
      end

      @conn.send(Xrb::Request::CreateGc.new(o))
    end

    def free
      @conn.send(Xrb::Request::FreeGC.new(gc: @id))
    end

    def change(opts)
      o = opts.merge(gc: @id)
      @conn.send(Xrb::Request::ChangeGC.new(o))
    end

    def copy(opts)
      o = opts.merge(src_gc: @id)
      @conn.send(Xrb::Request::CopyGC.new(o))
    end

    def set_dashes(opts)
      o = opts.merge(gc: @id)
      @conn.send(Xrb::Request::SetDashes.new(o))
    end

    def set_clip_rectangles(opts)
      o = opts.merge(gc: @id)
      @conn.send(Xrb::Request::SetClipRectangles.new(o))
    end
  end
end
