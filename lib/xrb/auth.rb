require 'socket'
require 'xrb/message'

module Xrb
  class Auth
    FAMILY_LOCAL = 256

    class AuthInfo < Xrb::Message
      layout \
          :family, :nint16,
          :host_length, :nint16,
          :host, [:host_length, :char, :string],
          :display_length, :nint16,
          :display, [:display_length, :char, :string],
          :name_length, :nint16,
          :name, [:name_length, :char, :string],
          :data_length, :nint16,
          :data, [:data_length, :char, :string]
    end

    def self.find(host, display)
      if host.nil? || host == 'localhost' || host == '127.0.0.1'
        host = Socket.gethostname
      end

      file = ENV['XAUTHORITY']
      if file.nil? || file.empty?
        home = ENV['HOME']
        raise RuntimeError.new("Unable to find XAUTHORTY file") if home.empty?

        file = "#{home}/.Xauthority"
      end

      File.open(file) do |f|
        auth = AuthInfo.unpack(f)
        return auth if auth.host == host && auth.display.to_i == display
      end

      nil
    end
  end
end
