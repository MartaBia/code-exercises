=begin
The neighbourhood of a cell (in a matrix) are cells that are near to it.
There are two popular types:

- The Moore neighborhood are eight cells which surround a given cell
- The Von Neumann neighborhood are four cells which share a border
with the given cell

Task
Given a neighbourhood type ("moore" or "von_neumann"),
a 2D matrix (a list of lists) and a pair of coordinates,
return the list of neighbours of the given cell.

Notes:

The order of the elements in the output list is not important
If the input indexes are outside the matrix, return an empty list
If the the matrix is empty, return an empty list
Order of the indices: the first index should be applied for the outer/first matrix
layer and the last index for the most inner/last layer.
coordinates = (m, n) should be applied like mat[m][n]
=end

def are_valid_coordinates(array, m, n)
  !(m >= array.length || n >= array[0].length || m < 0 || n < 0)
end

# --- refactored ------------------------------

def get_neighbourhood(n_type, array, coordinates)
  m = coordinates[0]
  n = coordinates[1]

  neighbours = []
  return neighbours if array.empty?
  return neighbours if !are_valid_coordinates(array, m, n)

  neighbours_coordinates = [[m - 1, n], [m, n - 1], [m, n + 1], [m + 1, n]]
  if n_type == "moore"
    neighbours_coordinates.push([m - 1, n - 1], [m - 1, n + 1], [m + 1, n - 1], [m + 1, n + 1])
  end

  neighbours_coordinates.each do |coordinate|
    i = coordinate[0]
    j = coordinate[1]
    neighbours.push(array[i][j]) if are_valid_coordinates(array, i, j)
  end

  return neighbours
end

# --- first version ------------------------------

=begin
def get_neighbourhood(n_type, array, coordinates)
  m = coordinates[0]
  n = coordinates[1]

  neighbours = []

  return neighbours if array.empty?
  return neighbours if !are_valid_coordinates(array, m, n)

  neighbours.push(array[m - 1][n]) if are_valid_coordinates(array, m - 1, n)
  neighbours.push(array[m][n - 1]) if are_valid_coordinates(array, m, n - 1)
  neighbours.push(array[m][n + 1]) if are_valid_coordinates(array, m, n + 1)
  neighbours.push(array[m + 1][n]) if are_valid_coordinates(array, m + 1, n)

  if n_type == "moore"
    neighbours.push(array[m - 1][n - 1]) if are_valid_coordinates(array, m - 1, n - 1)
    neighbours.push(array[m - 1][n + 1]) if are_valid_coordinates(array, m - 1, n + 1)
    neighbours.push(array[m + 1][n - 1]) if are_valid_coordinates(array, m + 1, n - 1)
    neighbours.push(array[m + 1][n + 1]) if are_valid_coordinates(array, m + 1, n +  1)
  end

  return neighbours
end
=end

array = [ [ 0,  1,  2,  3,  4],
          [ 5,  6,  7,  8,  9],
          [10, 11, 12, 13, 14],
          [15, 16, 17, 18, 19],
          [20, 21, 22, 23, 24] ]

print get_neighbourhood("moore", array, [0, 1])
print get_neighbourhood("von_neumann", array, [0, 1])
print get_neighbourhood("von_neumann", array, [2, 2])
print get_neighbourhood("moore", array, [2, 2])
print get_neighbourhood("moore", array, [0, 0])
print get_neighbourhood("von_neumann", array, [0, 0])
