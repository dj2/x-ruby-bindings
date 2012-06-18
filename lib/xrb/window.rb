module Xrb
  class Window
    attr_reader :id, :depth

    DEFAULT_OPTS = {x: 0, y: 0, border_width: 2, depth: Xrb::COPY_FROM_PARENT,
        class: Xrb::WINDOW_CLASS_INPUT_OUTPUT}

    def initialize(conn, opts = {})
      @conn = conn

      o = DEFAULT_OPTS.merge(opts)

      screen = o[:screen]
      if o[:parent].nil? || o[:visual].nil?
        screen = o[:screen] || @conn.setup.roots.first
        o[:parent] = screen.root
        o[:visual] = screen.root_visual
      end

      @depth = if o[:depth] == Xrb::COPY_FROM_PARENT
        @conn.setup.roots.first.root_depth
      else
        o[:depth]
      end

      @id = @conn.generate_id
      o[:wid] = @id

      @handlers = {error: [], event: []}

      @conn.send(Xrb::Request::CreateWindow.new(o))
      @conn.register_window(self)
    end

    def on_event(&blk)
      return unless block_given?
      @handlers[:event] << blk
    end

    def on_error(&blk)
      return unless block_given?
      @handlers[:error] << blk
    end

    def handle_message(event, type)
      @handlers[type].each { |h| h.call(event) }
    end

    def show
      @conn.send(Xrb::Request::MapWindow.new(window: @id))
    end

    def hide
      @conn.send(Xrb::Request::UnmapWindow.new(window: @id))
    end

    def show_subwindows
      @conn.send(Xrb::Request::MapSubwindows.new(window: @id))
    end

    def hide_subwindows
      @conn.send(Xrb::Request::UnmapSubwindows.new(window: @id))
    end

    def attributes(&blk)
      cookie = @conn.send(Xrb::Request::GetWindowAttributes.new(window: @id))
      cookie.callback = blk if block_given?
      cookie
    end

    def destroy
      @conn.send(Xrb::Request::DestroyWindow.new(window: @id))
    end

    def destroy_subwindows
      @conn.send(Xrb::Request::DestroySubwindows.new(window: @id))
    end

    def attributes=(attrs)
      o = {window: @id, value: attrs}
      @conn.send(Xrb::Request::ChangeWindowAttributes.new(o))
    end

    def change_save_set(op)
      mode = (op == :insert ? Xrb::SET_MODE_INSERT : Xrb::SET_MODE_DELETE)
      o = {window: @id, mode: mode}
      @conn.send(Xrb::Request::ChangeSaveSet.new(o))
    end

    def reparent(opts)
      o = opts.merge(window: @id)
      @conn.send(Xrb::Request::ReparentWindow.new(o))
    end
  end
end
