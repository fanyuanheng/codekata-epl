require 'spec_helper'
require 'parser'

describe Parser do
  it "should return all teams" do
    teams = Parser.parse "#{File.dirname(__FILE__)}/../data/football.dat"
    teams.size.should == 20
  end
end