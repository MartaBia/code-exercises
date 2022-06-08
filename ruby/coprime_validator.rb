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
  factor_n = []
  for i in 1 .. n
    if n % i == 0
      factor_n.push(i)
    end
  end
  factor_n
end

def coprime?(n, m)
  factor_n = get_factors(n)
  factor_m = get_factors(m)
  for i in 0 .. n.lenght - 1
    value = n[i]
    if factor_m.include?(value) && va
    end
  end
end

print get_factors(12)
print get_factors(39)
