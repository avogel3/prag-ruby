require_relative 'player'
require_relative 'die'

module GameTurn
    def self.take_turn(player)
        case Die.new.roll
        when 1..2
            player.blam
        when 3..4
            puts "#{player.name} was skipped."
        else
            player.w00t
        end
    end
end
