class Player
  def initialize name, health=100
    @name = name.capitalize
    @health = health
  end

  def w00t
    @health = @health + 15
  end

  def blam
    @health = @health - 10
  end

  def to_s
    "I'm #{@name} with a health of #{@health}."
  end
end

player1 = Player.new("larry")
puts player1

player2 = Player.new("moe")
puts player2

player3 = Player.new("curly", 125)
puts player3
player3.blam
puts player3
player3.w00t
puts player3
