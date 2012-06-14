require 'xrb/thread'

module Xrb
  class ThreadPool
    def initialize(size = 10)
      @pool = []
      self.size = size
    end

    # Set the size of the thread pool to {size}. Note, this will
    # not decrease the size of the pool
    def size=(size)
      if (@pool.size < size)
        (size - @pool.size).times { @pool << Xrb::Thread.new }
      end
    end

    # Schedule a block to execute in the pool. If there are not
    # enough threads the pool will be expanded and the block
    # executed.
    def process(&blk)
      @pool.each do |item|
        next if item.processing?

        item.process(&blk)
        return
      end

      self.size = @pool.size + (@pool.size / 2)
      process(&blk)
    end
  end
end