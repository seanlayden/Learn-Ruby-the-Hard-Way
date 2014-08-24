# More Practice

puts "Let's practice everything!"
puts 'You\'d need to know \'bout escapes with \\ that do \n newlines and \t tabs.'

# This is a way to create a block of text to output to the user. The "<<" tag must be closed by whatever follows it.
poem = <<END
\tThe lovely world
with logic so firmly planted
cannot discern \n the needs of love
nor comprehend passion from intuition
and requires an explanation
\n\t\twhere there is none.
END


puts "----------"
puts poem
puts "----------"

five = 10 - 2 + 3 - 6
puts "This should be five: #{five}"

def secret_formula(started)
  jelly_beans = started * 500
  jars = jelly_beans / 1000
  crates = jars / 100
  return jelly_beans, jars, crates
end

# This assigns a value to the variable start_point, which is an argument for our function "secret_formula"
start_point = 10000
# this line assigns three variables to out function, so that when they are called in the string below, they grab the correct calculation.
beans, jars, crates = secret_formula(start_point)

puts "With a starting point of: #{start_point}"
puts "We'd have #{beans} beans, #{jars} jars, and #{crates} crates."

start_point = start_point / 10
