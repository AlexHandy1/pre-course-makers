## Animal is-a object look at the extra credit
class Animal
end

## Dog is-a Animal 
class Dog < Animal

  def initialize(name)
    ## Dog has-a name
    @name = name
  end
end

## Cat is-a Animal
class Cat < Animal

  def initialize(name)
    ## Cat has-a name
    @name = name
  end
end

## Person is-a object
class Person

  def initialize(name)
    ## Person has-a name
    @name = name

    ## Person has-a pet of some kind
    @pet = nil
  end

  attr_accessor :pet
end

## An Employee is-a Person
class Employee < Person

  def initialize(name, salary)
    ## An Employee has-a name which is that of the Person
    super(name)
    ## An Employee has-a salary
    @salary = salary
  end

end

## Fish is-a object
class Fish
  def initialize(*names)
      @names = names
      puts @names
  end

  def king_fish
      puts "I am the top fish"
  end
end

## Salmon is-a Fish
class Salmon < Fish

  def initialize(*names)
    super()
  end

  def king_fish
    super()
  end
end

## Halibut is-a Fish
class Halibut < Fish
  def king_fish
    super()
  end
end


## rover is-a Dog
rover = Dog.new("Rover")

## satan is-a Cat
satan = Cat.new("Satan")

## mary is-a Person
mary = Person.new("Mary")

## mary has a pet cat named Satan
mary.pet = satan

## frank is a Person who is an Employee earning 120K
frank = Employee.new("Frank", 120000)

## frank has a pet dog named Rover
frank.pet = rover

## flipper is a fish
flipper = Fish.new([$stdin.gets.chomp, $stdin.gets.chomp, $stdin.gets.chomp])

## crouse is a salmon
crouse = Salmon.new([$stdin.gets.chomp, $stdin.gets.chomp, $stdin.gets.chomp])
crouse.king_fish

## harry is a halibut
harry = Halibut.new()
harry.king_fish