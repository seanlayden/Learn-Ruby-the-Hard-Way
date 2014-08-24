# Functions Can Return Something

# The below functions all define the way that simple arithmatic will be perform when the function is called. This gives us a shorthand way of doing these calculations. RETURN makes sure to return the answer to the variable it was called on after the calculation is complete.
def add(a, b)
  puts "ADDING #{a} + #{b}"
  return a + b
end

# If return is not used, the value of the calculation is not stored, so when the variable is called into action at a later time, the value of the calculation you wanted will not appear.
def subtract(a,b)
  puts "SUBTRACTING #{a} - #{b}"
  return a - b
end

def multiply(a, b)
  puts "MULTIPLYING #{a} * #{b}"
  return a * b
end

def divide(a, b)
  puts "DIVIDING #{a} / #{b}"
  return a / b
end

puts "Let's do some math with functions!"

age = add(30, 5)
# For example, the value of 30 + 5 has been returned to age, and 35 is now stored as the value of age.
height = subtract(78, 4)
weight = multiply(90, 2)
iq = divide(100, 2)

puts "Age: #{age}, Height: #{height}, Weight: #{weight}, IQ: #{iq}"


# A puzzle for some extra credit - type it in!
puts "Here is a puzzle!"

what = add(age, subtract(height, multiply(weight, divide(iq, 2))))

puts "That becomes: #{what}. Can you do it by hand?"
