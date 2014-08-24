# While Loops

i = 0
# numbers = []

# The code block below shows how the code may be executed and made dynamic using a function and a for-loop instead of a while-loop with predefined parameters.

def counting(i, j)
  numbers = []

  (i..j).each do |i|
    puts "At the top is #{i}"
    numbers.push(i)

    puts "Numbers now: ", numbers
  end
end

counting(0, 7)

puts "The numbers: "

puts numbers

# while i < 6
#   puts "At the top i is #{i}"
#   numbers.push(i)
#
#   i += 1
#   puts "Numbers now: ", numbers
#   puts "At the bottom i is #{i}"
# end
#
# puts "The numbers: "
#
# numbers.each {|num| puts num }
