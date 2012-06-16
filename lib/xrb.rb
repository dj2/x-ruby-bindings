require 'xrb/thread_pool'
require 'xrb/constants'
require 'xrb/message'
require 'xrb/cookie'
require 'xrb/request'
require 'xrb/gen/xproto'
require 'xrb/connection'
require 'xrb/setup'

require 'xrb/gc'
require 'xrb/image'
require 'xrb/pixmap'
require 'xrb/colormap'
require 'xrb/window'

module Xrb
  DEFAULT_SLEEP = 0.1

  # Start the main run loop.
  # This will connect to the X server and does not return until
  # {Xrb#quit} is called.
  # @param [String] display The X11 display to connect too
  def self.run(display = nil, &blk)
    if running?
      blk.call(@conn) if block_given?
      return
    end

    @running = true
    @pid = Process.pid

    @timers = []
    @readers = []
    @next_ticks = []

    @timer_mutex = Mutex.new
    @current_time = Time.now.to_f
    @thread_pool = ThreadPool.new(@thread_pool_size || 10)

    @conn = Xrb::Connection.new(display)
    @conn.connect

    @readers << @conn

    blk.call(@conn) if block_given?

    while (running?) do
      fire_timers
      check_sockets

      sleep(@timers.empty? ? DEFAULT_SLEEP :
          (@timers.first[:delay] - @current_time))
      @current_time = Time.now.to_f

      @next_ticks.each { |p| p.call }
      @next_ticks.clear
    end
  end

  # Stop the main run loop
  def self.quit
    @running = false
  end

  # Check if we've started the run loop
  # @return [Boolean] true if the main loop is executing
  def self.running?
    !!@running
  end

  # @return [Integer] the process PID
  def self.pid
    @pid
  end

  # @return [Connection] the current X11 connection
  def self.connection
    @conn
  end

  # Set the size of the threadpool. Note, the thread pool will not
  # decrease in size due to this call.
  # @param [Integer] size The size to set
  def self.thread_pool_size=(size)
    @thread_pool ? @thread_pool.size = size : @thread_pool_size = size
  end

  # Add a timer to fire every interval seconds
  # @param [Integer] interval The timer interval
  def self.add_repeating_timer(interval = 1, &blk)
    wrapper = Proc.new do
      begin
        blk.call
      rescue Exception => e
        $stderr.puts e.message
        $stderr.puts e.backtrace.join("\n")
      end

      add_timer(interval, &wrapper)
    end
    add_timer(interval, &wrapper)
  end

  # Add a timer to fire once in delay seconds.
  # @param [Integer] delay The delay until the timer fires
  def self.add_timer(delay = 1, &blk)
    @timer_mutex.synchronize do
      @timers << {:delay => @current_time + delay, :block => blk}
      @timers.sort! { |a, b| a[:delay] <=> b[:delay] }
    end
  end

  # Add a block to execut on the next tick of the reactor.
  def self.next_tick(&blk)
    @next_ticks << blk
  end

  # Execute block on a background thread.
  def self.execute(&blk)
    return unless block_given?
    @thread_pool.process(&blk)
  end

  private

  # Execute all ready timers
  def self.fire_timers
    return if @timers.empty?

    fired = []
    @timer_mutex.synchronize do
      t = @timers.first

      while (true)
        break if @timers.empty?
        break if t[:delay] > @current_time

        fired << @timers.shift
        t = @timers.first
      end
    end

    fired.each { |timer| timer[:block].call }
  end

  # Check for available data on all sockets
  def self.check_sockets
    return if @readers.empty?

    read_sockets = @readers.collect { |r| r.socket }
    read_socks, write_socks, err_socks = select(read_sockets, nil, nil, 0)
    return if read_socks.nil?  # timed out

    @readers.each do |reader|
      next unless read_socks.include?(reader.socket)
      reader.data_available
    end
  end
end
