# Write a Ruby function that, given a positive integer n,
# returns the n-th multiple of 3.
# Implement such a function in a recursive way.

def m3(n)
  if n == 0
    return 0
  else
    return m3(n-1) + 3
  end
end

puts m3(5)
