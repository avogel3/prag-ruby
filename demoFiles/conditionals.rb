require_relative 'movie'

movie = Movie.new('godfather', 10)

if movie.rank >= 10
    puts "hit"
else
    puts "flop"
end
