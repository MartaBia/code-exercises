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
#
# Lastly, write two additional Ruby functions, called nth_fibonacci2 and
# fibonacci_series2. They should work exactly as the normal version, but instead
# of implementing them using the Fibonacci calculations, implement them by
# calling the opposite normal version function, i.e. by calling fibonacci_series
# inside nth_fibonacci2 and by calling nth_fibonacci inside fibonacci_series2.

# --- nth_fibonacci ------------------------------

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

puts "nth_fibonacci:"
puts nth_fibonacci(0)
puts nth_fibonacci(1)
puts nth_fibonacci(2)
puts nth_fibonacci(7)
puts nth_fibonacci(-3)
puts nth_fibonacci("asd")

# --- fibonacci_series ------------------------------

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

puts "\n\nfibonacci_series:"
print fibonacci_series(0)
print fibonacci_series(1)
print fibonacci_series(2)
print fibonacci_series(7)
print fibonacci_series(-3)
print fibonacci_series("asd")

# --- nth_fibonacci2 ------------------------------

def nth_fibonacci2(n)
  series = fibonacci_series(n)

  return nil if series.empty?

  series[n - 1]
end

puts "\n\nnth_fibonacci2:"
puts nth_fibonacci2(0)
puts nth_fibonacci2(1)
puts nth_fibonacci2(2)
puts nth_fibonacci2(7)
puts nth_fibonacci2(-3)
puts nth_fibonacci2("asd")

# --- fibonacci_series2 ------------------------------

def fibonacci_series2(n)
  series = []

  return series if n.is_a?(Integer) == false

  for i in 1 .. n
    series.push(nth_fibonacci(i))
  end

  return series
end

puts "\n\nfibonacci_series2:"
print fibonacci_series2(0)
print fibonacci_series2(1)
print fibonacci_series2(2)
print fibonacci_series2(7)
print fibonacci_series2(-3)
print fibonacci_series2("asd")
