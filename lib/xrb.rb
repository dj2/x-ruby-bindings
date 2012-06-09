require 'xrb/constants'
require 'xrb/generic_types'
require 'xrb/gen/xproto'
require 'xrb/connection'
require 'xrb/setup'
require 'xrb/window'

module Xrb
  def self.connection(display = nil)
    @@connection ||= Xrb::Connection.new(display).connect
  end
end
