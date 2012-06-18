module Xrb
  class Pixmap
    include Xrb::Drawable

    def initialize(conn, opts = {})
      @conn = conn
      @id = @conn.generate_id

      o = opts.merge!({pid: @id})
      win = o.delete(:window)
      o[:drawable] = win.id
      o[:depth] = win.depth if o[:depth].nil?

      @conn.send(Xrb::Request::CreatePixmap.new(o))
    end
  end
end
