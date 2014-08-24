# What Was That?

# These lines define a number of variables ,and then assign strings as their stored value. In this case, the "escape character" or "\" is used to demonstrate what it may be used for.
tabby_cat = "\tI'm tabbed in."
persian_cat = "I'm split\non a line."
backslash_cat = "I'm \\ a \\ cat."

fat_cat = """
I'll do a list:
  \t* Cat Food
  \t* Fishies
  \t* Catnip\n\t* Grass
"""

# These lines print the above defined variable.
puts tabby_cat
puts persian_cat
puts backslash_cat
puts fat_cat

# \\ escapes a backslash
# \' escapes a single quote, for use in a string that is using single quotes to contain it.
# \" the same as a single quote, but for double quotes.
# NOTE: Single quotes ignore most escape characters, while double quotes do not.
# \a bell
# \b backspace
# \f formfeed
# \n linefeed
# \r carriage return
# \t horizontal tab
# \uxxxx character with a 16-bit hex value
# \uxxxxxxxx character with a 32-bit hex value
# \v vertical tab
# \ooo character with octal value ooo
# \xhh character with hex value hh
