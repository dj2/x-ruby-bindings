module Xrb
  module Request
    class PutImage
      def calc_length
        @length = 32 + data.length
p @length
      end
    end
  end

  class Image
    attr_reader :x, :y, :width, :height
    def initialize(conn, opts = {}, &blk)
      @conn = conn

      @width = opts[:width]
      @height = opts[:height]
      @x = opts[:x]
      @y = opts[:y]
      @plane_mask = opts[:plane_mask]
      @format = opts[:format]
      @drawable = opts[:drawable]

      opts[:drawable] = opts[:drawable].id

      cookie = @conn.send(Xrb::Request::GetImage.new(opts))
      cookie.callback = Proc.new do |reply|
        @depth = reply.depth
        @length = reply.length
        @visual = reply.visual
        @data = reply.data

        @conn.setup.pixmap_formats.each do |fmt|
          next unless fmt.depth == @depth

          @bits_per_pixel = fmt.bits_per_pixel
          if @bits_per_pixel < 8
            puts "Handle bit sizes less then 8 ..."
          end

          @scanline_pad = fmt.scanline_pad
        end

        blk.call(self) if block_given?
      end
      cookie
    end

    def put(opts = {})
      o = {format: @format,
          drawable: @drawable.id,
          gc: opts[:gc].id,
          width: @width,
          height: @height,
          dst_x: opts[:x],
          dst_y: opts[:y],
          left_pad: opts[:left_padding],
          depth: @depth,
          data: @data}

      @conn.send(Xrb::Request::PutImage.new(o))
    end

    # TODO(dj2): Handle XCB_IMAGE_ORDER_LSB_FIRST
    # TODO(dj2): Handle formats other then Z_PIXMAP
    def pixel(x, y, color)
      y = (@width * @bits_per_pixel) + (@scanline_pad - 1)
      if ((@scanline_pad - 1) & @scanline_pad) == 0
        y = y & -@scanline_pad
      else
        y = y - y % @scanline_pad
      end

      case @format
      when  Xrb::IMAGE_FORMAT_Z_PIXMAP then
        case @bits_per_pixel
        when 8 then
          @data[y + x] = color.to_s
        when 16 then
          pos = y + (x << 1)
          @data[pos] = (color >> 8).to_s
          @data[pos + 1] = color.to_s
        when 24 then
          pos = y (x * 3)
          @data[pos] = (color >> 16).to_s
          @data[pos + 1] = (color >> 8).to_s
          @data[pos + 2] = color.to_s
        when 32 then
          pos = y + (x << 2)
          @data[pos] = (color >> 24).to_s
          @data[pos + 1] = (color >> 16).to_s
          @data[pos + 2] = (color >> 8).to_s
          @data[pos + 3] = color.to_s
        else
          puts "Unsupported image pixel depth"
        end
      else
        puts "Unsupported #{@format} for Image#pixel"
      end
    end
  end
end
