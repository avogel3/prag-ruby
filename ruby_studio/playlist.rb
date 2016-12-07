require_relative 'movie'
require_relative 'waldorf_and_statler'

class Playlist
 def initialize(name)
    @name = name
    @movies = []
 end

 def add_movie movie
    @movies << movie
 end

 def play(viewings)
     puts "#{@name}'s playlist"
     puts @movies

      1.upto(viewings) do |count|
        puts "\nViewing #{count}"
        @movies.each do |m|
          WaldorfAndStatler.review(m)
           puts m
        end
      end
 end

def print_stats
  puts "\n#{@name}'s Stats"
  hits, flops = @movies.partition { |movie| movie.hit? }
  puts "\nHits:"
  puts hits.sort

  puts "\nFlops:"
  puts flops.sort


end

end
