require 'nokogiri'
require 'fileutils'
require 'pp'

require 'xrb/generator/parser'

class String
  # from Rails ActiveSupport underscore method
  def camel_case
    return 'char2b' if self.downcase == 'char2b'

    self.gsub(/::/, '/').
        gsub(/([A-Z]+)([A-Z][a-z])/,'\1_\2').
        gsub(/([a-z])([A-Z])/,'\1_\2').
        gsub(/([a-z])(\d)/,'\1_\2').
        tr("-", "_").
        downcase
  end
end

module XRB
  class Generator
    def initialize(in_dir, out_dir)
      @in_dir = in_dir
      @out_dir = out_dir

      @types = {}
      @namespaces = {}
    end

    def generate
      FileUtils.mkdir_p(@out_dir)

      parser = Xrb::Generator::Parser.new(@types, @namespaces, @in_dir)
      parser.process

      @namespaces.each_pair do |name, ns|
        File.open("#{@out_dir}/#{ns.header}.rb", "w") do |f|
          process(f, ns)
        end
      end
    end

    def process(file, ns)
      file.puts("#")
      file.puts("# This file auto-generated. Do not edit.")
      file.puts("#")
      file.puts('')

      file.puts("require 'ffi'")
      ns.imports.each do |import|
        file.puts("require 'xrb/#{import}'")
      end

      indent = 2
      file.puts "class Xrb"

      if ns.name != 'Xcb'
        file.puts "#{' ' * indent}class #{ns.name}"
        indent += 2
      end

      file.puts "#{' ' * indent}extend FFI::Library"
      file.puts "#{' ' * indent}ffi_lib '" +
        (ns.name == 'Xcb' ? 'xcb' : ns.header) + "'"

      if ns.extension?
        file.puts("#{' ' * indent}MAJOR_VERSION = #{ns.major_version}")
        file.puts("#{' ' * indent}MINOR_VERSION = #{ns.minor_version}")
      end

      ns.types.each { |type| file.puts(type.to_ffi(indent)) }
      ns.events.each { |event| file.puts(event.to_ffi(indent)) }
      ns.errors.each { |error| file.puts(error.to_ffi(indent)) }
      ns.requests.each { |request| file.puts(request.to_ffi(indent)) }

      indent -= 2
      file.puts "#{' ' * indent}end" unless ns.name == 'Xcb'
      file.puts "end"
    end
  end
end
