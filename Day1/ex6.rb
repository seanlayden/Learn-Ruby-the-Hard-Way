# Strings and Text

# This defines how many types of people there are (10) and stores it a variable named "types_of_people"
types_of_people = 10
# This is a variable that is defined as a string - and utilizes our former variable types_of_people.
x = "There are #{types_of_people} types of people."
# This defines a variable named binary, and stores it as a string called binary.
binary = "binary"
# This line does the same thing as the previous one, just with different inputs.
do_not = "don't"
# This is like the line that defines "x". It names a variable, y, and stores a string inside of it.
y = "Those who know #{binary} and those who #{do_not}."

# This prints out what the variable x is stored as.
puts x
# This prints out what the variable y is stored as.
puts y

# This line will print out a string, and the what is stored in the variable x.
puts "I said: #{x}"
# This line will print out a string, and the what is stored in the variable y.
puts "I also said: #{y}"

# This line defines a variable, hilarious, and stores a boolean value inside of it. In this case, it stores the value of false.
hilarious = false
# This line defines a variable, joke_evaluation, that stores a string and then calls the variable "hilarious".
joke_evaluation = "Isn't that joke funny?! #{hilarious}"

# This line prints out what is stored as the variable "joke_evaluation"
puts joke_evaluation

# This line defines a variable, w, and stores a string inside of it. The following line does the same thing, but with the variable e, instead.
w = "This is the left side of..."
e = "a string with a right side."

# These two lines use a technique called "concatenation" which essentially sticks the two lines together.
puts w + e
