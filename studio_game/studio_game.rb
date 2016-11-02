class Player
  attr_reader :health
  attr_accessor :name
  
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
  
  def score 
    @health + @name.chars.count
  end

  def to_s
    "I'm #{@name} with a score of #{score}."
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

puts player1.to_s
puts player2.to_s
puts player3.to_s
