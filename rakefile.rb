$LOAD_PATH << File.expand_path(File.join(File.dirname(__FILE__), "src"))

require 'rspec/core/rake_task'
require 'parser'
require 'team'

RSpec::Core::RakeTask.new

namespace :analysis do
  desc "Print the name of the team with the smallest difference in <for> and <against> goals"
  task :min_gd, :file do |task, args|
    raise "file not specified!" if args[:file].nil?
    teams = Parser.parse args[:file]
    teams.sort! { |a,b| a.goal_difference <=> b.goal_difference }
    puts teams.first.name
  end
end