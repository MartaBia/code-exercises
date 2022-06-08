# Write a Ruby function that, given a positive integer n,
# returns the factorial of that number.
# Implement such a function in a recursive way.

def factorial(n)
  return 1 if n == 0

  factorial(n-1) * n
end

puts factorial(0)
puts factorial(1)
puts factorial(2)
puts factorial(3)
puts factorial(4)
puts factorial(5)
