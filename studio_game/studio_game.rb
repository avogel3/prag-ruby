def time
  Time.new.strftime("%H:%m:%S")
end

def say_hello name, health=100
  "I'm #{name.capitalize} with a health of #{health} as of #{time}."
end

puts say_hello "larry"
puts say_hello "curly"
puts say_hello "moe"
puts say_hello "shemp"
