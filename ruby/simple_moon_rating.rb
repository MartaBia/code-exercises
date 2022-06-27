
# When you look at movie ratings, you usually see it as decimal numbers
# representing average of all viewers' votes.
# While it is very informative, it's not very visually appealing.
# That's what stars, or in our case- moons, are created for.
#
# Your task is to transform decimal number rating, which is in range 0-10, into 5-moons scale.
# Your final rating should be rounded to "0.5" (nearest half moon).
# Input is always valid.
#
#
# Write a function which returns valid rating
# represented as moons ('o','c','x') in single string.



def moon_rating(rating)
  moons = ""
  moon_rating = (rating.to_f / 2).divmod(1) 

  for i in 1 .. moon_rating[0]
    moons += "o"
  end

  if moon_rating[0] < 5
    if moon_rating[1] >= 0 && moon_rating[1] < 0.25
      moons += "x"
    elsif moon_rating[1] >= 0.25 && moon_rating[1] < 0.75
      moons += "c"
    elsif moon_rating[1] >= 0.75 && moon_rating[1] < 1
      moons += "o"
    end

    for i in moon_rating[0] + 2 .. 5
      moons += "x"
    end
  end

  moons
end

puts moon_rating(0) # ==> "xxxxx"
puts moon_rating(0.6) # ==> "cxxxx"
puts moon_rating(1.5) # ==> "oxxxx"
puts moon_rating(3.9) # ==> "ooxxx"
puts moon_rating(5) # ==> "oocxx"
puts moon_rating(6) # ==> "oooxx"
puts moon_rating(7.2) # ==> "ooocx"
puts moon_rating(8.7) # ==> "ooooc"
puts moon_rating(10) # ==> "ooooo"
