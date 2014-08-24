# Designing and Debugging

puts "Alrighty then, let's play a game."

def game
  puts "When you walk into the house, you see a few objects lying around. There is a rope, a knife, and a matchbox."
  choice = $stdin.gets.chomp
  item = 0

  if choice == "knife"
    puts "You chose the knife. You will be able to defend yourself against terrible creatures."
    item = "knife"
  elsif choice == "rope"
    puts "You chose the rope. You will be able to get yourself out of dangerous situations and secure other equipment. A wise choice."
    item == "rope"
  elsif choice == "matchbox"
    puts "You chose the matchbox. You will be able to easily light fires and torches throughout your adventure."
    item == "matchbox"
  else
    puts "Seriously, all this equipment and you won't take any of it. You're a fool!"
  end

  def middle
    puts "You are walking away from the house into the dark forest, and you fall into a pit with a scary monster. You can't see it, but you can hear it..."
    choice2 = $stdin.gets.chomp

    if choice2 == "fight" && item == "knife"
      puts "You fight off the creature and survive, but not for long. You die in the pit because you can't climb out without a rope and you can't see without any light."
    elsif choice2 == "run" && item == "rope"
      puts "You climb out of the pit, and get away. Then another creature comes along and you can't fight it without a weapon. You die a violent death."
    elsif choice2 == "light" && item == "matchbox"
      puts "You light a match, and you see your impending doom. You die in terror."
    else
      puts "Dude, that's not a choice."
    end
  end

  middle
  
end

game
