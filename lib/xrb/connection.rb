require 'socket'
require 'xrb/constants'
require 'xrb/auth'
require 'xrb/cookie'

module Xrb
  class Connection
    attr_reader :socket

    ERROR = 0
    REPLY = 1

    def initialize(display_name)
      display_name ||= ENV['DISPLAY']

      display_name =~ /^([\w.-]*):(\d+)(?:.(\d+))?$/
      @host, @display, @screen = $1, $2.to_i, $3

      @id_mutex = Mutex.new
      @sequence_mutex = Mutex.new
      @sequence_num = 1

      @cookie_jar = {}

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

      @sequence_num = 1

      @xid = {
        last: 0,
        base: @server_data.resource_id_base,
        max: @server_data.resource_id_mask,
        inc: @server_data.resource_id_mask & -@server_data.resource_id_mask
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

    def send(request)
      seq = next_sequence_num
      @socket.write(request.pack)

p [seq, request.ruby_class]

      if request.has_reply?
        cookie = Cookie.new(seq, request)
        @cookie_jar[seq] = cookie
        cookie
      end
    end

    def next_sequence_num
      @sequence_mutex.synchronize do
        val = @sequence_num
        @sequence_num += 1
        val
      end
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
        v1 = read(1)
        v2 = read(1)
        v3 = read(1)
        v4 = read(1)
        seq = "#{v3}#{v4}".unpack('S').first
        push(v4)
        push(v3)
        push(v2)
        push(v1)

        cookie = @cookie_jar.delete(seq)
        reply = cookie.reply(self)

        if reply.ruby_class.size < 32
          read(32 - reply.ruby_class.size)
        end

        cookie.callback

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

      @id_mutex.synchronize do
        @xid[:last] += @xid[:inc]

        if @xid[:last] >= (@xid[:max] - @xid[:inc] + 1)
          puts "CRAP ... OUT OF XIDs"
        end

        @xid[:last] | @xid[:base]
      end
    end

    def next_event(&blk)
    end

    def set_selection_owner(opts)
      send(Xrb::Request::SetSelectionOwner.new(opts))
    end

    def selection_owner(&blk)
      cookie = send(Xrb::Request::GetSelectionOwner.new(opts))
      cookie.callback = blk if block_given?
      cookie
    end

    def convert_selection(opts)
      send(Xrb::Request::ConvertSelection.new(opts))
    end

    def send_event(opts)
      send(Xrb::Request::SendEvent.new(opts))
    end

    def grab_server
      send(Xrb::Request::GrabServer.new)
    end

    def ungrab_server
      send(Xrb::Request::UngrabServer.new)
    end

    def allow_events(opts)
      send(Xrb::Request::AllowEvents.new(opts))
    end

    def translate_coordinates(opts, &blk)
      cookie = send(Xrb::Request::TranslateCoordinates.new(opts))
      cookie.callback = blk if block_given?
      cookie
    end

    def warp_pointer(opts)
      send(Xrb::Request::WarpPointer.new(opts))
    end

    def set_input_focus(opts)
      send(Xrb::Request::SetInputFoucs.new(opts))
    end

    def input_focus(opts, &blk)
      cookie = send(Xrb::Request::GetInputFocus.new(opts))
      cookie.callback = blk if block_given?
      cookie
    end

    def query_keymap(&blk)
      cookie = send(Xrb::Request::QueryKeymap.new)
      cookie.callback = blk if block_given?
      cookie
    end

    def query_extension(name, &blk)
      cookie = send(Xrb::Request::QueryExtension.new(name: name))
      cookie.callback = blk if block_given?
      cookie
    end

    def list_extensions(&blk)
      cookie = send(Xrb::Request::ListExtensions.new)
      cookie.callback = blk if block_given?
      cookie
    end

    def kill_client(client)
      send(Xrb::Request::KillClient(resource: client))
    end

    def set_close_down_mode(mode)
      send(Xrb::Request::SetCloseDownMode.new(mode: mode))
    end

    def set_access_control(mode)
      send(Xrb::Request::SetAccessControl.new(mode: mode))
    end

    def list_hosts(&blk)
      cookie = send(Xrb::Request::ListHosts.new)
      cookie.callback = blk if block_given?
      cookie
    end

    def change_hosts(opts)
      send(Xrb::Request::ChangeHosts.new(opts))
    end

    def force_screensave(mode)
      send(Xrb::Request::ForceScreensaver.new(mode: mode))
    end

    def get_screensaver(&blk)
      cookie = send(Xrb::Request::GetScreenSaver)
      cookie.callback = blk if block_given?
      cookie
    end

    def set_screensaver(opts)
      send(Xrb::Request::SetScreenSaver.new(opts))
    end

    def get_pointer_control(&blk)
      cookie = send(Xrb::Request::GetPointerControl.new)
      cookie.callback = blk if block_given?
      cookie
    end

    def change_pointer_control(opts)
      send(Xrb::Request::ChangePointerControl.new(opts))
    end

    def get_pointer_mapping(&blk)
      cookie = send(Xrb::Request::GetPointerMapping.new)
      cookie.callback = blk if block_given?
      cookie
    end

    def set_pointer_mapping(map, &blk)
      cookie = send(Xrb::Request::SetPointerMapping.new(map: map))
      cookie.callback = blk if block_given?
      cookie
    end

    def bell(percent)
      send(Xrb::Request::Bell.new(percent: percent))
    end

    def get_keyboard_control(&blk)
      cookie = send(Xrb::Request::GetKeyboardControl.new)
      cookie.callback = blk if block_given?
      cookie
    end

    def change_keyboard_control(values)
      send(Xrb::Requets::ChangeKeyboardControl.new(value: values))
    end

    def get_keyboard_mapping(opts, &blk)
      cookie = send(Xrb::Request::GetKeyboardMapping.new(opts))
      cookie.callback = blk if block_given?
      cookie
    end

    def change_keyboard_mapping(opts)
      send(Xrb::Request::ChangeKeyboardMapping.new(opts))
    end

    def get_modifier_map(&blk)
      cookie = send(Xrb::Request::GetModifierMap.new)
      cookie.callback = blk if block_given?
      cookie
    end

    def set_modifier_map(opts, &blk)
      cookie = send(Xrb::Request::SetModifierMap.new(opts))
      cookie.callback = blk if block_given?
      cookie
    end
  end
end
