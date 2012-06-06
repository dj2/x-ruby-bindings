require 'xrb/generator/fields'

class Xrb
  class Generator
    class Type
      attr_reader :name, :size

      def initialize(name, opts = {})
        @name = name

        if (opts.is_a?(Hash))
          @size = opts[:size]
          @ffi_name = opts[:ffi_name]
        else
          @type = opts
          @size = opts.size
        end
      end

      def fixed_size?
        true
      end

      def ffi_name
        return @ffi_name unless @ffi_name.nil?
        ":#{@name.downcase}_t"
      end

      def to_ffi(indent = 0)
        out = ["#{' ' * indent}typedef #{@type.ffi_name}, #{ffi_name}"]

        n = name
        n = name.downcase.capitalize if name =~ /^[A-Z0-9]+$/

        out << "#{' ' * indent}class #{n}Iterator < FFI::Struct"
        out << "#{' ' * (indent + 2)}layout \\"
        out << "#{' ' * (indent + 6)}:data, :window_t,"
        out << "#{' ' * (indent + 6)}:rem, :int,"
        out << "#{' ' * (indent + 6)}:indent, :int"
        out << "#{' ' * indent}end"
        out << "#{' ' * indent}attach_function :#{name.to_s.camel_case}_next, :xcb_#{name.to_s.camel_case}_next, [:pointer], :void"
        out << "#{' ' * indent}attach_function :#{name.to_s.camel_case}_end, :xcb_#{name.to_s.camel_case}_end, [:pointer], GenericIterator"

        out.join("\n")
      end

      def to_s(indent = 0)
        "#{' ' * indent}#{@name} #{@opts || @type}"
      end
    end

    class Enum
      attr_reader :name, :fields

      def initialize(node, parser)
        @name = node.attr('name')
        @fields = parser.parse_fields(node.children).first
      end

      def fixed_size?
        true
      end

      def ffi_name
        ":#{@name.camel_case}_t"
      end

      def to_ffi(indent = 0)
        out = []

        prev_value = 0
        field_list = []
        @fields.each do |field|
          if field.value.nil?
            prev_value += 1
            field.value = prev_value
          else
            prev_value = field.value
          end

          field_list << "#{' ' * indent}#{field.to_ffi(@name)}"
        end
        field_list.delete_if { |x| x == nil }

        out << field_list.join("\n")
        out.join("\n")
      end

      def to_s(indent = 0)
        str = ["#{' ' * indent}XRB::Enum -- #{@name}"]
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

      def size
        return 0 unless fixed_size?
        0
      end

      def fixed_size?
        fields.each { |f| return false unless f.fixed_size? }
        false
      end

      def ffi_name
        n = name
        n = name.downcase.capitalize if name =~ /^[A-Z0-9]+$/
        n
      end

      def to_ffi(indent = 0)
        out = []
        out << "#{' ' * indent}class #{ffi_name} < FFI::Struct"
        out << "#{' ' * (indent + 2)}layout \\"

        field_list = []
        fields.each do |field|
          field_list << field.to_ffi(indent + 6)
        end
        field_list.delete_if { |x| x == nil }
        out << field_list.join(",\n")

        out << "#{' ' * indent}end"
        out << ""

        out << "#{' ' * indent}class #{ffi_name}Iterator < FFI::Struct"
        out << "#{' ' * (indent + 2)}layout \\"
        out << "#{' ' * (indent + 6)}:data, :pointer,"
        out << "#{' ' * (indent + 6)}:rem, :int,"
        out << "#{' ' * (indent + 6)}:indent, :int"
        out << "#{' ' * indent}end"
        out << "#{' ' * indent}attach_function :#{name.camel_case}_next, :xcb_#{name.camel_case}_next, [:pointer], :void"
        out << "#{' ' * indent}attach_function :#{name.camel_case}_end, :xcb_#{name.camel_case}_end, [:pointer], GenericIterator"

        lists = []
        fields.each { |f| lists << f if f.is_a?(ListField) }
        
        if !lists.empty?
          out << "#{' ' * indent}attach_function :#{name.camel_case}_sizeof, :xcb_#{name.camel_case}_sizeof, [:pointer], :int"

          lists.each do |list|
            rn = "#{name.camel_case}_#{list.name.camel_case}"
            n = ":xcb_#{rn}"

            if list.fixed_size?
              out << "#{' ' * indent}attach_function :#{rn}, #{n}, [:pointer], :pointer"
            else
              out << "#{' ' * indent}attach_function :#{rn}_iterator, #{n}_iterator, [:pointer], #{ffi_name}Iterator"
            end
            out << "#{' ' * indent}attach_function :#{rn}_length, #{n}_length, [:pointer], :int"
          end
        end

        "#{out.join("\n")}\n"
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

      def fixed_size?
        true
      end

      def ffi_name
        n = name
        n = name.downcase.capitalize if name =~ /^[A-Z0-9]+$/
        n
      end

      def to_ffi(indent = 0)
        out = []
        out << "#{' ' * indent}class #{ffi_name} < FFI::Union"
        out << "#{' ' * (indent + 2)}layout \\"

        field_list = []
        fields.each do |field|
          field_list << field.to_ffi(indent + 6)
        end
        field_list.delete_if { |x| x == nil }
        out << field_list.join(",\n")

        out << "#{' ' * indent}end"
        out << ""
        "#{out.join("\n")}\n"
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

      def ffi_name(name)
        n = name
        n = name.downcase.capitalize if name =~ /^[A-Z0-9]+$/
        "#{n}Error"
      end

      def to_ffi(indent = 0)
        out = []
        names.each do |name|
           out << "#{' ' * indent}class #{ffi_name(name)} < FFI::Struct"
          out << "#{' ' * (indent + 2)}layout \\"

          field_list = []
          fields.each do |field|
            field_list << field.to_ffi(indent + 6)
          end
          field_list.delete_if { |x| x == nil }
          out << field_list.join(",\n")

          out << "#{' ' * indent}end"
          out << ""
        end
        "#{out.join("\n")}\n"
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

      def ffi_name(name)
        n = name
        n = name.downcase.capitalize if name =~ /^[A-Z0-9]+$/
        "#{n}Event"
      end

      def to_ffi(indent = 0)
        out = []
        names.each do |name|
          out << "#{' ' * indent}class #{ffi_name(name)} < FFI::Struct"
          out << "#{' ' * (indent + 2)}layout \\"

          field_list = []
          fields.each do |field|
            field_list << field.to_ffi(indent + 6)
          end
          field_list.delete_if { |x| x == nil }
          out << field_list.join(",\n")

          out << "#{' ' * indent}end"
          out << ""
        end
        "#{out.join("\n")}\n"
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

      def base_ffi_name
        n = name
        n = name.downcase.capitalize if name =~ /^[A-Z0-9]+$/
        n
      end

      def ffi_name
        "#{base_ffi_name}Request"
      end

      def to_ffi(indent = 0)
        out = []
        out << "#{' ' * indent}class #{ffi_name} < FFI::Struct"
        out << "#{' ' * (indent + 2)}layout \\"

        field_list = []
        fields.each do |field|
          field_list << field.to_ffi(indent + 6)
        end
        field_list.delete_if { |x| x == nil }
        out << field_list.join(",\n")

        out << "#{' ' * indent}end"
        out << ""

        body = [":pointer"]
        fields.each_with_index do |field, idx|
          next if field.is_a?(PadField)
          next if idx == 0 || idx == 2

          body << field.type.ffi_name
          if field.is_a?(ValueParamField)
            body << ":pointer"
          end
        end

        out << "#{' ' * indent}class #{base_ffi_name}Cookie < FFI::Struct"
        out << "#{' ' * (indent + 2)}layout \\"
        out << "#{' ' * (indent + 6)}:sequence, :int"
        out << "#{' ' * indent}end"

        if @reply.nil?
          str = "#{' ' * indent}attach_function :#{name.camel_case}_checked, :xcb_#{name.camel_case}_checked, "
          str << "[#{body.join(",")}], #{base_ffi_name}Cookie"
          out << str
        end

        str = "#{' ' * indent}attach_function :#{name.camel_case}, :xcb_#{name.camel_case}, "
        str << "[#{body.join(",")}], #{base_ffi_name}Cookie"
        out << str

        out << reply.to_ffi(indent) unless reply.nil?

        "#{out.join("\n")}\n"
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

      def parent_ffi_name
        n = name
        n = name.downcase.capitalize if name =~ /^[A-Z0-9]+$/
        n
      end

      def ffi_name
        "#{parent_ffi_name}Reply"
      end

      def to_ffi(indent = 0)
        out = []
        out << "#{' ' * indent}class #{ffi_name} < FFI::Struct"
        out << "#{' ' * (indent + 2)}layout \\"

        field_list = []
        fields.each do |field|
          field_list << field.to_ffi(indent + 6)
        end
        field_list.delete_if { |x| x == nil }
        out << field_list.join(",\n")

        out << "#{' ' * indent}end"
        out << ""
        out << "#{' ' * indent}attach_function :#{name.camel_case}_reply, :xcb_#{name.camel_case}_reply, [:pointer, #{parent_ffi_name}Cookie, :pointer], :pointer

        "#{out.join("\n")}"
      end

      def to_s(indent = 0)
        str = ["#{' ' * indent}Reply"]
        @fields.each { |f| str << f.to_s(indent + 2) }
        str.join("\n")
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