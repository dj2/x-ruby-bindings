require 'xrb/cardinal'
require 'xrb/generator/types'

module Xrb
  class Generator
    class RbPrinter
      attr_reader :cardinals

      def initialize(namespaces, out_dir)
        @namespaces = namespaces
        @out_dir = out_dir

        @cardinals = Xrb::Cardinal.all
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

      def format(str = '')
        return str if str.empty?
        "#{' ' * @indent}#{str}"
      end

      def print(str = '', &blk)
        @file.puts(format(str))

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
            ns.imports.each { |import| print("require 'xrb/#{import}'") }

            name = "xrb/gen/#{ns.header}"
            print("require '#{name}/constants'") unless constants.empty?
            print("require '#{name}/messages'") unless ns.types.empty?
            print("require '#{name}/events'") unless ns.events.empty?
            print("require '#{name}/errors'") unless ns.errors.empty?
            if !ns.requests.empty?
              print("require '#{name}/requests'")
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
                Field.new(constant.fields, self, '').process
                print
              end
            end
          end

          if !ns.types.empty?
            file(ns, "#{ns.header}/messages") do
              print("class Message") do
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

      class Field
        def initialize(fields, printer, joiner = ',')
          @p = printer
          @data = fields
          @joiner = joiner
        end

        def process
          output = []

          @data.each_with_index do |field, idx|
            meth = "process_#{@p.name(field)}".to_sym
            if (respond_to?(meth))
              output << send(meth, field)
            else
              puts "Unknown field type #{@p.name(field)}"
            end
          end
          output.delete_if { |r| r.nil? }

          if !output.empty?
            output[0].strip!
            @p.print(output.join("#{@joiner}\n"))
          end
        end

        def process_field(field)
          @p.format(":#{field.name}, {type: :#{field.type.name}}")
        end

        def process_autofield(field)
          process_field(field)
        end

        def process_exprfield(field)
          expr = process_op_expression(field.members.first)
          @p.format(":#{field.name}, {type: :#{field.type.name}, " +
            "value_expr: '#{expr}'}")
        end

        def process_valueparamfield(field)
          name = field.name.gsub(/_mask/, '')
          @p.format(":#{name}, {type: :#{field.type.name}, kind: :map}")
        end

        def process_listfield(field)
          if field.members.empty?
            process_list_empty(field)

          elsif field.members.first.is_a?(ValueField)
            process_list_value_field(field)

          elsif field.members.first.is_a?(FieldRefField)
            process_list_field_ref_field(field)

          elsif field.members.first.is_a?(OpField)
            process_list_op_field(field)

          else
            puts "Unhandled list type: #{field.members.first.to_s}"
          end
        end

        def process_list_empty(field)
          type = @p.cardinals[field.type.name]
          type = if type.nil?
            @p.type_name(field.type.name)
          else
            ":#{type.name}"
          end

          @p.format(":#{field.name}, " +
              "{type: #{type}, kind: :list}")
        end

        def process_list_value_field(field)
          @p.format(":#{field.name}, " +
              "{type: :#{field.type.name}, " +
              "size: #{field.members.first.size}}")
        end

        def process_list_field_ref_field(field)
          # We want [:len_field_name, :type, :[string | list]]
          type = field.type.name == :char ? ':string' : ':list'

          if type == ':string' || !@p.cardinals[field.type.name].nil?
            @p.format(":#{field.name}, " +
                "{length_field: :#{field.members.first.name}, " +
                "type: :#{field.type.name}, kind: #{type}}")
          else
            @p.format(":#{field.name}, " +
                "{length_field: :#{field.members.first.name}, " +
                "type: #{@p.type_name(field.type.name)}, kind: #{type}}")
          end
        end

        def process_list_op_field(field)
          expr = process_op_expression(field.members.first)

          @p.format(":#{field.name},{type: #{field.type.name}, " +
              "length_expr: '#{expr}'}")
        end

        def process_op_expression(op)
          if op.is_a?(FieldRefField)
            return op.name
          elsif op.is_a?(ValueField)
            return op.size
          elsif op.is_a?(OpField)
            lhs = process_op_expression(op.members.first)
            rhs = process_op_expression(op.members.last)

            return "(#{lhs} #{op.name} #{rhs})"
          elsif op.is_a?(UnopField)
            rhs = process_op_expression(op.members.first)
            return "(~#{rhs})"
          else
            puts "OP expression found unknown type #{op.class}"
          end
          return nil
        end

        def process_padfield(field)
          @p.format(":#{field.name}#{field.index}, " +
              "{size: #{field.bytes}, type: :#{field.type.name}}")
        end

        def process_itemfield(field)
          @p.format("#{field.name.underscore.upcase} = " +
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
            next if @p.name(type) == 'enum'

            meth = "process_#{@p.name(type)}".to_sym
            respond_to?(meth) ? send(meth, type) : process_type(type)
            @p.print
          end
        end

        def process_type(type)
          @p.print("class #{@p.type_name(type.name)} < Xrb::Message") do
            @p.print("layout \\")
            @p.inc(4) { Field.new(type.fields, @p).process }
          end
        end

        def process_union(type)
          @p.print("class #{@p.type_name(type.name)} < Xrb::Message") do
            @p.print("union \\")
            @p.inc(4) { Field.new(type.fields, @p).process }
          end
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
          @op_map = {}
        end

        def process
          @data.each { |type| process_event(type) }

          @p.print("@op_map = {")
          @p.inc
            ops = []
            @op_map.each_pair { |k, v| ops << "#{v} => #{k}" }
            @p.print(ops.join(",\n"))
          @p.dec
          @p.print("}")

          @p.print("def self.find(opcode)") do
            @p.print("@op_map[opcode]")
          end
        end

        def process_event(type)
          type.names.each_with_index do |name, idx|
            @op_map[@p.type_name(name)] = type.opcodes[idx]

            @p.print("class #{@p.type_name(name)} < Xrb::Message") do
              @p.print("OPCODE = #{type.opcodes[idx]}")
              @p.print
              @p.print("layout \\")
              @p.inc(4) { Field.new(type.fields, @p).process }
              @p.print
              @p.print("def to_sym") do
                n = @p.type_name(name).split("::").last
                @p.print(":#{n}")
              end
            end
            @p.print
          end
        end
      end

      class Error
        def initialize(errors, printer)
          @p = printer
          @data = errors
          @op_map = {}
        end

        def process
          @data.each { |type| process_event(type) }

          @p.print("@op_map = {")
          @p.inc
            ops = []
            @op_map.each_pair { |k, v| ops << "#{v} => #{k}" }
            @p.print(ops.join(",\n"))
          @p.dec
          @p.print("}")

          @p.print("def self.find(opcode)") do
            @p.print("@op_map[opcode]")
          end
        end

        def process_event(type)
          type.names.each_with_index do |name, idx|
            @op_map[@p.type_name(name)] = type.opcodes[idx]

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
          @data.each { |type| process_request(type) }
        end

        def process_request(type)
          @p.print("class #{@p.type_name(type.name)} < Xrb::Message") do
            @p.print("include Xrb::Request")
            @p.print
            @p.print("OPCODE = #{type.opcode}")
            @p.print
            @p.print("layout \\")
            @p.inc(4) { Field.new(type.fields, @p).process }

            @p.print("def has_reply?") do
              @p.print(type.reply.nil? ? "false" : "true")
            end
          end
          @p.print
        end
      end

      class Reply
        def initialize(replies, printer)
          @p = printer
          @data = replies
        end

        def process
          @data.each { |reply| process_reply(reply) }
        end

        def process_reply(reply)
          @p.print("class #{@p.type_name(reply.name)} < Xrb::Message") do
            @p.print("layout \\")
            @p.inc(4) { Field.new(reply.fields, @p).process }
          end
          @p.print
        end
      end
    end
  end
end
