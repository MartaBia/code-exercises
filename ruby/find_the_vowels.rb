=begin
We want to know the index of the vowels in a given word, for example,
there are two vowels in the word super (the second and fourth letters).

So given a string "super", we should return a list of [2, 4].
=end

def vowel_indices(word)
	downcase_word = word.downcase
	vowels = ["a", "e", "i", "o", "u", "y"]
	vowels_list = []

  word_array = downcase_word.split("")
	i = 1
  word_array.each do |letter|
    if vowels.include?(letter)
			vowels_list.push(i)
    end
		i += 1
	end

	# ALTERNATIVE METHOD
	# for i in 0 .. word_array.length
	# 	letter = word_array[i]
	# 	if vowels.include?(letter)
	# 		vowels_list.push(i+1)
	# 	end
	# end

	return vowels_list
end

vowel_indices("abbA") # output: [1, 4]
vowel_indices("sAssoYou")
