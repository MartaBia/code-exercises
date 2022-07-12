=begin
Given a mixed array of number and string representations of integers,
add up the string integers and subtract this from the total of the non-string integers.
=end

def div_con(x)
  sum_of_int = 0
  sum_of_str = 0
  x.each do |number|
      if number.is_a?(Integer)
          sum_of_int += number
      else
          number = number.to_i
          sum_of_str += number
      end
  end
  total = sum_of_int - sum_of_str
end

puts div_con([9, 3, '7', '3'])
puts div_con(['5', '0', 9, 3, 2, 1, '9', 6, 7])
puts div_con(['3', 6, 6, 0, '5', 8, 5, '6', 2,'0'])
puts div_con(['1', '5', '8', 8, 9, 9, 2, '3'])
puts div_con([8, 0, 0, 8, 5, 7, 2, 3, 7, 8, 6, 7])
puts div_con(['3', '5', '1'])
