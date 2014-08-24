# Names, Variables, Code, Functions

# This one is like your scripts with ARGV
def print_two(*args)
  arg1, arg2 = args
  puts "arg1: #{arg1}, arg2: #{arg2}."
end

# OK, that *args is actually pointless, we can just do this!
def print_two_again(arg1, arg2)
  puts "arg1: #{arg1}, arg2: #{arg2}"
end

# This one will just take one argument
def print_one(arg1)
  puts "arg1: #{arg1}"
end

# This one takes no arguments at all!
def print_none()
  puts "I got nothing."
end

def print_three(arg1, arg2, arg3)
  puts "arg1: #{arg1}, arg2: #{arg2}, arg3: #{arg3}"
end

print_two("Sean", "Layden")
print_two_again("Sean", "Layden")
print_one("First!")
print_none()
print_three("Hello", "World", "!")

# "def" stands for "define". It is used to create a function.
# Then, we give a name to the function. Try to be consise, but descriptive of what the function does when coming up with names.
# The function is then passed an argument.
# All lines that are indented after this definition will be part of the code that we are running.
# The problem with "print_two" is that it is inefficient. This is not the best way to write the code, which is why it is redone in the next function.
# Instead of having a line that is used to unpack the arguments that are given, we can just use the names inside of the parentheses.
# Think of a function as a mini-script.

# The * in the first function that we wrote, takes all the arguments to the function and then puts them into "args" as a list. It is rarely used (as there was a better method here).

# Function checklist:
# - Start the function by using "def"
# - Give the function a name, just after "def". Function names should only have alphabetical characters and underscores. They can use numbers, but they cannot start with numbers - just like variable names. This should be followed by a parentheses, which will contain our arguments.
# - Pass it arguments. The number of arguments that it needs will depend entirely on what exactly we want the function to do. Seperate arguments using a comma. Arguments must be unique.
# - Code what the function will do.
# - End the function by writing "end", and then pressing RETURN.
# - Line things up! Code inside a function should be indented, and the "end" term should be one the same level of indentation as "def"
