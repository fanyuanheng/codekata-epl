class Team
  attr_accessor :name, :goal_scored, :goal_conceded

  def initialize name, goal_scored, goal_conceded
    @name = name
    @goal_scored = goal_scored
    @goal_conceded = goal_conceded
  end

  def goal_difference
    (goal_scored.to_i - goal_conceded.to_i).abs
  end
end