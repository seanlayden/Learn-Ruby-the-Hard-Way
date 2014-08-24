# More Variables and Printing

my_name = 'Sean Layden'
my_age = 23
my_height = 72.0 # inches
my_weight = 190.0 # pounds
my_eyes = 'brown'
my_teeth = 'white'
my_hair = 'brown'

puts "Let's talk about #{my_name}."
puts "He is about #{my_age} years old."
puts "He is about #{my_height} inches tall, and he weights about #{my_weight} pounds."
puts "He has #{my_eyes} eyes, #{my_teeth} teeth, and #{my_hair} hair."

# Careful with the following calculation! While it has been corrected to have a floating point value here, without that definition it will end producing an integer, which automatically rounds.
puts "Let's pretend were making some random index, and we've stored a few variables to come to that conclusion. Let's say that to get the number for this index, which we will call the BMI, you take total pounds and divide it by total inches. For myself, this would come out to #{my_weight / my_height}."

puts "There are 2.4 centimeters for every inch, and there are 2.2 kilograms for every pound."
pounds = 10
kg = pounds / 2.2;
puts "That means that there are #{kg} kg in 10 pounds."
