# Given an array of integers.
#
# Return an array, where the first element is the count of positives numbers
# and the second element is sum of negative numbers.
# 0 is neither positive nor negative.
#
# If the input is an empty array or is null, return an empty array.
#
# Example
# For input [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, -11, -12, -13, -14, -15]
# you should return [10, -65].


def count_positives_sum_negatives(lst)
  if lst.nil? || lst.empty?
      return []
  end

  count_and_sum = []
  count = 0
  sum = 0
  lst.each do |x|
    if x > 0
      count += 1
    elsif x < 0
      sum += x
    end
  end

  count_and_sum.push count
  count_and_sum.push sum
  return count_and_sum
end

print count_positives_sum_negatives([0, 2, 3, 0, 5, 6, 7, 8, 9, 10, -11, -12, -13, -14])
print "\n"

print count_positives_sum_negatives([])
print "\n"

print count_positives_sum_negatives(nil)
print "\n"
