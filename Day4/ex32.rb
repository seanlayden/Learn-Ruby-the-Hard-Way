# Loops and Arrays

the_count = [1, 2, 3, 4, 5]
fruits = ['apples', 'oranges', 'pears', 'apricots']
change = [1, 'pennies', 2, 'dimes', 3, 'quarters']

# This first kind of for-loop goes through a list in a more traditional style found in other languages.
the_count.each do |number|
  puts "This is count #{number}"
end

# Variables are defined by for-loops within their consructs, as you see here with "number" in the "the_count" array.

# Same as above, but in a more Ruby style. This and the next one are the preferred Ruby way for for-loops to be written.
fruits.each do |fruit|
  puts "A fruit of type: #{fruit}"
end

# We can also go through mixed lists. NOTE: This is another different style, exactly like above, but with a different syntax.
change.each {|i| puts "I got #{i}"}

# We can also build lists. Let's start with an empty one.
elements = []

# Then, use the range operator to do 0 to 5 counts.
(0..5).each do |i|
# This range operator ".." includes all integers in from 0 THROUGH 5. An operator of "..." is 0 till 5(non-inclusive of 5)
  puts "adding #{i} to the list."
  # Pushes the i variable on the *end* of the list.
  elements.push(i)
end

# There are other methods and operations that can be performed on arrays. For instance, ">>" can be used instead of "push".

# Now, we can print them out too.
elements.each {|i| puts "Element was: #{i}"}

# Some of the other operations and methods that were listed above are:
# Array.at -> grabs a specific element that is indexed at the specified index. This indexing starts at 0.
# Array.first,last -> grabs the first or last element of the array.
# Array.take -> Returns the first n elements of the array.
# Array.drop -> Returns the remaining elements after the first n elements have been dropped.
# .length, .count, .size -> Keeps the size of the array.
# .empty? -> checks whether there is anything actually in the array.
# .include?('test') -> checks whether a specific element is included in the array.
# .unshift -> Adds a new item to the beginning of the array.
# .insert -> inserts an element at the n'th index. This can be done with multiple elements at once.
# .pop -> removes the last element from the array and returns it.
# .shift -> Retrieves and removes the first item from the array.
# .delete_at -> Removes the element at the specified index.
# .compact -> Removes nil values from the array.
# And a LOT more.
