=begin
Given an array describing the color of each glove, return the number of pairs you can constitute,
assuming that only gloves of the same color can form pairs.

Examples:
input = ["red", "green", "red", "blue", "blue"]
result = 2 (1 red pair + 1 blue pair)

input = ["red", "red", "red", "red", "red", "red"]
result = 3 (3 red pairs)
=end

def number_of_pairs(gloves)
  pairs = 0
  return 0 if gloves.empty?

  for i in 0 .. gloves.length - 1
    glove_1 = gloves[i]
    next if glove_1 == nil
    for j in i + 1 .. gloves.length - 1
      glove_2 = gloves[j]
      if glove_1 == glove_2
        pairs += 1
        gloves[j] = nil
        break
      end
    end
  end

  pairs
end


puts number_of_pairs(["red","red"])
puts number_of_pairs(["red","green","blue"])
puts number_of_pairs(["gray","black","purple","purple","gray","black"])
puts number_of_pairs([])
puts number_of_pairs(["red","green","blue","blue","red","green","red","red","red"])
