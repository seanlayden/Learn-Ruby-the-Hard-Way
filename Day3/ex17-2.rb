# More Files

# This first line will take the commands that are typed into the terminal. In this case, we define those commands as the before file and the after file. The actions that complete this script occur later on.
from_file, to_file = ARGV

puts "Copying from #{from_file} to #{to_file}."

# We could do the following on one line - how?
in_file = open(from_file)
indata = in_file.read

puts "The input file is #{indata.length} bytes long."

puts "Does the output file exist? #{File.exist?(to_file)}"
puts "Ready, hit RETURN to continue, CTRL-C to abort."
$stdin.gets

out_file = open(to_file, 'w')
out_file.write(indata)

puts "Alright, all done."

out_file.close
in_file.close

# The script is important in this one, and is as follows:
# echo "string" > filename
# cat filename
# OUTPUT
# ruby rubyfile filename newfilename

from_file, to_file = ARGV

puts "Copying #{from_file} to #{to_file}."
