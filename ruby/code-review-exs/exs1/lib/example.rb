def music_filter(sound_wave, lowest_value, highest_value)
  lowest_value = 40 if lowest_value == nil
  highest_value = 1000 if highest_value == nil
  fail 'Frequencies needs to be inserted' if sound_wave.empty?

  sound_wave.map do |freq|
    if freq > highest_value
      freq = highest_value
    elsif freq < lowest_value
      freq = lowest_value
    else
      freq
    end
  end
end