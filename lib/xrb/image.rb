module Xrb
  class Image
    def initialize(conn, opts = {})
      @conn = conn

      opts[:drawable] = opts[:drawable].id

      @conn.send(Xrb::Request::GetImage.new(opts))
    end
  end
end
