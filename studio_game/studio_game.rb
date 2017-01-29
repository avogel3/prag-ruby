require_relative 'game'
require_relative 'clumsy_player'
require_relative 'berserk_player'

knuckleheads = Game.new("Knuckleheads")
knuckleheads.load_players(ARGV.shift || "players.csv")
clumsy = ClumsyPlayer.new("Klutz", 105)
knuckleheads.add_player(clumsy)
berserker = BerserkPlayer.new("Berseker", 50)
knuckleheads.add_player(berserker)

loop do
  puts "\nHow many game rounds?"
  answer = gets.chomp
  case answer
  when 'exit', 'quit'
    knuckleheads.print_stats
    break
  when /^\d+$/
    knuckleheads.play(answer.to_i)
  else
    puts "Please enter a number or 'quit'"
  end
end
knuckleheads.save_high_scores
knuckleheads.print_stats
