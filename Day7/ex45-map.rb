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
    current_scene = @scene_map.opening_scene.enter()
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

class Hallway < Scene
  def enter()
    puts "Text here."
  end
end

class Study < Scene
  def enter()
    puts "Text here"
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
    'hallway' => Hallway.new(),
    'study' => Study.new(),
    'game_room' => GameRoom.new(),
    'kitchen' => Kitchen.new(),
    'master_bedroom' => MasterBedroom.new(),
    'bathroom' => Bathroom.new(),
    'dining_room' => DiningRoom.new()
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
