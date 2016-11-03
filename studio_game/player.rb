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

    def strong?
        @health > 100
    end

  def to_s
    "I'm #{@name} with a score of #{score}."
  end
end

