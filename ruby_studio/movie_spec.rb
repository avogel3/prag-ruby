require_relative 'movie'

describe Movie do
    before :each do
        @movie = Movie.new('goonies', 10) 
    end

    it "has a capitalized title" do
        expect(@movie.title).to eq "Goonies"
    end
    
    it "has an initial rank" do
        expect(@movie.rank).to eq 10
    end

    it "has a string representation" do
        expect(@movie.to_s).to eq "Goonies has a rank of 10"
    end

    it "increases rank by one when we give a thumbs up" do
        @movie.thumbs_up
        expect(@movie.rank).to eq 11
    end

    it "decreases rank by one when we give a thumbs down" do
        @movie.thumbs_down
        expect(@movie.rank).to eq 9
    end

    context "created with a default rank" do
        before do
            @movie = Movie.new('goonies')
        end

        it "has a rank of 0" do
            expect(@movie.rank).to eq 0
        end

    end
end
