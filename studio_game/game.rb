require_relative 'player'
require_relative 'die'

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
        case Die.new.roll
        when 1..2
            p.blam
        when 5..6
            p.w00t
        end
        puts p
    end
  end
end
