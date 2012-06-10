require 'xrb/constants'
require 'xrb/message'
require 'xrb/generic_types'
require 'xrb/gen/xproto'
require 'xrb/connection'
require 'xrb/setup'
require 'xrb/window'

module Xrb
  @@connection = nil
  
  def self.connection(display = nil)
    return @@connection unless @@connection.nil?
    @@connection = Xrb::Connection.new(display)
    @@connection.connect
    @@connection
  end
end
