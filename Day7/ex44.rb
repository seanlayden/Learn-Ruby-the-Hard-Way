# Inheritance Versus Composition

class Parent
  def override()
    puts "PARENT override()"
  end

  def implicit()
    puts "PARENT implicit()"
  end

  def altered()
    puts "PARENT altered()"
  end
end

class Child < Parent
  # This overrides the parent line, by using the same function name.
  def override()
    puts "CHILD override()"
  end

  # This is an inherited function, and is altered using super().
  def altered()
    puts "CHILD, BEFORE PARENT altered()"
    super()
    puts "CHILD, AFTER PARENT altered()"
  end
end

dad = Parent.new()
son = Child.new()

dad.implicit()
son.implicit()

dad.override()
son.override()

dad.altered()
son.altered()


# Some rules that MAY be a good idea to follow, should the circumstances be right. Don't be a slave to them.
# 1. Avoid something called "meta-programming" at all costs, as it is too complex to use reliably.
# 2. Use composition to package up code into modules that are used in many unrelated places and situations.
# 3. Use inheritance only when there are clearly related reusable pieces of code that fit under a single common concept or if you have to.
