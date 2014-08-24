# This exercise shows how to define variables in Ruby. Unlike JS, it looks like the "var" keyword is unnecessary.

# The following defines the variables that will be used to perform the mathematical operations that are necessary.
cars = 100
space_in_a_car = 4.0
drivers = 30
passengers = 90
cars_not_driven = cars - drivers
cars_driven = drivers
carpool_capacity = cars_driven * space_in_a_car
average_passengers_per_car = passengers / cars_driven

# The following is what the user will actually see - By changing the variables that are available, we can update the date to reflect the current scenario. This makes the program usable for more instance that just one.
puts "There are #{cars} cars available."
puts "There are only #{drivers} drivers available."
puts "There will be #{cars_not_driven} empty cars today."
puts "We can transport #{carpool_capacity} people today."
puts "We have #{passengers} to carpool today."
puts "We need to put about #{average_passengers_per_car} in each car."
