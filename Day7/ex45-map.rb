# Game reference sheet

class Scene
  def enter()
    puts "This scene is not yet configured. Subclass it to implement enter."
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
    "quip 1",
    "quip 2",
    "quip 3",
    "quip 4"
  ]

  def enter()
    puts @@quips[rand(0..(@@quips.length - 1))]
    exit(1)
  end
end

class GreatRoom < Scene
  def speech()
    puts "At that moment, the light dimmed and the audience turned their eyes toward the top"
    puts "of the staircase, where Mr.Cooper was standing with a raised glass."
    puts "\"Good evening, ladies and gentlemen, and welcome to my home. Please enjoy your time here,"
    puts "and be sure to stay wary of unwanted outcomes.\""
    puts "He then finished his glass"
  end

  def enter()
    puts "\"How about these parties?\" The voice came from your left. Before you is a"
    puts "woman in a red dress - whom you immediately identified as Ms. Scarlett - holding a glass of champagne and sparkling with jewelery."
    puts "How do you respond?"
    puts "a) There's nothing wrong with a free drink and good company."
    puts "b) If Mr. Cooper wasn't my boss, I wouldn't be here."
    puts "c) I can't stand these things. I'm about to get out of here."
    print "> "

    response1 = $stdin.gets.chomp

    if response1 == 'a'
      puts "She looks at you, and replies \"That's a good point, and Mr. Cooper doesn't skimp on the refreshments. \n"
      speech()
      return 'study'

    elsif response1 == 'b'
      puts "She looks at you inquisitively, then turns her gaze to the staircase where Mr. Cooper had appeared. \n"
      speech()

    elsif response1 == 'c'
      puts "She smiles, and replies \"Stay awhile, and enjoy the amusements.\""
      puts "I'm sure that you will find yourself quite entertained. \n"
      speech()

    else
      puts "You must choose \"a\", \"b\", or \"c\"."
      return 'great_room'
    end
  end
end

class Hallway < Scene
  def enter()
    puts "text here"
  end
end

class Study < Scene
  def enter()
    puts "Text here."
    return 'death'
  end
end

class GameRoom < Scene
  def enter()
    puts "Text here"
  end
end

class Kitchen < Scene
  def enter()
    puts "Text here"
  end
end

class MasterBedroom < Scene
  def enter()
    puts "Text here"
  end
end

class Bathroom < Scene
  def enter()
    puts "Text here"
  end
end

class DiningRoom < Scene
  def enter()
    puts "Text here"
  end
end

class Map
  @@scenes = {
    'great_room' => GreatRoom.new(),
    'hallway' => Hallway.new(),
    'study' => Study.new(),
    'game_room' => GameRoom.new(),
    'kitchen' => Kitchen.new(),
    'master_bedroom' => MasterBedroom.new(),
    'bathroom' => Bathroom.new(),
    'dining_room' => DiningRoom.new(),
    'death' => Death.new()
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

# a_map = Map.new('great_room')
# a_game = Engine.new(a_map)
# a_game.play()
