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
    "#{@title} has a rank of #{normalize_rank}"
  end
end

movie1 = Movie.new("goonies", 10)
puts movie1

movie2 = Movie.new("ghostbusters", 9)
movie2.thumbs_down
puts movie2

movie3 = Movie.new("goldfinger", 8)
puts movie3
puts movie3.title

movie1.title = "Goonies!"
puts movie1.title
puts movie1.rank

puts movie1.normalize_rank
