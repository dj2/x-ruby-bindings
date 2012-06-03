class Xrb
  class Generator
    class Field
      def initialize(node, type)
        @name = node.attr('name')
        @type = type        
        @enum = node.attr('enum')
        @altenum = node.attr('altenum')
        @mask = node.attr('mask')
      end

      def enum?
        @enum.nil?
      end

      def altenum?
        @altenum.nil?
      end

      def mask?
        @mask.nil?
      end

      def to_s(indent = 0)
        "#{' ' * indent}Field #{@name} #{@type}"
      end
    end

    class AutoField
      attr_reader :name, :type

      def initialize(name, type)
        @name = name
        @type = type
      end

      def to_s(indent = 0)
        "#{' ' * indent}AutoField #{@name} #{@type}"
      end
    end

    class PadField
      def initialize(bytes, type, idx)
        @name = 'pad'
        @type = type
        @index = idx
        @bytes = bytes
      end

      def to_s(indent = 0)
        "#{' ' * indent}pad#{@index} #{@bytes}"
      end
    end

    class ItemField
      def initialize(node)
        @name = node.attr('name')

        node.children.each do |child|
          next unless child.element?

          @value = child.inner_text.to_i
          @type = child.name.to_sym

          puts "Unknown data #{@type}" unless [:value, :bit].include?(@type)
        end
      end

      def to_s(indent = 0)
        "#{' ' * indent}Item #{@name} (#{@type} #{@value})"
      end
    end

    class ValueParamField
      def initialize(node, parser)
        @name = node.attr('value-list-name')
        @type = parser.get_type(:CARD32)

        @field_name = node.attr('value-mask-name')
        @field_type = parser.get_type(node.attr('value-mask-type'))
      end

      def to_s(indent = 0)
        "#{' ' * indent}ValueParam #{@name} [#{@field_name} #{@field_type}]"
      end
    end

    class ExprField
      def initialize(node, parser)
        @name = node.attr('name')
        @type = parser.get_type(node.attr('type'))
        @members = parser.parse_list(node.children)
      end

      def to_s(indent = 0)
        str = ["#{' ' * indent}Expr #{@name}"]
        @members.each { |m| str << m.to_s(indent + 2) }
        str.join("\n")
      end
    end

    class SwitchField
      def initialize(node, parser)
        @name = node.attr('name')
        @members = parser.parse_list(node.children)
      end

      def to_s(indent = 0)
        str = ["#{' ' * indent}Switch #{@name}"]
        @members.each { |m| str << m.to_s(indent + 2) }
        str.join("\n")
      end
    end

    class ListField
      def initialize(node, parser)
        @name = node.attr('name')
        @field_name = "#{@name}_len"
        @field_type = parser.get_type(:CARD32)
        @members = parser.parse_list(node.children)
      end

      def to_s(indent = 0)
        str = ["#{' ' * indent}List #{@name}"]
        @members.each { |m| str << m.to_s(indent + 2) }
        str.join("\n")
      end
    end

    class FieldRefField
      attr_reader :name

      def initialize(name)
        @name = name
      end

      def to_s(indent = 0)
        "#{' ' * indent}FieldRef #{@name}"
      end
    end

    class OpField
      def initialize(node, parser)
        @name = node.attr('op')
        @members = parser.parse_list(node.children)
      end

      def to_s(indent = 0)
        str = ["#{' ' * indent}OpField #{@name}"]
        @members.each { |m| str << m.to_s(indent + 2) }
        str.join("\n")
      end
    end

    class UnopField
      def initialize(node, parser)
        @name = node.attr('op')
        @members = parser.parse_list(node.children)
      end

      def to_s(indent = 0)
        str = ["#{' ' * indent}UnopField #{@name}"]
        @members.each { |m| str << m.to_s(indent + 2) }
        str.join("\n")
      end
    end

    class ValueField
      def initialize(size)
        @name = :value
        @size = size
      end

      def to_s(indent = 0)
        "#{' ' * indent}ValueField #{@size}"
      end
    end

    class PopcountField
      def initialize(node, parser)
        @name = :popcount
        @members = parser.parse_list(node.children)
        @field_name = @members.first.name
      end

      def to_s(indent = 0)
        str = ["#{' ' * indent}PopcountField #{@field_name}"]
        @members.each { |m| str << m.to_s(indent + 2) }
        str.join("\n")
      end
    end

    class BitcaseField
      def initialize(node, parser)
        @members = parser.parse_fields(node.children)
      end

      def to_s(indent = 0)
        str = ["#{' ' * indent}BitcaseField"]
        @members.each { |m| str << m.to_s(indent + 2) }
        str.join("\n")
      end
    end

    class EnumRefField
      def initialize(node, parser)
        @name = :enumref 
        @field_name = node.attr('ref')
        @field_value = node.inner_text
      end

      def to_s(indent = 0)
        "#{' ' * indent}EnumRefField [#{@field_name} #{@field_value}]"
      end
    end

    class SumOfField
      def initialize(node, parser)
        @name = :sumof
        @field_name = node.attr('ref')
      end

      def to_s(indent = 0)
        "#{' ' * indent}SumOfField #{@field_name}"
      end
    end
  end
end