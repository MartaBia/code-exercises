=begin
TASK
Write a function that accepts str string and key number and returns
an array of integers representing encoded str.

INPUT / OUTPUT
The str input string consists of lowercase characters only.
The key input number is a positive integer.
=end

def encode(message, key)
  alphabet = [*"a" .. "z"]
  message_array = message.split("")
  key_array = key.to_s.split("")

  i = 0
  encoded_message = []
  message_array.each do |letter|
    letter_number = alphabet.find_index(letter) + 1
    digit = key_array[i % key_array.length].to_i
    encoded_letter = letter_number + digit
    encoded_message.push(encoded_letter)
    i += 1
  end

  return encoded_message
end

print encode("scout", 1939)
print encode("masterpiece", 1939)
