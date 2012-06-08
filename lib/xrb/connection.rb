require 'xrb/constants'

module Xrb
  class Connection
    def initialize(display_name = ENV['DISPLAY'])
      display_name =~ /^([\w.-]*):(\d+)(?:.(\d+))?$/
      host, display, screen = $1, $2, $3
    end

    def connect
      @socket = if host.empty?
        UNIXSocket.new("/tmp/.X11-unix/X#{display}")
      else
        TCPSocket.new(host, Xrb::TCP_PORT + display)
      end


      @xid = {
        last: 0,
        base: xid_base,
        max: xid_mask,
        inc: xid_mask & ~xid_mask
      }
    end

    def setup
      Xrb::Setup.new
    end

    def disconnect
      @socket.close
    end

    def send
    end

    def flush
    end

    def generate_id
      # TODO(dj2): Use XC Misc to retrieve released IDs and reuse them.

      @xid[:last] += @xid[:inc]

      if @xid[:last] >= (@xid[:max] - @xid[:inc] + 1)
        puts "CRAP ... OUT OF XIDs"
      end

      @xid[:last] | @xid[:base]
    end

    def next_event(&blk)
    end
  end
end