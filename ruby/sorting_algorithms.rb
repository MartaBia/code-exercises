# Implement the following sorting algorithms as classes:
# Insertion Sort,
# Selection Sort,
# Bubble Sort,
# Merge Sort,
# Quick Sort.
# Check the RubySort class for the desired structure of these classes.
# Implement each class and add a new instance to the sorters array for testing.
# Set use_debug_array to true to use a short array (always shuffled in the same way),
# set it to false to use the actual test array (randomly shuffled).

class RubySort
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def sort(array)
    array.sort
  end
end

class InsertionSort
  attr_reader :name

  def initialize(name)
      @name = name
  end

  def sort(array)
    for i in 1 ... array.length
      while i > 0 && array[i] < array[i - 1]
        temp = array[i]
        array[i] = array[i-1]
        array[i-1] = temp
        i -= 1
      end
    end
    array
  end
end

use_debug_array = true
sorters = [
  RubySort.new("Ruby Sort"),
  InsertionSort.new("Insertion Sort"),
]

# === Test Code - do not touch =========================================================

test_array_expected = (1..20000).to_a
test_array = test_array_expected.shuffle

debug_array_expected = (1..10).to_a
debug_array = debug_array_expected.shuffle(random: Random.new(69))

array_expected = use_debug_array ? debug_array_expected : test_array_expected
array = use_debug_array ? debug_array : test_array

all_tests_passed = true
sorters.each do |sorter|
  puts "\n"
  puts "Sorting Algorithm: #{sorter.name}"

  starting_time = Process.clock_gettime(Process::CLOCK_MONOTONIC)
  array_sorted = sorter.sort(array)
  ending_time = Process.clock_gettime(Process::CLOCK_MONOTONIC)
  elapsed_time = ending_time - starting_time
  puts "Elapsed Time: #{elapsed_time} seconds"

  test_passed = array_sorted == array_expected
  all_tests_passed &= test_passed
  result_str = test_passed ? "Passed! :)" : "Failed"
  puts "Result: #{result_str}"
end
puts "\n"

if all_tests_passed
  puts "All tests passed! :D"
else
  puts "Some test failed"
end
puts "\n"
