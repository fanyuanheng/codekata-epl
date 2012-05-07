class Parser
  def self.parse file
    teams = []
    File.open(file).each_line do |line|
      /\s*\d+.\s(?<name>\w*)\s*\d*\s*\d*\s*\d*\s*\d*\s*(?<goal_scored>\d*)\s*-\s*(?<goal_conceded>\d*).*/ =~ line
      teams << Team.new(name, goal_scored, goal_conceded) if (name && goal_scored && goal_conceded)
    end
    teams
  end
end