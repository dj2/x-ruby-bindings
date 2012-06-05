$: << './lib'

require 'bundler'
Bundler::GemHelper.install_tasks

require 'yard'

desc 'Generate the XCB bindings'
task :generate do
  `bin/generate`
end

desc 'Generate documentation'
YARD::Rake::YardocTask.new do |t|
  t.files   = ['lib/**/*.rb', '-', 'LICENSE']
  t.options = ['--main', 'README.md', '--no-private']
end
task :doc => [:yard]
