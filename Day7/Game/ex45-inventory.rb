# Sheet for inventory

bag = []

class Inventory
  def use()
    puts "This object is not yet defined. Select an item to access use()."
  end
end

class Notepad < Inventory
  def use()
    puts "text here"

    if response == "take notepad"
      bag.push('notepad')
    else
      puts "test"
    end  
  end
end

class Flashlight < Inventory
  def use()
    puts "Text here."
    # action here
  end
end

class MagnifyingGlass < Inventory
  def use()
    puts "Text here."
    # action here
  end
end

class Knife < Inventory
  def use()
    puts "Text here."
    # action here
  end
end

class Rope < Inventory
  def use()
    puts "Text here."
    # action here
  end
end

class Lockpick < Inventory
  def use()
    puts "Text here."
    # action here
  end
end

class Backpack
  @@items = {
    'notepad' => Notepad.new(),
    'flashlight' => Flashlight.new(),
    'magnifying_glass' => MagnifyingGlass.new(),
    'knife' => Knife.new(),
    'rope' => Rope.new(),
    'lockpick' => Lockpick.new()
  }

  def initialize(take_item)
    @take_item = take_item
  end
end
