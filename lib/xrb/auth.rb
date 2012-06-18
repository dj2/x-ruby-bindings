require 'socket'
require 'xrb/message'
require 'xrb/gen/xproto'

module Xrb
  class Message
    class SetupRequest
      def initialize
        @byte_order = 'l'.ord
        @protocol_major_version = Xrb::PROTOCOL_MAJOR
        @protocol_minor_version = Xrb::PROTOCOL_MINOR
      end

      def auth_name=(str)
        @authorization_protocol_name_len = str.bytesize
        @authorization_protocol_name = str
      end

      def auth_data=(str)
        @authorization_protocol_data_len = str.bytesize
        @authorization_protocol_data = str
      end
    end
  end

  class Auth
    FAILED = 0
    SUCCESS = 1
    AUTHENTICATE = 2

    class Error < RuntimeError
    end

    class Info < Xrb::Message
      attr_accessor :connection

      layout \
          :family, {type: :nint16},
          :host_length, {type: :nint16},
          :host, {length_field: :host_length, type: :char, kind: :string},
          :display_length, {type: :nint16},
          :display, {length_field: :display_length, type: :char, kind: :string},
          :name_length, {type: :nint16},
          :name, {length_field: :name_length, type: :char, kind: :string},
          :data_length, {type: :nint16},
          :data, {length_field: :data_length, type: :char, kind: :string}

      def handshake
        hs = Xrb::Message::SetupRequest.new
        hs.auth_data = data || ""
        hs.auth_name = name || ""

        connection.send(hs)
        status = connection.read(1).unpack('w').first
        connection.push(status)

        case status
        when Xrb::Auth::FAILED then
          f = Xrb::Message::SetupFailed.unpack(connection)
          raise Xrb::Auth::Error.new(
              "Server (#{f.protocol_major_version}.#{f.protocol_minor_version}) " +
              "auth failure: #{f.reason}")
        when Xrb::Auth::SUCCESS then
          Xrb::Message::Setup.unpack(connection)

        when Xrb::Auth::AUTHENTICATE then
          f = Xrb::Message::SetupAuthenticate.unpack(connection)
          raise Xrb::Auth::Error.new('Server requires authentication')
        end
      end
    end

    def self.find(host, display)
      if host.nil? || host.empty? || host == 'localhost' || host == '127.0.0.1'
        host = Socket.gethostname
      end

      file = ENV['XAUTHORITY']
      if file.nil? || file.empty?
        home = ENV['HOME']
        raise RuntimeError.new("Unable to find XAUTHORTY file") if home.empty?

        file = "#{home}/.Xauthority"
      end

      File.open(file) do |f|
        auth = Xrb::Auth::Info.unpack(f)
        return auth if auth.host == host && auth.display.to_i == display
      end

      nil
    end
  end
end
