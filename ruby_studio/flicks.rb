def weekday
  current_time = Time.new
  today = current_time.strftime("%A")
end

def movie_listing title, rank=0
  "#{weekday.upcase}: #{title.capitalize} has a rank of #{rank}."
end

puts movie_listing "Goonies"
puts movie_listing "Ghostbusters"
puts movie_listing "Goldfinger"
