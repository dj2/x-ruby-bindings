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
  end
end
