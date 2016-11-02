require_relative 'player'

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
        puts p
        p.w00t
        p.blam
        p.blam
        puts p
    end
  end
end
