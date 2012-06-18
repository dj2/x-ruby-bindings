module Xrb
  class Font
    attr_reader :id

    def initialize(conn, name)
      @conn = conn
      @name = name

      @id = conn.generate_id

      o = {fid: @id, name_len: @name.length, name: @name}
      @conn.send(Xrb::Request::OpenFont.new(o))
    end
  end
end
