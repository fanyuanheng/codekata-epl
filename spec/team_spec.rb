require 'spec_helper'
require 'team'

describe Team do
  it "should return goal difference" do
    team = Team.new "Manchester_U", 80, 30
    team.goal_difference.should == 50
  end
end