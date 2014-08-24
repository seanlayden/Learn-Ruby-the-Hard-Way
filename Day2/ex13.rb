# Parameters, Unpacking, Variables

first, second, third = ARGV

# The values to be placed in the variables "first", "second", and "third" will all be entered on the command line when the program is run.
puts "Your first variable is: #{first}"
puts "Your second variable is: #{second}"
puts "Your third variable is: #{third}"

# IMPORTANT: This is going to be very stubborn IF ARGV is running. I don't know why, I just know that when ARGV is taking inputs then gets.chomp acts pretty stubborn.
puts "What is your name? "
name = gets.chomp

puts "What is your age? "
age = gets.chomp

# This was a test line to try and get ARGV and gets.chomp to play nice together.
puts "So your #{first} name is #{name} and your #{second} favorite number is #{age}."

# Later on, I'm sure I'll discover that using "STDIN.gets.chomp" instead of "gets.chomp" will allow me to simultaneously run ARGV and gets.chomp commands.
