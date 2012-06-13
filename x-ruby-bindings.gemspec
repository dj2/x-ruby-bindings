$:.push File.expand_path("../lib", __FILE__)
require 'xrb/version'

Gem::Specification.new do |s|
  s.name = 'x-ruby-bindings'
  s.version = XRB::VERSION
  s.platform = Gem::Platform::RUBY
  s.authors = ['dan sinclair']
  s.email = ['dj2@everburning.com']
  s.homepage = 'https://github.com/dj2/Dim/'
  s.summary = 'Ruby X11 Bindings'
  s.description = s.summary

  s.required_ruby_version = '>=1.9.2'

  s.add_development_dependency 'nokogiri'
  s.add_development_dependency 'yard'
  s.add_development_dependency 'redcarpet'

  ignores = File.readlines(".gitignore").grep(/\S+/).map { |i| i.chomp }
  ignores << 'lib/xrb/generator.rb'
  ignores << Dir['lib/xrb/generator/*']
  ignores.flatten!

  dotfiles = [".gitignore", ".yardopts"]

  s.files = dotfiles + Dir["**/*"].reject do |f|
    File.directory?(f) || ignores.any? { |i| File.fnmatch(i, f) }
  end
  s.test_files = s.files.grep(/^test\//)
  s.require_paths = ['lib']
end
