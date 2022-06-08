=begin
Triangular numbers are so called because of the equilateral triangular
shape that they occupy when laid out as dots. i.e.

1st (1)   2nd (3)    3rd (6)
*          **        ***
           *         **
                     *
You need to return the nth triangular number.
You should return 0 for out of range values:

For example: (Input --> Output)

0 --> 0
2 --> 3
3 --> 6
-10 --> 0
=end

def triangular(n)

  return nth_triangular_number = 0 if n <= 0

  for i in 1 .. n
    if i == 1
      nth_triangular_number = 1
    elsif n >= 2
      nth_triangular_number = (nth_triangular_number + i)
    end
   end

  return nth_triangular_number
end

puts triangular(2)
puts triangular(4)
puts triangular(-5)
