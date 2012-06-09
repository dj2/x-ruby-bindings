require 'xrb/generator/types'

class File
  def iputs(indent, str)
    self.puts("#{' ' * indent}#{str}")
  end
end

module Xrb
  class Generator
    class RbPrinter
      attr_reader :cardinals

      def initialize(namespaces, out_dir)
        @namespaces = namespaces
        @out_dir = out_dir

        @cardinals = {
            uint8: Cardinal.new(1, 'C'),
            uint16: Cardinal.new(2, 'S'),
            uint32: Cardinal.new(4, 'L'),
            int8: Cardinal.new(1, 'c'),
            int16: Cardinal.new(2, 's'),
            int32: Cardinal.new(4, 'l'),
            char: Cardinal.new(1, 'C'),
            float: Cardinal.new(4, 'f'),
            double: Cardinal.new(8, 'd'),
            bool: Cardinal.new(1, 'C')
        }

        @cardinals.merge!({
          card8: @cardinals[:uint8],
          card16: @cardinals[:uint16],
          card32: @cardinals[:uint32],
          byte: @cardinals[:uint8],
          void: @cardinals[:uint8]
        })
      end

      def inc(val = 2, &blk)
        @indent += val
        if block_given?
          yield
          @indent -= val
        end
      end

      def dec(val = 2)
        @indent -= 2
      end

      def name(v)
        v.class.to_s.split(':').last.downcase
      end

      def type_name(name)
        name = name.to_s
        return name if %w{GC GX KB RGB CW}.include?(name)
        return "GContext" if name == "GCONTEXT"
        return "VisualId" if name == "VISUALID"
        return "VisualType" if name == "VISUALTYPE"
        return "TimeCoord" if name == "TIMECOORD"
        return "FontProp" if name == "FONTPROP"
        return "CharInfo" if name == "CHARINFO"
        return "ColorItem" if name == "COLORITEM"
        return "Char2b" if name == "CHAR2B"

        name.underscore.camel_case
      end

      def print(str = '', &blk)
        @file.iputs(@indent, str)

        if block_given?
          inc do
            blk.call
          end
          print('end')
        end
      end

      def header
        print("#")
        print("# This file was auto-generated. Do not edit.")
        print("#")
        print('')
      end

      def file(ns, name, imports = nil, &blk)
        @indent = 0

        FileUtils.mkdir_p(File.dirname("#{@out_dir}/#{name}.rb"))
        File.open("#{@out_dir}/#{name}.rb", "w") do |f|
          @file = f

          header

          if imports
            imports.call
            print('')
          end

          print("module Xrb") do
            if ns.name != 'Xcb'
              print("module #{ns.name}")
              inc
            end

            yield if block_given?

            if ns.name != 'Xcb'
              dec
              print("end")
            end
          end
        end
      end

      def process
        @namespaces.values.each do |ns|
          next if ns.header == 'xkb'

          puts "Generating #{@out_dir}/#{ns.header}.rb"

          replies = ns.requests.collect { |r| r.reply }
          replies.delete_if { |r| r.nil? }

          constants = ns.types.collect { |r| name(r) == 'enum' ? r : nil }
          constants.delete_if { |r| r.nil? }

          imports = Proc.new do
            print("require 'xrb/generic_types'")
            ns.imports.each { |import| print("require 'xrb/#{import}'") }

            name = "xrb/#{ns.header}"
            print("require '#{name}/constants'") unless constants.empty?
            print("require '#{name}/messages'") unless ns.types.empty?
            print("require '#{name}/events'") unless ns.events.empty?
            print("require '#{name}/errors'") unless ns.errors.empty?
            if !ns.requests.empty?
              print("require '#{name}/requests'")
              print("require '#{name}/cookies'")
            end
            print("require '#{name}/replies'") unless replies.empty?
          end

          file(ns, ns.header, imports) do
            if ns.extension?
              print("MAJOR_VERSION = #{ns.major_version}")
              print("MINOR_VERSION = #{ns.minor_version}")
            end
          end

          if !constants.empty?
            file(ns, "#{ns.header}/constants") do
              constants.each do |constant|
                print("# #{constant.name}")
                Field.new(constant.fields, self).process
                print
              end
            end
          end

          if !ns.types.empty?
            file(ns, "#{ns.header}/messages") do
              print("module Message") do
                Type.new(ns.types, self).process
              end
            end
          end

          if !ns.events.empty?
            file(ns, "#{ns.header}/events") do
              print("module Event") do
                Event.new(ns.events, self).process
              end
            end
          end

          if !ns.errors.empty?
            file(ns, "#{ns.header}/errors") do
              print("module Error") do
                Error.new(ns.errors, self).process
              end
            end
          end

          if !ns.requests.empty?
            file(ns, "#{ns.header}/requests") do
              print("module Request") do
                Request.new(ns.requests, self).process
              end
            end

            file(ns, "#{ns.header}/cookies") do
              print("module Cookie") do |variable|
                Cookie.new(ns.requests, self).process
              end
            end
          end

          if !replies.empty?
            file(ns, "#{ns.header}/replies") do
              print("module Reply") do
                Reply.new(replies, self).process
              end
            end
          end
        end
      end

      class Cardinal
        attr_reader :directive, :size

        def initialize(size, directive)
          @size = size
          @directive = directive
        end
      end

      class Field
        def initialize(fields, printer)
          @p = printer
          @data = fields
        end

        def process
          @data.each do |field|
            meth = "process_#{@p.name(field)}".to_sym
            if (respond_to?(meth))
              send(meth, field)
            else
              puts "Unknown field type #{@p.name(field)}"
            end
          end
        end

        def process_field(field)
          @p.print(":#{field.name}, :#{field.type.name}")
        end

        def process_autofield(field)
          process_field(field)
        end

        def process_valueparamfield(field)
          @p.print(":#{field.name}, :#{field.type.name}")
        end

        def process_listfield(field)
          return unless field.members.first.is_a?(ValueField)

          @p.print(":#{field.name}, " +
              "[:#{field.type.name}, #{field.members.first.size}]")
        end

        def process_padfield(field)
          @p.print(":#{field.name}#{field.index}, " +
              "[:#{field.type.name}, #{field.bytes}]")
        end

        def process_itemfield(field)
          @p.print("#{field.name.underscore.upcase} = " +
              "(#{field.type == :bit ? '1 << ' : ''}#{field.value})")
        end
      end

      class Type
        def initialize(types, printer)
          @p = printer
          @data = types
        end

        def process
          @data.each do |type|
            meth = "process_#{@p.name(type)}".to_sym
            respond_to?(meth) ? send(meth, type) : process_type(type)
            @p.print
          end
        end

        def process_type(type)
          @p.print("class #{@p.type_name(type.name)} < Xrd::Message") do
            @p.print("layout \\")
            @p.inc(4) { Field.new(type.fields, @p).process }
          end
        end

        def process_union(type)
          @p.print("class #{@p.type_name(type.name)}") do
            @p.print("union \\")
            @p.inc(4) { Field.new(type.fields, @p).process }
          end
        end

        def process_enum(type)
        end

        def process_array(values)
          type_name = @p.type_name(values.first).to_sym
          type = values.last

          @p.cardinals[type_name] = @p.cardinals[type.name]

          @p.print("class #{type_name}") do
            @p.print('attr_accessor :id')
            @p.print
            @p.print('def to_wire') do
              @p.print("[id].pack('#{@p.cardinals[type_name].directive}')")
            end
          end
        end
      end

      class Event
        def initialize(events, printer)
          @p = printer
          @data = events
        end

        def process
          @data.each do |type|
            process_event(type)
          end
        end

        def process_event(type)
          type.names.each_with_index do |name, idx|
            @p.print("class #{@p.type_name(name)} < Xrb::Message") do
              @p.print("OPCODE = #{type.opcodes[idx]}")
              @p.print
              @p.print("layout \\")
              @p.inc(4) { Field.new(type.fields, @p).process }
            end
            @p.print
          end
        end
      end

      class Error
        def initialize(errors, printer)
          @p = printer
          @data = errors
        end

        def process
          @data.each do |type|
            process_event(type)
          end
        end

        def process_event(type)
          type.names.each_with_index do |name, idx|
            @p.print("class #{@p.type_name(name)} < Xrb::Message") do
              @p.print("OPCODE = #{type.opcodes[idx]}")
              @p.print
              @p.print("layout \\")
              @p.inc(4) { Field.new(type.fields, @p).process }
            end
            @p.print
          end
        end
      end

      class Request
        def initialize(requests, printer)
          @p = printer
          @data = requests
        end

        def process
          @data.each do |type|
            process_request(type)
            @p.print
          end
        end

        def process_request(type)
          @p.print("class #{@p.type_name(type.name)} < Xrb::Message") do
            @p.print("OPCODE = #{type.opcode}")
            @p.print
            @p.print("layout \\")
            @p.inc(4) { Field.new(type.fields, @p).process }
          end
        end
      end

      class Cookie
        def initialize(requests, printer)
          @p = printer
          @data = requests
        end

        def process
          @data.each do |type|
            process_cookie(type)
            @p.print
          end
        end

        def process_cookie(type)
          @p.print("class #{@p.type_name(type.name)} < Xrd::Message") do
            @p.print("layout :sequence, :int")
          end
        end
      end

      class Reply
        def initialize(replies, printer)
          @p = printer
          @data = replies
        end

        def process
          @data.each do |reply|
            process_reply(reply)
            @p.print
          end
        end

        def process_reply(reply)
          @p.print("class #{@p.type_name(reply.name)} < Xrb::Message") do
            @p.print("layout \\")
            @p.inc(4) { Field.new(reply.fields, @p).process }
          end
        end
      end
    end
  end
end