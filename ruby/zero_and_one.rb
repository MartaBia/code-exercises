=begin
You have a string that consists of zeroes and ones.
Now choose any two adjacent positions in the string:
if one of them is 0, and the other one is 1, remove these two digits from the string.
=end


def zero_and_one(string)
  str_numbers = string.split("")
  new_string = []
  i = 0
  while i < str_numbers.length
    if str_numbers[i] == str_numbers[i + 1] || i == str_numbers.length - 1
      new_string.push(str_numbers[i])
      i += 1
    else
      i += 2
    end
  end
  new_string.length
end


puts zero_and_one("10100")
puts zero_and_one("11101111")
puts zero_and_one("01")
puts zero_and_one("10")
puts zero_and_one("110110")
puts zero_and_one("110100")
