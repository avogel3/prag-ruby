class Movie
  attr_accessor :title, :rank #attr_reader :title, :rank, attr_writer :title

  def initialize title, rank
    @title = title.capitalize
    @rank = rank 
    "Created a movie object with title #{title} and rank #{rank}" 
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
 
  def listing
    "#{@title} has a rank of #{@rank}"
  end

  # by calling puts Movie, ruby automatically looks for the ot_s to 'convet objec to string
  def to_s
    "#{@title} has a rank of #{rank}"
  end
end

# if movie is currently being ran directly
if __FILE__ == $0
    #do something in here
end