# Printing, printing

# This line defines a variable named "formatter" and stores a number of values(?) in them. I'm not really sure exactly what's going on.
formatter = "%{first} %{second} %{third} %{fourth}"

# I'm pretty sure that these lines are printing lines to the console that occur as the value of formatter. the "%" symbol allows us to enter custom values into each of the objects that are defined in the initial variable.
puts formatter % {first: 1, second: 2, third: 3, fourth: 4}
puts formatter % {first: "one", second: "two", third: "three", fourth: "four"}
puts formatter % {first: true, second: false, third: true, fourth: false}
puts formatter % {first: formatter, second: formatter, third: formatter, fourth: formatter}

puts formatter % {
  first: "I had this thing.", # <-- Yo! Remember your commas! They're needed to seperate the 'elements'
  second: "That you could type right up.",
  third: "But it didn't sing.",
  fourth: "So I said goodnight.",
}
