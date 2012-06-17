module Xrb
  class Image
    def initialize(conn, opts = {})
      @conn = conn
      @conn.send(Xrb::Request::GetImage.new(opts))
    end
  end
end
