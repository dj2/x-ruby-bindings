module Xrb
  class Generator
    class Field
      attr_reader :name, :type

      def initialize(node, type)
        @name = node.attr('name')
        @type = type        
        @enum = node.attr('enum')
        @altenum = node.attr('altenum')
        @mask = node.attr('mask')
      end
    end

    class AutoField
      attr_reader :name, :type

      def initialize(name, type)
        @name = name
        @type = type
      end
    end

    class PadField
      attr_reader :name, :bytes, :index, :type

      def initialize(bytes, type, idx)
        @name = :pad
        @type = type
        @index = idx
        @bytes = bytes
      end
    end

    class ItemField
      attr_accessor :name, :value, :type

      def initialize(node)
        @name = node.attr('name')

        node.children.each do |child|
          next unless child.element?

          @value = child.inner_text.to_i
          @type = child.name.to_sym

          puts "Unknown data #{@type}" unless [:value, :bit].include?(@type)
        end
      end
    end

    class ValueParamField
      attr_reader :name, :type, :list_name

      def initialize(node, parser)
        @list_name = node.attr('value-list-name')
        @name = node.attr('value-mask-name')
        @type = parser.get_type(node.attr('value-mask-type'))
      end
    end

    class ExprField
      def initialize(node, parser)
        @name = node.attr('name')
        @type = parser.get_type(node.attr('type'))
        @members = parser.parse_list(node.children)
      end
    end

    class SwitchField
      def initialize(node, parser)
        @name = node.attr('name')
        @members = parser.parse_list(node.children)
      end
    end

    class ListField
      attr_reader :name, :members, :type

      def initialize(node, parser)
        @name = node.attr('name')
        @type = parser.get_type(node.attr('type'))
        @members = parser.parse_list(node.children)
      end
    end

    class FieldRefField
      attr_reader :name

      def initialize(name)
        @name = name
      end
    end

    class OpField
      def initialize(node, parser)
        @name = node.attr('op')
        @members = parser.parse_list(node.children)
      end
    end

    class UnopField
      def initialize(node, parser)
        @name = node.attr('op')
        @members = parser.parse_list(node.children)
      end
    end

    class ValueField
      attr_reader :size

      def initialize(size)
        @name = :value
        @size = size
      end
    end

    class PopcountField
      def initialize(node, parser)
        @name = :popcount
        @members = parser.parse_list(node.children)
        @field_name = @members.first.name
      end
    end

    class BitcaseField
      def initialize(node, parser)
        @members = parser.parse_fields(node.children)
      end
    end

    class EnumRefField
      def initialize(node, parser)
        @name = :enumref 
        @field_name = node.attr('ref')
        @field_value = node.inner_text
      end
    end

    class SumOfField
      def initialize(node, parser)
        @name = :sumof
        @field_name = node.attr('ref')
      end
    end
  end
end