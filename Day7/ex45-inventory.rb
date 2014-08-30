# Sheet for inventory

class Inventory
  def use()
    puts "This object is not yet defined. Select an item to access use()."
  end
end

class Notepad < Inventory
  def use()
    puts "text here"
    # action here
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

class Gun < Inventory
  def use()
    puts "Text here."
    # action here
  end
end

class
