
def encode(message, key)
  message_array = message.split("")
  key_array = key.to_s.split("")

  i = 0
  encoded_message = []
  message_array.each do |letter|
    letter_number = letter_to_number(letter)
    digit = key_array[i % key_array.length].to_i
    encoded_letter = letter_number + digit
    encoded_message.push(encoded_letter)
    i += 1
  end

  return encoded_message
end

def letter_to_number(letter)
  alphabet = [*"a" .. "z"]
  alphabet.find_index(letter) + 1
end

print encode("scout", 1939)
print encode("masterpiece", 1939)
