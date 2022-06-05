
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
