=begin
Sum all the numbers of a given array ( cq. list ),
except the highest and the lowest element ( by value, not by index! ).
The highest or lowest element respectively is a single element at each edge,
even if there are more than one with the same value.
=end

def sum_array(arr)
  return 0 if arr == nil || arr.empty?
  arr.sort!
  sum = 0
  for i in 1 ... arr.length - 1
    sum += arr[i]
  end
  sum
end

puts sum_array(nil)
puts sum_array([])
puts sum_array([3])
puts sum_array([-3])
puts sum_array([6, 2, 1, 8, 10])
puts sum_array([6, 0, 1, 10, 10])
puts sum_array([-6, -20, -1, -10, -12])
puts sum_array([-6, 20, -1, 10, -12])
