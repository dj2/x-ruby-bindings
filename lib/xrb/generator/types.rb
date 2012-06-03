require 'xrb/generator/fields'

class Xrb
  class Generator
    class Type
      attr_reader :name

      def initialize(name, opts = {})
        @name = name

        if (opts.is_a?(Hash))
          @opts = opts
        else
          @type = opts
        end
      end

      def to_s(indent = 0)
        "#{' ' * indent}#{@name} #{@opts}"
      end
    end

    class Enum
      attr_reader :name, :fields

      def initialize(node, parser)
        @name = node.attr('name')
        @fields = parser.parse_fields(node.children).first
      end

      def to_s(indent = 0)
        str = ["#{' ' * indent}XRB::Enum -- #{@name}"]
        @fields.each { |f| str << f.to_s(indent + 2) }
        str.join("\n")
      end
    end

    class Request
      attr_reader :name, :opcode, :fields

      def initialize(node, parser)
        @name = node.attr('name')
        @opcode = node.attr('opcode')

        @fields = [AutoField.new('major_opcode', parser.get_type(:CARD8))]

        if parser.current_namespace.extension?
          @fields << AutoField.new('minor_opcode', parser.get_type(:CARD8))
        else
          @fields << PadField.new(1, parser.get_type(:CARD8), 0)
        end

        @fields << AutoField.new('length', parser.get_type(:CARD16))

        f, @reply = parser.parse_fields(node.children)

        @fields << f
        @fields.flatten!
      end

      def to_s(indent = 0)
        str = ["#{' ' * indent}XRB::Request"]
        str << "#{' ' * (indent + 4)}#{@name} - #{@opcode}"
        @fields.each { |f| str << f.to_s(indent + 2) }
        str.join("\n")
      end
    end

    class Reply
      attr_reader :fields

      def initialize(node, parser)
        @fields = [
          AutoField.new('response_type', parser.get_type(:CARD8)),
          PadField.new(1, parser.get_type(:CARD8), 0),
          AutoField.new('sequence', parser.get_type(:CARD16)),
          AutoField.new('length', parser.get_type(:CARD32))
        ]
        @fields << parser.parse_fields(node.children).first
        @fields.flatten!
      end

      def to_s(indent = 0)
        str = ["#{' ' * indent}Reply"]
        @fields.each { |f| str << f.to_s(indent + 2) }
        str.join("\n")
      end
    end

    class Struct
      attr_reader :name, :fields

      def initialize(node, parser)
        @name = node.attr('name')
        @fields = parser.parse_fields(node.children).first
      end

      def to_s(indent = 0)
        str = ["#{' ' * indent}XRB::Struct -- #{@name}"]
        @fields.each { |f| str << f.to_s(indent + 2) }
        str.join("\n")
      end
    end

    class Union
      attr_reader :name, :fields

      def initialize(node, parser)
        @name = node.attr('name')
        @fields = parser.parse_fields(node.children).first
      end

      def to_s(indent = 0)
        str = ["#{' ' * indent}XRB::Union -- #{@name}"]
        @fields.each { |f| str << f.to_s(indent + 2) }
        str.join("\n")
      end
    end

    class Error
      attr_reader :names, :opcodes, :fields

      def initialize(node, parser)
        @names = [node.attr('name')]
        @opcodes = [node.attr('number')]

        @fields = [
          AutoField.new('response_type', parser.get_type(:CARD8)),
          AutoField.new('error_code', parser.get_type(:CARD8)),
          AutoField.new('sequence', parser.get_type(:CARD16))
        ]
        @fields << parser.parse_fields(node.children).first
        @fields.flatten!
      end

      def to_s(indent = 0)
        str = ["#{' ' * indent}XRB::Error"]
        @names.each_with_index do |name, index|
          str << "#{' ' * (indent + 4)}#{name} - #{opcodes[index]}"
        end
        @fields.each { |f| str << f.to_s(indent + 2) }
        str.join("\n")
      end
    end

    class Event
      attr_reader :names, :opcodes, :fields

      def initialize(node, parser)
        @names = [node.attr('name')]
        @no_seq_number = node.attr('no-sequence_number') == 'true'

        @opcodes = [node.attr('number')]
        @fields = [AutoField.new('response_type', parser.get_type(:CARD8))]

        if @no_seq_number
          @fields << PadField.new(1, parser.get_type(:CARD8), 0)
          @fields << AutoField.new('sequence', parser.get_type(:CARD16))
        end

        @fields << parser.parse_fields(node.children).first
        @fields.flatten!
      end

      def to_s(indent = 0)
        str = ["#{' ' * indent}XRB::Event"]
        @names.each_with_index do |name, index|
          str << "#{' ' * (indent + 4)}#{name} - #{opcodes[index]}"
        end
        @fields.each { |f| str << f.to_s(indent + 2) }
        str.join("\n")
      end
    end

    class Namespace
      attr_reader :name, :header, :imports, :types, :events, :errors, :requests

      def initialize(root)
        @imports = []
        @types = []
        @events = []
        @errors = []
        @requests = []

        @header = root.attr('header')
        @ns = "#{@header}:"
        @is_extension = false
        @name = 'Xcb'
        @prefix = []

        return if root.attr('extension-xname').nil?
        
        @is_extension = true
        @major_version = root.attr('major-version')
        @minor_version = root.attr('minor-version')
        @xname = root.attr('extension-xname')
        @name = root.attr('extension-name')
        @prefix << @name
      end

      def extension?
        @is_extension
      end
    end
  end
end