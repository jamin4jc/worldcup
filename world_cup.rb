require 'date'

class Team
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def summary
    name
  end
end

class Game
  attr_accessor :home_team, :away_team, :date

  def initialize(home_team, away_team, date)
    @home_team = home_team
    @away_team = away_team
    @date = date
  end

  def summary
    home_team.name + " vs " + away_team.name + " on " + date.to_s
  end
end

class GroupF
  attr_reader :games
  attr_reader :teams

  def initialize
    sweden = Team.new('Sweden')
    mexico = Team.new('Mexico')
    south_korea = Team.new('South Korea')
    germany = Team.new('Germany')

    @teams = []
    teams << sweden
    teams << mexico
    teams << south_korea
    teams << germany

    @games = []
    games << Game.new(germany, mexico, Date.new(2018, 6, 17))
    games << Game.new(sweden, south_korea, Date.new(2018, 6, 18))
    games << Game.new(south_korea, mexico, Date.new(2018, 6, 23))
    games << Game.new(germany, sweden, Date.new(2018, 6, 23))
    games << Game.new(mexico, sweden, Date.new(2018, 6, 27))
    games << Game.new(south_korea, germany, Date.new(2018, 6, 27))
  end

  def teams_summary
    teams.each { |team| puts team.summary }
  end

  def games_summary
    games.each { |game| puts game.summary }
  end
end


groupF = GroupF.new

puts "Teams:"
groupF.teams_summary

puts "Games:"
groupF.games_summary
