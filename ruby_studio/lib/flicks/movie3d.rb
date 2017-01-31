require_relative 'movie'

module Flicks
  class Movie3D < Movie
    def initialize(title, rank, wow_factor)
      super(title, rank)
      @wow_factor = wow_factor
    end

    def thumbs_up
      @wow_factor.times { super }
    end

    def show_effect
      @wow_factor = 10
      puts "Wow! " * @wow_factor
    end
  end

  movie3d = Movie3D.new('glee', 5, 20)
  puts movie3d.title
  puts movie3d.rank
  puts movie3d.show_effect
  puts movie3d.to_s
end
