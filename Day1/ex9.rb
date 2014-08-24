# Printing, Printing, Printing

# I'm expecting some new stuff in this lesson. Still need to figure out what all that "percent notation" was about.

# These line define the variables, "days" and "months"
days = "Mon Tue Wed Thu Fri Sat Sun"
months = "Jan\nFeb\nMar\nApr\nMay\nJun\nJul\nAug"

# These lines print out strings with the values of the variables "days" and "months"
puts "Here are the days: #{days}"
puts "Here are the months: #{months}"

# This line prints out a first string, but there is nothing in it. The quotation marks open, then close, before and content is outputted. This happens at the very end also. The string in the middle, however, is still captured and outputted to the console.
puts """
There's something going on here.
With the three double quotes.
We'll be able to type as much as we like.
Even 4 lines if we want, or 5, or 6.
"""
