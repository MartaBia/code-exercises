# Write a Ruby function that, given an integer n, returns
# the factorial of that number.
# Return nil if the input n is invalid.
# Be aware that by definition, 0! = 1.
#
# Examples:
# factorial(0) => 1
# factorial(1) => 1
# factorial(2) => 2
# factorial(3) => 6
# factorial(4) => 24
# factorial(5) => 120
# factorial(-5) => -120
# factorial(-6) => 720
# factorial("lol") => nil

def factorial(n)
  multiplication = 1

  return nil if !n.is_a?(Integer)

  return 1 if n == 0

  for i in 1 .. n
    multiplication *= i
  end

  if n < 0
    for i in n .. -1
       multiplication *= i
    end
  end

  return multiplication
end

puts factorial(0)
puts factorial(1)
puts factorial(2)
puts factorial(3)
puts factorial(4)
puts factorial(5)
puts factorial(-5)
puts factorial(-6)
puts factorial("lol")
