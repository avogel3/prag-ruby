require_relative 'player'

describe Player do 
    before  do
        $stdout = StringIO.new # Prevent w00t and blam from printing to the test output in cli
        @player = Player.new('larry', 150)
    end

    it "has a capitalized name" do
        expect(@player.name).to eq 'Larry' 
    end

    it "has an initial health"  do
        expect(@player.health).to eq 150
    end

    it "has a string representation" do
        expect(@player.to_s).to eq "I'm Larry with a score of 155." 
    end

    it "computes a score as the sum of its health and length of name" do
        expect(@player.score).to eq 155
    end

    it "increases health by 15 when w00ted" do
        @player.w00t
        expect(@player.health).to eq 165
    end

    it "decreases health  by 10 when blammed" do
        @player.blam
        expect(@player.health).to eq 140
    end

    context "with health greater than 150" do
        before do
            @player = Player.new('larry', 150)
        end

        it "is strong" do
            expect(@player).to be_strong
        end
    end

    context "with health of 100" do
        before do
            @player = Player.new('larry')
        end

        it "is not strong" do
            expect(@player).not_to be_strong
        end

    end
  
    context "in a collection of players" do
      before do 
        @player1 = Player.new("moe", 100)
        @player2 = Player.new("larry", 200)
        @player3 = Player.new("curly", 300)

        @players = [@player1, @player2, @player3]
      end

      it "is sorted by decreasing score" do
        expect(@players.sort).to eq [@player3, @player2, @player1]
      end
    end
end
