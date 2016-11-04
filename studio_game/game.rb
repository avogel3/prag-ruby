require_relative 'player'
require_relative 'die'
require_relative 'game_turn'

class Game
  attr_reader :title
  def initialize(title)
    @title = title
    @players = []
  end

  def add_player player
    @players << player 
  end

  def play
    puts "There are #{@players.count} in #{@title}: "
    @players.each do |p|
        GameTurn.take_turn p
        puts p
    end
  end
end
