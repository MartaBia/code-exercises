=begin
For a given 2D vector described by cartesian coordinates
of its initial point and terminal point in the following format:

  [[x1, y1], [x2, y2]]

Your function must return the vector's length represented as a floating point number.

Coordinates can be integers or floating point numbers.
=end

def vector_length(vector)
  Math.sqrt((vector[1][0] - vector[0][0]) ** 2 + (vector[1][1] - vector[0][1]) **2)
end

puts vector_length([[0, 1],[0, 0]])
puts vector_length([[0, 3],[4, 0]])
puts vector_length([[1, -1],[1, -1]])
puts vector_length([[0, 0],[0, 0]])
puts vector_length([[0, 0.3],[0.4, 0]])
