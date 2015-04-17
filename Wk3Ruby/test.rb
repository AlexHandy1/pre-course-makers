class Rectangle
  def initialize(length, breadth)
    @length = length
    @breadth = breadth
  end

  def perimeter
    2 * (@length + @breadth)
    puts "#{@length + @breadth} is the perimeter"
  end
end

# Create a class Square here
class Square < Rectangle
  def initialize(side)
    @length = @breadth = side
  end
end

square = Square.new(3)
square.perimeter

