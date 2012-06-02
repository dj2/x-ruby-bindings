$: << './lib'

require 'bundler'
Bundler::GemHelper.install_tasks

require 'yard'
require 'xrb/generator'

XRB_OUT_DIR = "#{File.dirname(__FILE__)}/lib/xrb"
XCB_IN_DIR = '/usr/share/xcb'

desc 'Generate the XCB bindings'
task :generate do
  XRB::Generator.new(XCB_IN_DIR, XRB_OUT_DIR).generate
end

desc 'Generate documentation'
YARD::Rake::YardocTask.new do |t|
  t.files   = ['lib/**/*.rb', '-', 'LICENSE']
  t.options = ['--main', 'README.md', '--no-private']
end
task :doc => [:yard]
