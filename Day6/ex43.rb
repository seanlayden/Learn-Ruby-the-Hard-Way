# Basic Object-Oriented Analysis and Design

# It may be a good idea to follow this thought process when solving problems...
# 1. Write or draw about the problem. On paper.
# 2. Extract the key concept that come from step one and do some research about them.
# 3. Create a class hierarchy or orject map for the concepts.
# 4. Code the classes and a test to run them.
# 5. Repeat and refine.

class Scene
  def enter()
  end
end

class Engine

  def initialize(scene_map)
  end

  def play()
  end
end

class Death < Scene

  def enter()
  end
end

class CentralCorridor < Scene

  def enter()
  end

end

class LaserWeaponArmory < Scene

  def enter()
  end
end

class TheBridge < Scene

  def enter()
  end
end

class EscapePod < Scene

  def enter()
  end
end

class Map

  def intialize(start_scene)
  end

  def next_scene(scene_name)
  end

  def opening_scene
  end
end

a_map = Map.new('central_corridor')
a_game = Engine(a_map)
a_game.play()
