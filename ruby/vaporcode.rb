=begin
Write a function that converts any sentence into a V A P O R W A V E sentence.
a V A P O R W A V E sentence converts all the letters into uppercase,
and adds 2 spaces between each letter (or special character)
to create this V A P O R W A V E effect.

Note that spaces should be ignored in this case.
=end

def vaporcode(string)
  characters = string.upcase.split("")
  new_string = ""
  characters.delete_if {|character| character == " " }
  characters.each do |character|
    new_string += "#{character.upcase}  "
  end
  new_string[0 ... new_string.length - 2]
end

puts vaporcode("Lets go to the movies")
puts vaporcode("Why isn't my code working?")
