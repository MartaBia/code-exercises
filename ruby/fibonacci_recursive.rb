# Write a Ruby function that, given a positive integer n,
# returns n-th number of the Fibonacci sequence (where the first
# two elements of the sequence are 0 and 1, respectively).
# Implement such a function in a recursive way.
# Return nil if the input n is invalid.

def fibonacci(n)
  return nil if !n.is_a?(Integer)
  return nil if n <= 0

  if n == 1
    return 0
  elsif n == 2
    return 1
  else
    return fibonacci(n-1) + fibonacci(n-2)
  end
end

puts "fibonacci:"
puts fibonacci(0)
puts fibonacci(1)
puts fibonacci(2)
puts fibonacci(7)
puts fibonacci(-3)
puts fibonacci("asd")
