require 'thread'

module Xrb
  class Thread
    class ThreadBusyException < Exception; end

    def initialize
      @mutex = Mutex.new
      @working = false

      @thread = ::Thread.new do
        while (true)
          ::Thread.stop unless @working

          begin
            @work_item.call
          rescue Exception => e
            $stderr.puts e.message
            $stderr.puts e.backtrace.join("\n")
          end

          @working = false
        end
      end
    end

    # Execute the given block in this thread. If this thread is
    # already executing a block an exception will be raised.
    def process(&blk)
      @mutex.synchronize do
        raise ThreadBusyException.new('Thread busy') if processing?
        @working = true
      end

      @work_item = blk
      @thread.run
    end

    # Returns true if this thread is currently executing a block
    def processing?
      @working
    end
  end
end