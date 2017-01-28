class Movie
  attr_accessor :title, :rank #attr_reader :title, :rank, attr_writer :title

  def initialize title, rank=0
    @title = title.capitalize
    @rank = rank 
    @snack_carbs = Hash.new(0)
  end


  def carbs_consumed
    @snack_carbs.values.reduce(0, :+)
  end

  def ate_snack snack
    @snack_carbs[snack.name] += snack.carbs
    puts "#{@title} led to #{snack.carbs} #{snack.name} being consumed." 
    puts "#{@title}'s snacks: #{@snack_carbs}"
  end
  
  def thumbs_up
    @rank = @rank + 1
  end

  def normalize_rank
    @rank / 10
  end

  def thumbs_down
    @rank = @rank - 1
  end
 
  def hit?
    @rank >= 10
  end
    
  def status
    hit? ? 'Hit' : 'Flop'
  end

  def listing
    "#{@title} has a rank of #{@rank}"
  end

  def <=>(other_movie)
    other_movie.rank <=> @rank
  end

  # by calling puts Movie, ruby automatically looks for the ot_s to 'convet objec to string
  def to_s
    "#{@title} has a rank of #{rank} (#{status})"
  end
  
  def each_snack
    @snack_carbs.each do |name, carbs|
      snack = Snack.new(name, carbs)
      yield snack
    end

  end

end

# if movie is currently being ran directly
if __FILE__ == $0
    #do something in here
end
