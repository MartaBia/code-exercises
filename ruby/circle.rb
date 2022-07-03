
=begin
Write a Ruby class called Circle. Circle has one member, called radius,
and should expose methods to get and set the radius and get the area and circumference.
Also it should expose a method called can_contain which,
given another Circle as argument, returns if the second circle can fit inside the object Circle of invocation.
Test it by creating several Circle objects and invoking its methods.
=end

class Circle
  attr_accessor :radius

  def initialize(radius)
    @radius = radius
  end

  def circumference
    (@radius * 2) * Math::PI
  end

  def area
    (@radius ** 2) * Math::PI
  end

  def can_fit?(other_circle)
    @radius > other_circle.radius 
  end

end

circle1 = Circle.new(5)
circle2 = Circle.new(3)
puts circle1.circumference
puts circle1.area
puts circle1.can_fit?(circle2)
circle1.radius = 2 # how to change the radius
puts circle1.radius #how to access the radius value from outside and read it
puts circle1.circumference
puts circle1.area
puts circle1.can_fit?(circle2)
