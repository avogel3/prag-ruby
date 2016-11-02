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

class Playlist
 def initialize(name)
    @name = name
    @movies = []
 end

 def add_movie movie
    @movies << movie
 end

 def play
     puts "#{@name}'s playlist"
     puts @movies

     @movies.each do |m|
        m.thumbs_up
        puts m
     end
 end

end

movie1 = Movie.new("goonies", 10)
movie2 = Movie.new("ghostbusters", 9)
movie3 = Movie.new("goldfinger", 8)

playlist1 = Playlist.new("Kermit")
playlist1.add_movie(movie1)
playlist1.add_movie(movie2)
playlist1.add_movie(movie3)

playlist1.play

playlist2 = Playlist.new("Fozzie")
playlist2.add_movie(movie3)

movie4 = Movie.new("gremlins", 15)
playlist2.add_movie(movie4)
playlist2.play
