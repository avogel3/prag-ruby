require_relative 'player'
require_relative 'die'
require_relative 'game_turn'
require_relative 'treasure_trove'

class Game
  attr_reader :title
  def initialize(title)
    @title = title
    @players = []
  end

  def add_player player
    @players << player
  end

  def play(rounds)
    puts "There are #{@players.count} in #{@title}: "

    treasures = TreasureTrove::TREASURES
    puts "\nThere are #{treasures.count} treasures to be found: "
    treasures.each do |treasure|
      puts "A #{treasure.name} is worth #{treasure.points} points."
    end

    1.upto(rounds) do |round|
      puts "\nRound #{round}:"
      @players.each do |p|
          GameTurn.take_turn p
          puts p
      end
    end
  end

  def print_name_and_health(player)
    puts "#{player.name} (#{player.health})"
  end

  def print_stats
    @players.each do |player|
        puts "\n#{player.name}'s point totals: "
        puts "#{player.points} grand total points"
    end

    strong, wimpy = @players.partition { |player| player.strong? }
    puts "\n#{@title} Statistics:"
    puts "\n#{strong.count} strong players:"
    strong.each { |player| print_name_and_health(player) }

    puts "\n#{wimpy.count} wimpy players:"
    wimpy.each { |player| print_name_and_health(player) }

    puts "\nHigh Scores:"
    @players.sort.each do |player|
      formatted_name = player.name.ljust(20, '.')
      puts "#{formatted_name} #{player.score}"
    end
  end
end
