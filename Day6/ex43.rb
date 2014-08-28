# Basic Object-Oriented Analysis and Design

# TOP-DOWN Approach
# It may be a good idea to follow this thought process when solving problems...
# 1. Write or draw about the problem. On paper.
# 2. Extract the key concept that come from step one and do some research about them.
# 3. Create a class hierarchy or orject map for the concepts.
# 4. Code the classes and a test to run them.
# 5. Repeat and refine.

class Scene
  def enter()
    puts "This scene is not yet configured. Subclass it and implement enter()."
    exit(1)
  end
end

class Engine
  def initialize(scene_map)
    @scene_map = scene_map
  end

  def play()
    current_scene = @scene_map.opening_scene()
    loop do
      next_scene_name = current_scene.enter()
      current_scene = @scene_map.next_scene(next_scene_name)
    end
  end
end

class Death < Scene

  @@quips = [
    "You died! That's all.",
    "You really suck at this.",
    "What the hell is wrong with you? That was obviously the wrong answer. You're dead now, good job."
  ]

  def enter()
    puts @@quips[rand(0..(@@quips.length - 1))]
    exit(1)
  end
end

class CentralCorridor < Scene

  def enter()
    puts "Aliens have invaded your ship, and kill your entire crew."
    puts "You are the last survivor, and you must make your way to the escape pods in order to get out with your life."
    puts "Before you do so, you need to take care of the aliens and avenge your friends."
    puts "Your mission is this: Make it to the Armory, and get the bomb. Put it in the bridge, and then blow it up after you make your way to an escape pod."
    puts "\n"
    puts "You're making your way down the central corridor, when an alien jumps out, and points his blaster at you."
    print "What are you going to do? > "

    action = $stdin.gets.chomp

    if action == 'shoot'
      puts "You quickly yank out your weapon and take aim. The alien is too fast, however, and dodges the shot. He get's very angry, and throws you to the ground and eats your face."
      return 'death'

    elsif action == 'dodge'
      puts "Lightning quick, you dodge the alien's blaster ray and it rebounds throughout the ship. As you stand up to mock the alien, the shot come rebounding back and kills you."
      return 'death'

    elsif action == 'tell a joke'
      puts "You insult the alien, but he finds it hysterical. He starts laughing maniacally, and dies from suffocation."
      return 'laser_weapon_armory'

    else
      puts "DOES NOT COMPUTE!"
      return 'central_corridor'
    end
  end
end

class LaserWeaponArmory < Scene

  def enter()
    puts "You run into the armory, and you see the bomb locked away in cage. There is a one digit code, between 1 and 10 that you must enter into the pad."
    code = "#{rand(1..9)}"
    print "[keypad] > "
    guess = $stdin.gets.chomp
    guesses = 0

    while guess != code && guesses <= 10
      puts "BZZZD! INCORRECT CODE."
      guesses += 1
      print "[keypad] > "
      guess = $stdin.gets.chomp
    end

    if guess == code
      puts "The container opens, and you grab the neutron bomb. You then make your way to the bridge."
      return 'the_bridge'

    else
      puts "The lock buzzes, and you feel a sense of dread fill you up. The container sprounts spikes and shoots them at you, and you die violently."
      return 'death'
    end
  end
end

class TheBridge < Scene

  def enter()
    puts "You run into the bridge with the bomb in your hands, and surprise a group of aliens who are trying to figure out how to fly it. They turn around, and reach for their weapons."
    print "> "

    action = $stdin.gets.chomp

    if action == "throw the bomb"
      puts "In a panic, you throw the bomb into the horde of aliens and try to dive away. An alien trys to catch it, but it bobbles it and the bomb explodes on contact with the floor, obliterating both you and the aliens."
      return 'death'

    elsif action == "put down bomb"
      puts "The aliens stare at you as put the bomb down, detonator in hand. The slowly raise their arms so they don't offend you."
      return 'escape_pod'

    else
      puts "DOES NOT COMPUTE!!"
      return 'the_bridge'
    end
  end
end

class EscapePod < Scene

  def enter()
    puts "You made it to the escape pods! But an alarm is going off - only one of the five is still operational, as the initial attack aimed to cut off any escape."
    puts "Which pod do you take?"

    good_pod = rand(1..5)
    print "[pod #] > "
    guess = $stdin.gets.chomp.to_i

    if guess != good_pod
      puts "You jump into the pod and press the giant red 'LAUNCH' button. The pod explodes and you die."
      return 'death'

    else
      puts "You jump into the pod and push the 'LAUNCH' button. With a jolt, you are hurled into outer space. You look up to press the 'MAYDAY' button, so you can signal someone for help. The button, however, is broken. You drift off into space to meet your fate..."

      return 'finished'
    end
  end
end

# class TheEnd < Scene
#   def enter()
#     puts "Good job! You didn't die!"
#     exit(1)
#   end
# end

class Map
  @@scenes = {
    'central_corridor' => CentralCorridor.new(),
    'laser_weapon_armory' => LaserWeaponArmory.new(),
    'the_bridge' => TheBridge.new(),
    'escape_pod' => EscapePod.new(),
    'death' => Death.new(),
    # 'the_end' => TheEnd.new()
  }

  def initialize(start_scene)
    @start_scene = start_scene
  end

  def next_scene(scene_name)
    val = @@scenes[scene_name]
    return val
  end

  def opening_scene()
    return next_scene(@start_scene)
  end
end

a_map = Map.new('central_corridor')
a_game = Engine.new(a_map)
a_game.play()

# BOTTOM-UP Approach
# 1. Take a small piece of the problem; hack on some code and get it run barely.
# 2. Refine the code into something more formal with classes and automated tests.
# 3. Extract the key concepts you're using and try to find research for them.
# 4. Write a description of what is really going on.
# 5. Go back and refine the code, possibly throwing it out and starting over.
# 6. Repeat, moving on to some other piece of code.
