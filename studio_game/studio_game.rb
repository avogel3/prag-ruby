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

player1 = Player.new("larry")

player2 = Player.new("moe")

player3 = Player.new("curly", 125)

players = [player1, player2, player3]
puts "There are #{players.count} players in the game:"

players.each do |p|
  p.blam
  p.w00t
  p.w00t
  puts p
end

players.pop
players << Player.new("shemp", 90)
puts players
