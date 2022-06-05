# Write a Ruby function called nth_fibonacci that, given a positive integer n,
# returns n-th number of the Fibonacci sequence (where the first
# two elements of the sequence are 0 and 1, respectively).
# Return nil if the input n is invalid.
#
# Examples:
# nth_fibonacci(0) => nil
# nth_fibonacci(1) => 0
# nth_fibonacci(2) => 1
# nth_fibonacci(7) => 8
# nth_fibonacci(-3) => nil
# nth_fibonacci("asd") => nil
#
# Write a second Ruby function called fibonacci_series that, given a positive
# integer n, returns the list of the first n numbers of the Fibonacci sequence
# (where the first two elements of the sequence are 0 and 1, respectively).
# Return an empty list if the input n is invalid.
#
# Examples:
# fibonacci_series(0) => []
# fibonacci_series(1) => [0]
# fibonacci_series(2) => [0, 1]
# fibonacci_series(7) => [0, 1, 1, 2, 3, 5, 8]
# fibonacci_series(-3) => []
# fibonacci_series("asd") => []

def nth_fibonacci(n)
  second_last = 0
  last = 0

  return nil if !n.is_a?(Integer) || n <= 0

  for i in 1 .. n
    if i == 2
      last = 1
    elsif i > 2
      next_number = (second_last + last)
      second_last = last
      last = next_number
    end
  end

  return last
end

puts nth_fibonacci(0)
puts nth_fibonacci(1)
puts nth_fibonacci(2)
puts nth_fibonacci(7)
puts nth_fibonacci(-3)
puts nth_fibonacci("asd")

def fibonacci_series(n)
  second_last = 0
  last = 1
  series = []

  return [] if n.is_a?(Integer) == false || n <= 0

  for i in 1 .. n
    if i == 1
      series.push(second_last)
    elsif i == 2
      series.push(last)
    else
      nth_number = (second_last + last)
      series.push(nth_number)
      second_last = last
      last = nth_number
    end
  end

  return series
end

print fibonacci_series(0)
print fibonacci_series(1)
print fibonacci_series(2)
print fibonacci_series(7)
print fibonacci_series(-3)
print fibonacci_series("asd")
