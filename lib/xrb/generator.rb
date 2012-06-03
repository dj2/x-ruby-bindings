require 'nokogiri'
require 'fileutils'
require 'pp'

require 'xrb/generator/parser'

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

      display
    end

    def display
      @types.each_pair do |key, value|
        puts "#{key} => \n"
        puts value.to_s(2)
      end
    end
  end
end
