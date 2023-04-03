def is_spell_correct(sentence)
  sentence_array = sentence.split(' ')
  corrected_sentence = []
  dictionary = ['hello', 'world', 'apple', 'one', 'two', 'three', 'i', 'have']

  sentence_array.each do |word|
    if dictionary.include?(word.downcase)
      corrected_sentence.push(word)
    else
      corrected_sentence.push("~#{word}~")
    end
  end

  return corrected_sentence.join(' ')
end
