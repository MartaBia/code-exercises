=begin
Complete the function that takes a non-negative integer n as input,
and returns a list of all the powers of 2 with
the exponent ranging from 0 to n ( inclusive ).
=end

# n = 0  ==> [1]        # [2^0]
# n = 1  ==> [1, 2]     # [2^0, 2^1]
# n = 2  ==> [1, 2, 4]  # [2^0, 2^1, 2^2]

def powers_of_two(n)
  powers_list = []
  for i in 0..n
    powers_list.push(2**i)
  end

  return powers_list
end

print powers_of_two(4)
