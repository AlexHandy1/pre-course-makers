##Inheritance Examples##

#Implicit 
class Parent
	def implicit()
		puts "Parent Implicit"
	end
end

class Child < Parent
end

dad = Parent.new()
son = Child.new()

dad.implicit
son.implicit


#Explicit override
class Parent_two
	def override()
		puts "Parent override"
	end
end

class Child_two < Parent_two
	def override()
		puts "Child override"
	end
end

dad = Parent_two.new()
son = Child_two.new()

dad.override
son.override

#Use of super
class Parent_three
	def altered()
    	puts "PARENT altered()"
  	end
end

class Child_three < Parent_three
	def altered()
    	puts "CHILD, BEFORE PARENT altered()"
    super()
    	puts "CHILD, AFTER PARENT altered()"
  	end
end

dad = Parent_three.new()
son = Child_three.new()

dad.altered
son.altered

#Use of a has-a non inheritance class relationship (Composition)

class Other

  def override()
    puts "OTHER override()"
  end

  def implicit()
    puts "OTHER implicit()"
  end

  def altered()
    puts "OTHER altered()"
  end
end

class Child_four

  def initialize()
    @other = Other.new()
  end

  def implicit()
    @other.implicit()
  end

  def override()
    puts "CHILD override()"
  end

  def altered()
    puts "CHILD, BEFORE OTHER altered()"
    @other.altered()
    puts "CHILD, AFTER OTHER altered()"
  end
end

son = Child_four.new()

son.implicit()
son.override()
son.altered()

#Using mixins - when you reference a module within a class (Composition)
module Other_two

  def override()
    puts "OTHER override()"
  end

  def implicit()
    puts "OTHER implicit()"
  end

  def Other_two.altered()
    puts "OTHER altered()"
  end
end

class Child_five
  include Other_two

  def override()
    puts "CHILD override()"
  end

  def altered()
    puts "CHILD, BEFORE OTHER altered()"
    Other_two.altered()
    puts "CHILD, AFTER OTHER altered()"
  end
end

son = Child_five.new()

son.implicit()
son.override()
son.altered()
