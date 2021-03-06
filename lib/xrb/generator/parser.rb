require 'xrb/generator/fields'
require 'xrb/generator/types'

module Xrb
  class Generator
    class Parser
      attr_reader :current_namespace

      def initialize(types, namespaces, in_dir)
        @types = types
        @namespaces = namespaces
        @in_dir = in_dir

        @types.merge!({
            UINT8: Type.new(:uint8, 1),
            UINT16: Type.new(:uint16, 2),
            UINT32: Type.new(:uint32, 4),
            INT8: Type.new(:int8, 1),
            INT16: Type.new(:int16, 2),
            INT32: Type.new(:int32, 4),
            char: Type.new(:char, 1),
            float: Type.new(:float, 4),
            double: Type.new(:double, 8),
            BOOL: Type.new(:bool, 1),
            BYTE: Type.new(:byte, 1)
        })

        @types.merge!({
          CARD8: @types[:UINT8],
          CARD16: @types[:UINT16],
          CARD32: @types[:UINT32],
          void: @types[:UINT8]
        })

        @parsed = {}
      end

      def process
        #parse("#{@in_dir}/xproto.xml")
        Dir["#{@in_dir}/*.xml"].each do |file|
          puts "Processing #{file}"

          parse(file)
        end
      end

      def add_cardinal_type(name, to)
        @types[name] = to
      end

      def add_type(type, name)
        @types["#{@current_namespace.name}:#{name}".to_sym] = type
      end

      def get_type(name)
        # xfixes has shape:KIND as a type ...
        name = name.to_s.split(':').last
        return @types[name.to_sym] unless @types[name.to_sym].nil?

        key = "#{@current_namespace.name}:#{name}".to_sym
        return @types[key] unless @types[key].nil?

        @current_namespace.imports.each do |import|
          ns = @namespaces[import]
          key = "#{ns.name}:#{name}".to_sym
          return @types[key] unless @types[key].nil?
        end

        raise Exception.new("Unknown type #{name}")
      end

      def parse_fields(nodes)
        fields = []
        reply = nil

        pad_index = 1

        nodes.each do |node|
          next unless node.element?

          case (node.name)
          when 'field' then
            fields << Field.new(node, get_type(node.attr('type')))

          when 'pad' then
            fields << PadField.new(node.attr('bytes').to_i,
                get_type(:CARD8), pad_index)
            pad_index += 1

          when 'list' then fields << ListField.new(node, self)
          when 'reply' then reply = Reply.new(node, self)
          when 'valueparam' then fields << ValueParamField.new(node, self)
          when 'exprfield' then fields << ExprField.new(node, self)
          when 'switch' then fields << SwitchField.new(node, self)
          when 'item' then fields << ItemField.new(node)
          when 'enumref' then fields << EnumRefField.new(node, self)
          else
            puts "Unknown field: #{node.name}"
          end
        end

        [fields, reply]
      end

      def parse_list(nodes)
        members = []

        nodes.each do |node|
          next unless node.element?

          case (node.name)
          when 'fieldref' then members << FieldRefField.new(node.inner_text)
          when 'op' then members << OpField.new(node, self)
          when 'unop' then members << UnopField.new(node, self)
          when 'value' then members << ValueField.new(node.inner_text.to_i)
          when 'popcount' then members << PopcountField.new(node, self)
          when 'bitcase' then members << BitcaseField.new(node, self)
          when 'sumof' then members << SumOfField.new(node, self)
          else
            puts "Unknown list member #{node.name}"
          end
        end

        members
      end

      private

      def parse(file)
        return if @parsed[file]

        @parsed[file] = true
        doc = Nokogiri.parse(File.open(file).read)

        @current_namespace = Namespace.new(doc.root)
        @namespaces[@current_namespace.header] = @current_namespace

        doc.root.children.each do |child|
          handle(child)
        end
      end

      def handle(child)
        return unless child.element?
        send("handle_#{child.name}".to_sym, child)
      end

      def handle_import(node)
        @current_namespace.imports << node.inner_text

        saved_namespace = @current_namespace
        parse("#{@in_dir}/#{node.inner_text}.xml")

        @current_namespace = saved_namespace
      end

      def handle_xidtype(node)
        add_cardinal_type(node.attr('name').to_sym, get_type(:CARD32))
        @current_namespace.types << [node.attr('name').to_sym,
            get_type(:CARD32)]
      end

      def handle_xidunion(node)
        handle_xidtype(node)
      end

      def handle_typedef(node)
        add_cardinal_type(node.attr('newname').to_sym,
            get_type(node.attr('oldname')))
        @current_namespace.types << [node.attr('newname').to_sym,
            get_type(node.attr('newname').to_sym)]
      end

      def handle_enum(node)
        enum = Enum.new(node, self)
        add_type(enum, enum.name)
        @current_namespace.types << enum
      end

      def handle_request(node)
        request = Request.new(node, self)
        add_type(request, request.name)
        @current_namespace.requests << request
      end

      def handle_error(node)
        error = Error.new(node, self)
        add_type(error, error.names.first)
        @current_namespace.errors << error
      end

      def handle_errorcopy(node)
        error = get_type(node.attr('ref'))
        error.opcodes << node.attr('number').to_i
        error.names << node.attr('name')
        add_type(error, error.names.last)
      end

      def handle_event(node)
        event = Event.new(node, self)
        add_type(event, event.names.first)
        @current_namespace.events << event
      end

      def handle_eventcopy(node)
        event = get_type(node.attr('ref'))
        event.opcodes << node.attr('number').to_i
        event.names << node.attr('name')
        add_type(event, event.names.last)
      end

      def handle_struct(node)
        struct = Struct.new(node, self)
        add_type(struct, struct.name)
        @current_namespace.types << struct
      end

      def handle_union(node)
        union = Union.new(node, self)
        add_type(union, union.name)
        @current_namespace.types << union
      end
    end
  end
end
