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

      def print(str = '')
        @file.iputs(@indent, str)
      end

      def process
        @namespaces.values.each do |ns|
          next unless ns.header == 'xproto'

          puts "Generating #{@out_dir}/#{ns.header}.rb"

          @indent = 0
          @file = File.open("#{@out_dir}/#{ns.header}.rb", "w")

          print("#")
          print("# This file was auto-generated. Do not edit.")
          print("#")
          print('')

          print("require 'xrb/generic_types'")

          ns.imports.each do |import|
            print("require 'xrb/#{import}'")
          end
          print('') unless ns.imports.empty?

          print("module Xrb")
          inc

          if ns.name != 'Xcb'
            print("module #{ns.name}")
            inc
          end

          if ns.extension?
            print("MAJOR_VERSION = #{ns.major_version}")
            print("MINOR_VERSION = #{ns.minor_version}")
          end

          Type.new(ns.types, self).process
          Event.new(ns.events, self).process
          Error.new(ns.errors, self).process
          Request.new(ns.requests, self).process

          dec
          print("end") unless ns.name == 'Xcb'

          @indent = 0
          print("end")
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
          @p.print("#{field.name} = " +
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
            if (respond_to?(meth))
              send(meth, type)
            else
              process_type(type)
            end
          end
        end

        def process_type(type)
          @p.print("class #{@p.type_name(type.name)} < Xrd::Message")
          @p.inc do
            @p.print("layout \\")
            @p.inc(4) { Field.new(type.fields, @p).process }
          end
          @p.print("end")
        end

        def process_union(type)
          @p.print("class #{@p.type_name(type.name)}")
          @p.inc do
            @p.print("union \\")
            @p.inc(4) { Field.new(type.fields, @p).process }
          end
          @p.print("end")
        end

        def process_enum(type)
          @p.print("class #{@p.type_name(type.name)}")
          @p.inc { Field.new(type.fields, @p).process }
          @p.print("end")
        end

        def process_array(values)
          type_name = @p.type_name(values.first).to_sym
          type = values.last

          @p.cardinals[type_name] = @p.cardinals[type.name]

          @p.print("class #{type_name}")
          @p.inc do
            @p.print('attr_accessor :id')
            @p.print
            @p.print('def to_wire')
            @p.inc do
              @p.print("[id].pack('#{@p.cardinals[type_name].directive}')")
            end
            @p.print('end')
          end
          @p.print("end")
        end
      end

      class Event
        def initialize(events, printer)
          @p = printer
          @data = events
        end

        def process
          @p.print("module Event")
          @p.inc do
            @data.each do |type|
              process_event(type)
            end
          end
          @p.print("end")
        end

        def process_event(type)
          type.names.each_with_index do |name, idx|
            @p.print("class #{@p.type_name(name)} < Xrb::Message")
            @p.inc do
              @p.print("OPCODE = #{type.opcodes[idx]}")
              @p.print
              @p.print("layout \\")
              @p.inc(4) { Field.new(type.fields, @p).process }
            end
            @p.print("end")
          end
        end
      end

      class Error
        def initialize(errors, printer)
          @p = printer
          @data = errors
        end

        def process
          @p.print("module Error")
          @p.inc do
            @data.each do |type|
              process_event(type)
            end
          end
          @p.print("end")
        end

        def process_event(type)
          type.names.each_with_index do |name, idx|
            @p.print("class #{@p.type_name(name)} < Xrb::Message")
            @p.inc do
              @p.print("OPCODE = #{type.opcodes[idx]}")
              @p.print
              @p.print("layout \\")
              @p.inc(4) { Field.new(type.fields, @p).process }
            end
            @p.print("end")
          end
        end
      end

      class Request
        def initialize(requests, printer)
          @p = printer
          @data = requests
        end

        def process
          @p.print("module Request")
          @p.inc do
            @data.each do |type|
              process_request(type)
            end
          end
          @p.print("end")

          @p.print("module Reply")
          @p.inc do
            @data.each do |type|
              next unless type.reply?
              Reply.new(type.reply, @p).process
            end
          end
          @p.print("end")
        end

        def process_request(type)
          @p.print("class #{@p.type_name(type.name)} < Xrb::Message")
          @p.inc do
            @p.print("OPCODE = #{type.opcode}")
            @p.print
            @p.print("layout \\")
            @p.inc(4) { Field.new(type.fields, @p).process }
          end
          @p.print("end")
          @p.print
          @p.print("class #{@p.type_name(type.name)}Cookie < Xrd::Message")
          @p.inc { @p.print("layout :sequence, :int") }
          @p.print("end")
          @p.print
        end
      end

      class Reply
        def initialize(reply, printer)
          @p = printer
          @data = reply
        end

        def process
          @p.print("class #{@p.type_name(@data.name)} < Xrb::Message")
          @p.inc do
            @p.print("layout \\")
            @p.inc(4) { Field.new(@data.fields, @p).process }
          end
          @p.print("end")
        end
      end
    end
  end
end