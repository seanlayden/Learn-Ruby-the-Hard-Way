# My very own game!

puts "Your vision slowly comes into focus, and you realized that you are in a hospital bed. There is no one else in the room, and it is strangely quiet. Would you like to know more?"
puts "> "
start = $stdin.gets.chomp

if start == "yes"
  puts "You are not strapped down, nor are you hooked up to anything. You can stand up, if you would like."
  puts "> "
  move = $stdin.gets.chomp

  if move == "stand up"
    puts "You stand up, and walk to the door. You look into the hallway and realize that the building is empty. To your left is an exit, and to your right is a dark hallway leading further into the hospital."
    puts "> "
    direction = $stdin.gets.chomp

    if direction == "right"
      puts "You go out into the world. Tune in next time, as your adventure continues."
    elsif direction == "left"
      puts "You can't see anything, and you hear strange sounds. You get hit on the head and you're knocked unconscious. Tune in next time to find out what happens!"
    else
      puts "That's not a choice! GAME OVER!"
    end

  else
    puts "Coward! How will you ever have an adventure if you just want to stay in bed all the time?"
  end

else
  puts "Well, I guess we can start some other time. Adventure awaits you!"
end
