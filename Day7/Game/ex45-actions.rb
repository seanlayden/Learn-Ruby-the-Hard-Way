# Actions associated with game

# class Actions
#   puts "This method hasn't been inserted yet. Please enter a valid action."
#   exit(1)
# end

class Check
  puts bag
end

class Actions
  @@action = [
    'check' => Check.new()
  ]
end
