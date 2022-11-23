
def is_asc_order(array)
  for i in 0 ... array.length - 1
    return false if array[i] > array[i + 1]
  end
  true
end

puts is_asc_order([1,2,4,7,19])
puts is_asc_order([1,2,3,4,5])
puts is_asc_order([1,6,10,18,2,4,20])
puts is_asc_order([9,8,7,6,5,4,3,2,1])
puts is_asc_order([0,1])
puts is_asc_order([1,0])
