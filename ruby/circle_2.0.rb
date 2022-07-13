
=begin
Write a Ruby class called Circle. Circle has two member, radius and centre
and should expose methods to get and set the radius and get the area and circumference.
Also it should expose a method called can_contain which,
given another Circle as argument, returns if the second circle can fit inside the object Circle of invocation.
Test it by creating several Circle objects and invoking its methods.
=end

class Circle
  attr_accessor :radius
  attr_accessor :centre

  def initialize(radius, centre)
    @radius = radius
    @centre = centre
  end

  def circumference
    (@radius * 2) * Math::PI
  end

  def area
    (@radius ** 2) * Math::PI
  end

  def could_fit?(circle)
    @radius > circle.radius
  end

  def is_inside?(point)
    @centre.distance(point) <= @radius
  end

  def contains(circle)
    @centre.distance(circle.centre) + circle.radius <= @radius
  end

end

class Point
  attr_accessor :x
  attr_accessor :y

  def initialize(x, y)
    @x = x
    @y = y
  end

  def distance(point)
    Math.sqrt(((@x - point.x).abs ** 2) + ((@y - point.y).abs ** 2))
  end
end

# -- Creating the instances ---------------------

point1 = Point.new(0, 0)
circle1 = Circle.new(5, point1)
point2 = Point.new(2, 2)
circle2 = Circle.new(3, point2)

# # -- Calling methods circumference and area -----

puts circle1.circumference
puts circle1.area
puts circle1.could_fit?(circle2)

circle1.radius = 2 # how to change the radius
puts circle1.radius #how to access the radius value from outside and read it

puts circle1.circumference
puts circle1.area
puts circle1.could_fit?(circle2)

# -- Checking is a point is inside a circle -----

puts circle1.is_inside?(point2)
puts circle2.is_inside?(point1)
puts circle1.is_inside?(Point.new(12, -30))

# -- Checking if a circle could fit inside another circle --

puts circle1.contains(circle2)
puts circle2.contains(circle1)
puts circle1.contains(Circle.new(1, Point.new(1, 1)))
