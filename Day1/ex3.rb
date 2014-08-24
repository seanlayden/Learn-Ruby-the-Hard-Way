# This exercise shows how mathematical operations are performed in Ruby, and how they can be used to show the user what is going on.

puts "I will now count my chickens:"
# The above line will print out the text.
puts "Hens #{25 + 30 / 6}"
# The above line will print out the text then perform the listed calculation, and then it will print out the value.
puts "Roosters #{100 - 25 * 3 % 4}"
# The above line will print out the text then perform the listed calculation, and then it will print out the value.
puts "Now I will count the eggs:"
# The above line will print out the text.

puts 3 + 2 + 1 - 5 + 4 % 2 - 1 / 4 + 6
# The above line will perform the calculation, and print out the value.

puts "Is it true that 3 + 2 < 5 - 7?"
# The above line will print out the text, and will not perform the calculation, since it is within a string.
puts 3 + 2 < 5 - 7
# The above line will perform the calculation and print out the result of the calculation.
puts "What is 3 + 2? #{3 + 2}"
puts "What is 5 - 7? #{5 - 7}"
# The above lines will print out the listed text, and then perform the calculation. I'm goinng to make the assumption that creating the possbility to perform a calulation within a string is accomplished by using the following: #{}

puts "Oh, that's why it's false."
# The above line will print out the text.

puts "How about some more?"
# The above line will print out the text.

puts "Is it greater? #{5 > -2}"
# The above line will print out the text, along with the result from the calculation, all within one string.
puts "Is it greater or equal? #{5 >= -2}"
# The above line will print out the text, along with the result from the calculation, all within one string.
puts "Is it less or equal? #{5 <= -2}"
# The above line will print out the text, along with the result from the calculation, all within one string.
