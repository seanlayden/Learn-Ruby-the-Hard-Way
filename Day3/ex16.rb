# Reading and Writing Files

# Some commands to remember:
#
# - close: Closes the file. Like File -> Save.. in your editor.
# - read: Reads the contents of a file. You can assign the result to a variable.
# - readline: Reads just one line of a text file.
# - truncate: Empties the file. Watch out if you care about the file.
# - write('stuff'): Writes 'stuff' to the file.

filename = ARGV.first

# The following line grabs filename from the intial user inout, when the program was first run. It calls "test.txt" and assigns it to the variable.
puts "We're going to erase #{filename}"
puts "If you don't want that, hit CTRL-C (^C)."
puts "If you do want that, hit RETURN."

# This line grabs the users input, either CTRL + C or RETURN
$stdin.gets

# This grabs the file and opens it. What does "w" do? The 'w' stands for 'write'. It truncates the file to zero length (the value we pass in truncate) and prepares it to be written.
puts "Opening the file..."
target = open(filename, 'w')

# This line is redundant in this case - while it serves to truncate the file to 0 bytes (thus emptying it), the call of 'w' in the previous pair already causes it to empty.
puts "Truncating the file. Goodbye!"
target.truncate(0)

puts "Now I am going to ask you for three lines."

print "Line 1: "
line1 = $stdin.gets.chomp
print "Line 2: "
line2 = $stdin.gets.chomp
print "Line 3: "
line3 = $stdin.gets.chomp

puts "I'm going to write these to the file."

# This applies the write command to our variable target, which is holding the truncated filename.
target.write(line1)
target.write("\n")
target.write(line2)
target.write("\n")
target.write(line3)
target.write("\n")

# This closes the document.
puts "And finally, we close it."
target.close
