# Functions and Files

# Like before, this requires a file to be passed into the function at the very beginning.
input_file = ARGV.first

# this line is a little confusing, but I think that the "f" is a variable that represents the file that is called when the script is intially run.
def print_all (f)
  puts f.read
end

# I think that this takes our file, "f", and "seeks" out the "0 byte". Which is why the function is named rewind - seek(0) will go to the beginning of the file, so it is ready to run again from the beginning, whenever the function "rewind" is called.
def rewind (f)
  f.seek(0)
end

# This defines a function "print_a_line" that takes in two arguments. "f" is significant here because it will grab whatever is stored in the file that we designated at the beginning of the program.
def print_a_line(line_count, f)
  puts "#{line_count}, #{f.gets.chomp}"
end

# This defines the variable, "current_file" and tells it to open the "input_file" that we designated when we ran ARGV.
current_file = open(input_file)

# This line pair prints the entirety of the file, which contains three lines.
puts "First, let's print the whole file: \n"

print_all(current_file)

# Rewind is now called, sending the current file back to the beginning, to be read from the start.
puts "Now let's rewind, kind of like a tape."

rewind(current_file)

puts "Let's print three lines: "


# current_line is defined in the ruby core to return the current line in the source that we are looking at - in this case, test.txt.
# each of the next lines gives the code the line to look for (i.e. "1" for the first line, then "1+1" for the second, etc.) and then prints the given line in the file that we have designated.
current_line = 1
print_a_line(current_line, current_file)

current_line = current_line + 1
print_a_line(current_line, current_file)

current_line = current_line + 1
print_a_line(current_line, current_file)
