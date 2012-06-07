require 'nokogiri'
require 'fileutils'

require 'xrb/generator/parser'
require 'xrb/generator/ruby_printer'

class String
  # from Rails ActiveSupport underscore method
  def underscore
    self.gsub(/::/, '/').
        gsub(/([A-Z]+)([A-Z][a-z])/, '\1_\2').
        gsub(/([a-z])([A-Z])/, '\1_\2').
        gsub(/([a-z])(\d)/, '\1_\2').
        tr("-", "_").
        downcase
  end

  def camel_case
    ('_' + self).gsub(/_([a-z])/) { |b| b[1..1].upcase }
  end
end

module Xrb
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

      printer = Xrb::Generator::RbPrinter.new(@namespaces, @out_dir)
      printer.process
    end
  end
end
