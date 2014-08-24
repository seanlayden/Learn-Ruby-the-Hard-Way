# This is FLAWED code as of now. Comment all changes that are made.
# UPDATE: This code has been corrected and commented to mark all changes. It should run from the console.

module Ex25
# Corrected "module Ex2" to instead be "module Ex25" so that we have the functionality that we presume inside of the module.

  # This function will break up words for us.
  def Ex25.break_words(stuff)
  # Corrected "brak" to "break" so that our funtion is correctly named. Add a close parentheses to properly contain the functions areguments.
    words = stuff.split(' ')
    return words
    # Corrected "word" to "words" so that the correct value is returned to the function.
  end

  # Sorts the words.
  def Ex25.sort_words(words)
  # Corrected "sortwords" to "sort_words" to improve readability.
    return words.sort
  end

  # Prints the first word after popping it off.
  def Ex25.print_first_word(words)
  # Corrected "df" to "def" so that the function is actually being defined.
    word = words.pop(0)
    # Corrected "1" to "0" so that the first word is the one that is retrieved.
    puts word
    # Corrected "wor" to "word" so that word is printed.
  end

  # Prints the last word after popping it off.
  def Ex25.print_last_word(words)
  # Corrected ":" to "." so that the function is being properly defined.
    word = words.pop
    puts word
    # Corrected "put" to "puts" so that it is actually printed out to the console when it is run.
  end

  # Takes in a full sentence and returns the sorted words.
  def Ex25.sort_sentence(sentence)
    words = Ex25.break_words(sentence)
    return Ex25.sort_words(words)
  end

# ---- STOP FOR NOW ---- #

  # Prints the first and last words of the sentence.
  def Ex25.print_first_and_last(sentence)
  # Added closed parentheses to properly contain the argument that is passed to the function.
    words = Ex25.break_words(sentence)
    # Corrected "sentenc" to "sentence"
    Ex25.print_first_word(words)
    # Corred "wrd" to "word". Corrected "word" to "words" as the argument.
    Ex25.print_last_word(words)
  end

  # Sorts the words then prints the first and last one.
  def Ex25.print_first_and_last_sorted(sentence)
    words = Ex25.sort_sentence(sentence)
    Ex25.print_first_word(words)
    # Corrected "fist" to "first".
    Ex25.print_last_word(words)
  end

end
# Added end to module definition.


puts "Let's practice everything."
puts 'You\'d need to know \'bout escapes with \\ that do \n newlines and \t tabs.'

poem = <<END
\tThe lovely world
with logic so firmly planted
cannot discern \n the needs of love
nor comprehend passion from intuition
and requires an explanation
\n\t\twhere there is none.
END
# Corrected "ENDED" to "END" to properly close the text block.

puts "--------------"
puts poem
puts "--------------"


five = 10 - 2 + 3 - 6
# Added a "+" to correctly sum to a total of five.
puts "This should be five: #{five}"
# Closed the curly brace so it properly calls the variable "five".

def secret_formula(started)
  jelly_beans = started * 500
  # Corrected "jelly_bens" to "jelly_beans"
  jars = jelly_beans / 1000
  crates = jars / 100
  # Changed "crate" to "crates"
  return jelly_beans, jars, crates
end


start_point = 10000
beans, jars, crates = secret_formula(start_point)
# Added a comma after "jars" to seperate the variable assignments.

puts "With a starting point of: #{start_point}"
puts "We'd have #{beans} beans, #{jars} jars, and #{crates} crates."
# Closed the curly brace so that the variable is called correctly.

start_point = start_point / 10

sentence = "All good things come to those who wait."
words = Ex25.break_words(sentence)
sorted_words = Ex25.sort_words(words)
Ex25.print_first_word(words)
Ex25.print_last_word(words)
Ex25.print_first_word(sorted_words)
Ex25.print_last_word(sorted_words)
sorted_words = Ex25.sort_sentence(sentence)
Ex25.print_first_and_last(sentence)
Ex25.print_first_and_last_sorted(sentence)
