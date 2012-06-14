require 'socket'
require 'xrb/constants'
require 'xrb/auth'

module Xrb
  class Connection
    attr_reader :socket

    ERROR = 0
    REPLY = 1

    def initialize(display_name)
      display_name ||= ENV['DISPLAY']

      display_name =~ /^([\w.-]*):(\d+)(?:.(\d+))?$/
      @host, @display, @screen = $1, $2.to_i, $3

      @windows = []
      @event_handlers = []
      @error_handlers = []

      @byte_queue = []
    end

    def connect
      @socket = if @host.nil? || @host.empty?
        UNIXSocket.new("/tmp/.X11-unix/X#{@display}")
      else
        TCPSocket.new(@host, Xrb::TCP_PORT + @display)
      end

      auth = Xrb::Auth.find(@host, @display)

      if auth && auth.name != 'MIT-MAGIC-COOKIE-1'
        raise Exception.new("Only handle MIT-MAGIC-COOKIE-1 for auth.")
      end

      auth = Xrb::Auth::Info.new if auth.nil?
      auth.connection = self

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

    def register_window(window)
      @windows << window
    end

    def on_event(&blk)
      @event_handlers << blk if block_given?
    end

    def on_error(&blk)
      @error_handlers << blk if block_given?
    end

    def disconnect
      @socket.close
    end

    def send(data)
      @socket.write(data)
    end

    def push(val)
      @byte_queue.unshift(val)
    end

    def data_available
      v1 = read(1)
      v2 = read(1)
      kind = v1.unpack('w').first
      type = v2.unpack('w').first
      push(v2)
      push(v1)
    
      case kind
      when Xrb::Connection::ERROR then
        klass = Xrb::Error.find(type)
        error = klass.unpack(self)
        read(32 - klass.size)

        handle_message(error, :error, @error_handlers)

      when Xrb::Connection::REPLY then
        puts "Reply for ..."
        nil
      else 
        klass = Xrb::Event.find(kind)
        if klass.nil?
          $stderr.puts("Failed to find #{kind}")
          return
        end
        event = klass.unpack(self)
        read(32 - klass.size)

        handle_message(event, :event, @event_handlers)
      end
    end

    def read(len)
      if (len < @byte_queue.length)
        ret = @byte_queue[0, len]
        @byte_queue = @byte_queue[len..-1]
        ret.join
      else
        ret = @byte_queue.join
        @byte_queue.clear

        ret << @socket.read(len - ret.bytesize)
      end
    end

    def handle_message(message, type, conn_handlers)
      window_id = if message.respond_to?(:event)
        message.event
      elsif message.respond_to?(:window)
        message.window
      else
        nil
      end

      
      if window_id
        window = @windows.select { |w| w.id == window_id }.first
        if window
          window.handle_message(message, type)
          return
        end
      end

      conn_handlers.each { |h| h.call(message) }
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
