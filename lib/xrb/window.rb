module Xrb
  class Window
    include Xrb::Drawable

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

    def configure(values)
      @conn.send(Xrb::Request::ConfigureWindow.new(window: @id, value: values))
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

    def change_attributes(attrs)
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

    def circulate(direction)
      @conn.send(Xrb::Request::CirculateWindow.new(window: @id,
          direction: direction))
    end

    def query_tree(&blk)
      cookie = @conn.send(Xrb::Request::QueryTree.new(window: @id))
      cookie.callback = blk if block_given?
      cookie
    end

    def change_property(name, opts = {})
      o = opts.merge(window: @id, property: name)
      @conn.send(Xrb::Request::ChangeProperty.new(o))
    end

    def delete_property(name)
      @conn.send(Xrb::Request::DeleteProperty.new(window: @id, property: name))
    end

    def property(name, opts = {}, &blk)
      o = opts.merge(window: @id, property: name)
      cookie = @conn.send(Xrb::Request::GetProperty.new(o))
      cookie.callback = blk if block_given?
      cookie
    end

    def rotate_properties(opts = {})
      o = opts.merge(window: @id)
      @conn.send(Xrb::Request::RotateProperties.new(o))
    end

    def properties(&blk)
      cookie = @conn.send(Xrb::Request::ListProperties.new(window: @id))
      cookie.callback = blk if block_given?
      cookie
    end

    def grab_pointer(opts, &blk)
      o = opts.merge(grab_window: @id)
      cookie = @conn.send(Xrb::Request::GrabPointer.new(o))
      cookie.callback = blk if block_given?
      cookie
    end

    def ungrab_pointer(opts)
      @conn.send(Xrb::Request::UngrabPointer.new(opts))
    end

    def grab_button(opts)
      o = opts.merge(grab_window: @id)
      @conn.send(Xrb::Request::GrabButton.new(o))
    end

    def ungrab_button(opts)
      o = opts.merge(grab_window: @id)
      @conn.send(Xrb::Request::UngrabButton.new(o))
    end

    def change_pointer_grab(opts)
      @conn.send(Xrb::Request::ChangeActivePointerGrab.new(opts))
    end

    def grab_keyboard(opts, &blk)
      o = opts.merge(grab_window: @id)
      cookie = @conn.send(Xrb::Request::GrabKeyboard.new(o))
      cookie.callback = blk if block_given?
      cookie
    end

    def ungrab_keyboard(opts)
      @conn.send(Xrb::Request::UngrabKeyboard.new(opts))
    end

    def grab_key(opts)
      o = opts.merge(grab_window: @id)
      @conn.send(Xrb::Request::GrabKey.new(o))
    end

    def ungrab_key(opts)
      o = opts.merge(grab_window: @id)
      @conn.send(Xrb::Request::UngrabKey.new(o))
    end
  end
end
