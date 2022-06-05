
# You are given array of integers, your task will be to count all pairs in that array and return their count.
#
# Notes:
#
# Array can be empty or contain only one value; in this case return 0
# If there are more pairs of a certain number, count each pair only once.
# E.g.: for [0, 0, 0, 0] the return value is 2 (= 2 pairs of 0s)
# Random tests: maximum array length is 1000, range of values in array is between 0 and 1000

# O(n^2) complexity
def pairs(array)
  pairs_count = 0

  for i in 0 .. array.length - 1
    value_1 = array[i]
    next if value_1 == nil

    for j in i + 1 .. array.length - 1
      value_2 = array[j]

      if value_1 == value_2
        pairs_count += 1
        array[j] = nil
        break
      end
    end
  end

  pairs_count
end

# O(2n) complexity
# def pairs_o_2n(array)
#   numbers_hash = Hash.new
#
#   for i in 0 .. array.length - 1
#     num = array[i]
#     if !numbers_hash.key?(num)
#       numbers_hash[num] = 0
#     end
#     numbers_hash[num] += 1
#   end
#
#   pairs_count = 0
#   numbers_hash.each do |key, value|
#     pairs_count += value / 2
#   end
#
#   pairs_count
# end

# O(n) complexity
# def pairs_o_n(array)
#   pairs_count = 0
#   numbers_hash = Hash.new
#
#   for i in 0 .. array.length - 1
#     num = array[i]
#     if !numbers_hash.key?(num)
#       numbers_hash[num] = 0
#     end
#     numbers_hash[num] += 1
#
#     if (numbers_hash[num] % 2 == 0)
#       pairs_count += 1
#     end
#   end
#
#   pairs_count
# end


puts pairs([1, 2, 5, 6, 5, 2])
puts pairs([1, 2, 2, 20, 6, 20, 2, 6, 2])
puts pairs([0, 0, 0, 0, 0, 0, 0])
puts pairs([1000, 1000])
puts pairs([])
puts pairs([54])
