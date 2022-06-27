=begin
Write a program to determine if the two given numbers are coprime.
A pair of numbers are coprime if their greatest shared factor is 1.

The inputs will always be two positive integers between 2 and 99.

Examples
20 and 27:

Factors of 20: 1, 2, 4, 5, 10, 20
Factors of 27: 1, 3, 9, 27
Greatest shared factor: 1
Result: 20 and 27 are coprime
12 and 39:

Factors of 12: 1, 2, 3, 4, 6, 12
Factors of 39: 1, 3, 13, 39
Greatest shared factor: 3
Result: 12 and 39 are not coprimes
=end

def get_factors(n)
  factors_n = []
  for i in 1 .. n
    factors_n.push(i) if n % i == 0
  end
  factors_n
end

def coprime?(n, m)
  factors_n = get_factors(n)
  factors_m = get_factors(m)
  for i in 1 .. factors_n.length - 1 # I begin to loop from index 1 as at index 0 I always get the value 1, which is always in common
    value = factors_n[i]
    return false if factors_m.include?(value)
  end
  true

  #TOMMY'S SOLUTION:
  # (factors_n & factors_m).length == 1
end

puts coprime?(20, 27)
puts coprime?(12, 39)
