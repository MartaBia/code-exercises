
def change_letter(str)
  alphabet = ("a" .. "z").to_a
  characters = str.downcase.split("")
  vowels = ["a", "e", "i", "o", "u"]
  new_str = ""

# -- How I resolved it in the test -----------------

#   characters.each do |character|
#     i = alphabet.find_index(character)
#     if i == nil
#       new_str += character
#     else
#       new_letter = alphabet[(i + 1) % alphabet.length]
#       if vowels.include?(new_letter)
#         new_str += new_letter.upcase
#       else
#         new_str += new_letter
#       end
#     end
#   end
#   new_str
# end

# -- How I resolved it later ----------------------

characters.each do |character|
  if alphabet.include?(character)
    i = alphabet.find_index(character)
    new_letter = alphabet[(i + 1) % alphabet.length]
    if vowels.include?(new_letter)
      new_str += new_letter.upcase
    else
      new_str += new_letter
    end
  else
    new_str += character
  end
end
new_str
end



puts change_letter("Hello*3!!")
puts change_letter("abcdef123z")
