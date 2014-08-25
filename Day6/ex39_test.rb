require './dict.rb'

# Create a mapping of state to abbreviation
states = Dict.new()
Dict.set(states, 'Oregon', 'OR')
Dict.set(states, 'Florida', 'FL')
Dict.set(states, 'California', 'CA')
Dict.set(states, 'New York', 'NY')
Dict.set(states, 'Michigan', 'MI')

# Create a basic set of states and some cities in them.
cities = Dict.new()
Dict.set(cities, 'CA', 'San Francisco')
Dict.set(cities, 'MI', 'Detroit')
Dict.set(cities, 'FL', 'Jacksonville')

# Add some more cities in
Dict.set(cities, 'NY', 'New York')
Dict.set(cities, 'OR', 'Portland')

# Puts out some cities
puts '_' * 10
puts "NY State has: #{Dict.get(cities,'NY')}"
puts "OR State has: #{Dict.get(cities, 'OR')}"

# Puts out some states
puts '_' * 10
puts "Michigan's abbreviation is: #{Dict.get(states, 'Michigan')}"
puts "Florida's abbreviation is: #{Dict.get(states, 'Florida')}"

# Do it by using the state then the cities dict
puts '_' * 10
puts "Michigan has: #{Dict.get(cities, Dict.get(states, 'Michigan'))}"
puts "Florida has: #{Dict.get(cities, Dict.get(states, 'Florida'))}"

# Puts out every state abbreviation
puts '_' * 10
Dict.list(states)

# Puts out every city in every state
puts '_' * 10
Dict.list(cities)

puts '_' * 10
# By default, Ruby says "nil" when something isn't there.
state = Dict.get(states, 'Texas')

if !state
  puts "Sorry, no Texas."
end

# Default values using ||= with the nil result
city = Dict.get(cities, 'TX', 'Does not exist.')
puts "The city for the state 'TX' is: #{city}"
