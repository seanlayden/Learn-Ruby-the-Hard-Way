# Hashes, Oh Lovely Hashes

# Create a mapping of states to their abbreviations.
states = {
  'Oregon' => 'OR',
  'Florida' => 'FL',
  'California' => 'CA',
  'New York' => 'NY',
  'Michigan' => 'MI',
}

# Create a basic set of states and some cities in them.
cities = {
  'CA' => 'San Francisco',
  'MI' => 'Detroit',
  'FL' => 'Jacksonville'
}

# Add some more cities
cities['NY'] = 'New York'
cities['OR'] = 'Portland'

# Puts out some cities
puts '_' * 10
puts "NY State has: #{cities['NY']}"
puts "OR State has: #{cities['OR']}"

# Puts out some states
puts '_' * 10
puts "Michigan's abbreviation is: #{states['Michigan']}"
puts "Florida's abbreviation is: #{states['Florida']}"

# Do it by using the state, then the cities hash
puts '_' * 10
puts "Michigan has: #{cities[states['Michigan']]}"
puts "Florida has: #{cities[states['Florida']]}"

# Puts out every state abbreviation
puts '_' * 10
states.each do |state, abbrev|
  puts "#{state} is abbreviated #{abbrev}"
end

# Puts out every city in state
puts '_' * 10
states.each do |abbrev, city|
  puts "#{abbrev} has the city #{city}"
end

# Now do both at the same time
puts '_' * 10
states.each do |state, abbrev|
  city = cities[abbrev]
  puts "#{state} is abbreviated #{abbrev} and has city #{city}"
end

puts '_' * 10
# By default Ruby says 'nil' when something isn't in there.
state = states['Texas']

if !state
  puts "Sorry, no Texas."
end

# Default values using || = with the nil result
city = cities['TX']
city ||= 'Does Not Exist'
puts "The city for the state 'TX' is: #{city}"
