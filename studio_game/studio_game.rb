class Player
  attr_reader :health
  attr_accessor :name
  
  def initialize name, health=100
    @name = name.capitalize
    @health = health
  end

  def w00t
    @health = @health + 15
    puts "#{name} got w00ted!"
  end

  def blam
    @health = @health - 10
    puts "#{name} got blammed!"
  end
  
  def score 
    @health + @name.chars.count
  end

  def to_s
    "I'm #{@name} with a score of #{score}."
  end
end

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

player1 = Player.new("larry")
player2 = Player.new("moe")
player3 = Player.new("curly", 125)


knuckleheads = Game.new("Knuckleheads")
knuckleheads.add_player(player1)
knuckleheads.add_player(player2)
knuckleheads.add_player(player3)
knuckleheads.play
