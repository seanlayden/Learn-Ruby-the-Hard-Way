# Is-A, Has-A, Objects, and Classes

## Animal is-a object
class Animal
end

## class Dog is-a Animal, that has-a initialize that takes the parameter name.
class Dog < Animal

  def initialize(name)
    ## This makes name available to all methods within the class.
    @name = name
  end
end

## class Cat is a Animal, that has-a initialize that takes the parameter name.
class Cat < Animal

  def initialize(name)
    ## This makes name available to all methods within the class.
    @name = name
  end
end

## class Person has-a initialize that takes the parameter name.
class Person

  def initialize(name)
    ## This makes name available to all methods within the class. This means that each instance will call it's own parameter for name.
    @name = name

    ## Person has-a pet of some kind
    @pet = nil
  end

  attr_accesor :pet
end

## class Employee is a Person, that has-a intialize  that takes the parameters name, salary.
class Employee < Person

  def initialize(name, salary)
    ## super invokes the behavior of name from the parent class, Person
    super(name)
    ## This means that each instance of salary that is called will belong to thep articular instance.
    @salary = salary
  end

end

## This creates a class called fish
class Fish
end

## This creates a class Salmon that is-a fish
class Salmon < Fish
end

## This creates a class Halibut that is-a fish
class Halibut < Fish
end

## rover is-a Dog
rover = Dog.new("Rover")

## Satan is-a cat
satan = Cat.new("Satan")

## mary is-a person
mary = Person.new("Mary")

## from mary get the pet attribute and set it to satan.
mary.pet = satan

## set frank as a employee with that parameters stated.
frank = Employee.new("Frank", 120000)

## from frank get the pet attribute and set it to rover.
frank.pet = rover

## flipper is-a Fish.
flipper = Fish.new()

## crouse is-a Salmon.
crouse = Salmon.new()

## harry is-a Halibut.
harry = Halibut.new()
