$LOAD_PATH << File.expand_path(File.join(File.dirname(__FILE__), "..", "src"))

require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new