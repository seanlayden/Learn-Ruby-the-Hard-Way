# Functions and Variables

# This defines our function. It takes two arguments, and creates a text script to print out whenever the function is called.
def cheese_and_crackers(cheese_count, boxes_of_crackers)
  puts "You have #{cheese_count} cheeses!"
  puts "You have #{boxes_of_crackers} boxes of crackers!"
  puts "Man, thats enough for a party!"
  puts "Get a blanket! \n"
end


# This calls the function, and takes two arguments for "cheese_count" and "boxes_of_crackers"
puts "We can just give the function numbers directly: "
cheese_and_crackers(20, 30)


# This codes segment creates two new variables, and gives them values. Then, we call our function and pass it the variables we just created as arguments. This works!
puts "OR, we can use variables from our script: "
amount_of_cheese = 10
amount_of_crackers = 50

cheese_and_crackers(amount_of_cheese, amount_of_crackers)

# This shows that we can do math inside of our function.
puts "We can even do math inside too: "
cheese_and_crackers(10 + 20, 5 + 6)


# This shows that we can combine variables, and math to define our arguments that are being passed into our function.
puts "And we can combine the two, variables, and math: "
cheese_and_crackers(amount_of_cheese + 100, amount_of_crackers + 1000)


# Nice! This code takes a user's input, and stores it in a a couple of variable that I made up. Then, we call the function and user these "user-inputted" values as the arguments that we give to the function.
puts "How many cheeses will your party have?"
user_cheeses = gets.chomp.to_i

puts "How many crackers will your party have?"
user_crackers = gets.chomp.to_i

cheese_and_crackers(user_cheeses, user_crackers)
