# Reading Files

# This line uses ARGV to grab a filename from the user, when it is initialized.
filename = ARGV.first

# This command, open, is used to open a file that is selcted when the file is intialized.
txt = open(filename)

# On line 11, we call a function, "read", and run it on txt. What comes back from open is a file; with read, we are reading what has been passed into txt.
puts "Here's your file #{filename}:"
print txt.read

# # The next lines are essentilally repeating the above process. "gets.chomp" fetches the filename from the user, and then,
print "Type the filename again: "
file_again = $stdin.gets.chomp

# ...runs open on the value that was just given by the user.
txt_again = open(file_again)

# And then, is read and printed to the console for the user to read.
print txt_again.read


# To run this from the console, start "irb" and DON'T forget to use quotation marks. The console will get really confused.
