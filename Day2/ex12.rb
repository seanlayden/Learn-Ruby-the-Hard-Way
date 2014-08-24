# Prompting People For Numbers

# This line pait prompts the user for a number. After it is inputted into the program, that number is stored as an interger in the variable "number"
print "Give me a number: "
number = gets.chomp.to_f

# This line pair defines a variable, "bigger", that takes our input from the user (which is now an integer) and multiplies it by 100. Then, the new, bigger number is outputted to the user.
bigger = number * 100
puts "A bigger number is #{bigger}."

# This line triplet prompt the user for another number, and then stores that number in a variable named "another". Then, the variable "number" is used again (and hence, redefined) to convert the variable "another" to an integer, so that a calculation can be performed on it.
print "Give me another number: "
another = gets.chomp
number = another.to_i

# This line pair defines a variable, smaller, and then outputs the users input divided by 100 (Henve why it's named "smaller").
smaller = number / 100
puts "A smaller number is #{smaller}."


# This exercise shows two seperate methodes for taking an input from a user and converting it to an integer. The first does it all in one go, while the second makes use of seperate values to have the effect.
# The operation "to_f" is used to convert the input to a "floating point" number.


# The following code is just practice.
print "Enter your savings account value and see how much it will be after one year, at a rate of 10% growth: "
value = gets.chomp.to_f

newValue = value * 1.1
puts "The value of your savings account after one year will be #{newValue}."
