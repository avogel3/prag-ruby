require_relative 'movie'

class Playlist
 def initialize(name)
    @name = name
    @movies = []
 end

 def add_movie movie
    @movies << movie
 end

    def roll_die
        rand(1..6)
    end

 def play
     puts "#{@name}'s playlist"
     puts @movies

     @movies.each do |m|
        number_rolled = roll_die
        case number_rolled
        when 1..2
            m.thumbs_down
            puts "#{m.title} got a thumbs down."
        when 3..4
            puts "#{m.title} was skipped"
        else
            m.thumbs_up
            puts "#{m.title} got a thumbs down."
        end
     end
 end

end
