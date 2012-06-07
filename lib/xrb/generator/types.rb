require 'xrb/generator/fields'

module Xrb
  class Generator
    class Type
      attr_reader :name, :size

      def initialize(name, size)
        @name = name
        @size = size
      end
    end

    class Enum
      attr_reader :name, :fields

      def initialize(node, parser)
        @name = node.attr('name')
        @fields = parser.parse_fields(node.children).first

        # fill in the enum values for all fields
        prev_value = 0
        @fields.each do |field|
          field.name = "#{@name}#{field.name}"
          if field.value.nil?
            prev_value += 1
            field.value = prev_value
          else
            prev_value = field.value
          end
        end
      end
    end

    class Struct
      attr_reader :name, :fields

      def initialize(node, parser)
        @name = node.attr('name')
        @fields = parser.parse_fields(node.children).first
      end
    end

    class Union
      attr_reader :name, :fields

      def initialize(node, parser)
        @name = node.attr('name')
        @fields = parser.parse_fields(node.children).first
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
    end

    class Request
      attr_reader :name, :opcode, :fields, :reply

      def initialize(node, parser)
        @name = node.attr('name')
        @opcode = node.attr('opcode')

        @fields = [AutoField.new('major_opcode', parser.get_type(:CARD8))]

        f, @reply = parser.parse_fields(node.children)
        @reply.name = name unless @reply.nil?

        if parser.current_namespace.extension?
          @fields << AutoField.new('minor_opcode', parser.get_type(:CARD8))
        else
          # For non-extension requests the first item in the fields list gets
          # inserted between the two auto-generated fields. WTF. WTF. WTF.
          v = f.shift
          if v == nil
            v = PadField.new(1, parser.get_type(:CARD8), 0)
          end

          @fields << v
        end
        @fields << AutoField.new('length', parser.get_type(:CARD16))

        @fields << f
        @fields.flatten!
      end

      def reply?
        !reply.nil?
      end
    end

    class Reply
      attr_reader :fields
      attr_accessor :name

      def initialize(node, parser)
        @fields = [AutoField.new('response_type', parser.get_type(:CARD8))]

        # Handle the stupid auto-fields crap where the 2nd auto field can
        # get replaced with the first parsed item. Again, WTF.          
        f = parser.parse_fields(node.children).first
        v = f.shift
        if v == nil
          @fields << PadField.new(1, parser.get_type(:CARD8), 0)
        else
          @fields << v
        end

        @fields << [AutoField.new('sequence', parser.get_type(:CARD16)),
            AutoField.new('length', parser.get_type(:CARD32))]
        @fields << f

        @fields.flatten!
      end
    end

    class Namespace
      attr_reader :name, :header, :imports, :types, :events, :errors, :requests
      attr_reader :major_version, :minor_version

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