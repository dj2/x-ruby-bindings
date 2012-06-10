require 'socket'
require 'xrb/constants'
require 'xrb/auth'

module Xrb
  class Connection
    def initialize(display_name)
      display_name ||= ENV['DISPLAY']

      display_name =~ /^([\w.-]*):(\d+)(?:.(\d+))?$/
      @host, @display, @screen = $1, $2.to_i, $3

      @byte_queue = []
    end

    def connect
      @socket = if @host.nil? || @host.empty?
        UNIXSocket.new("/tmp/.X11-unix/X#{@display}")
      else
        TCPSocket.new(@host, Xrb::TCP_PORT + @display)
      end

      auth = Xrb::Auth.find(@host, @display)
      auth.connection = self

      if auth && auth.name != 'MIT-MAGIC-COOKIE-1'
        raise RuntimeException.new("Only handle MIT-MAGIC-COOKIE-1 for auth.")
      end

      @server_data = auth.handshake

      @xid = {
        last: 0,
        base: @server_data.resource_id_base,
        max: @server_data.resource_id_mask,
        inc: @server_data.resource_id_mask & ~@server_data.resource_id_mask
      }
    end

    def setup
      @server_data
    end

    def disconnect
      @socket.close
    end

    def send(data)
      @socket.write(data)
    end

    def push(val)
      @byte_queue << val
    end

    def read(len)
      if (len < @byte_queue.length)
        ret = @byte_queue[0, len]
        @byte_queue = @byte_queue[len]
        ret.join
      else
        ret = @byte_queue.join
        @byte_queue.clear

        ret << @socket.read(len - ret.bytesize)
      end
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
