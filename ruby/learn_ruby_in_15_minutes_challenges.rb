
#------ Conditionals-----------------------

def dinner_plans(bank_balance)
  if bank_balance >= 100
    "Go out for dinner"
  else
    "Stay at home"
  end
end

puts dinner_plans(132)
puts dinner_plans(97)

#------ Methods with 2 arguments ---------------

def say_happy_bithday(name, repetition)
  repetition.times{puts "Happy Birthday #{name}"}
end

say_happy_bithday("Marta", 3)
say_happy_bithday("Piripillo", 5)

#------ Methods -------------------------------

def positive_or_negative(n)
  if n > 0
    "The number is positive"
  elsif n == 0
    "The number is 0"
  else
    "The number is negative"
  end
end

puts positive_or_negative(5)
puts positive_or_negative(-5)
puts positive_or_negative(15)
puts positive_or_negative(-53)
puts positive_or_negative(0)

 #------ Hashes ---------------------------------
 #-- Literal notation --

 fruits = {
   "banana" => "yellow",
   "strawberry" => "red",
   "bluberry" => "blue",
   "mandarin" => "orange",
   "pear" => "green"
 }

 #-- Constructor notation --

fruits = Hash.new
fruits["banana"] = "yellow"
fruits["strawberry"] = "red"
fruits["bluberry"] = "blue"
fruits["mandarin"] = "orange"
fruits["pear"] = "green"

puts "#{fruits["banana"]}"
puts "#{fruits["mandarin"]}"

#-- Literal notation with symbols --

 fruits = {
   banana: "yellow",
   strawberry: "red",
   bluberry: "blue",
   mandarin: "orange",
   pear: "green"
 }

puts "#{fruits[:banana]}"
puts "#{fruits[:mandarin]}"

#------ Iterations ---------------------------------
#-- Iterating over arrays --

default = "clap you hands"
special = "and you really want to show it"
verse = [1, 2, 3, 4]
song = ""
verse.each do |x|
  if x == 3
    song += "If you're happy and you know it #{special},\n"
    next
  end
  song += "If you're happy and you know it #{default},\n"
end
 puts song

#--------------------------

 array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
 array.each do |number|
   next if number % 2 != 0
   puts number
 end

#-- Iterating over hashes --

capital_city = {
  England: "London",
  Spain: "Madrid",
  Jaoan: "Tokio",
  Italy: "Rome",
  France: "Paris",
  Germany: "Berlin",
  Portugal: "Lisbon"
}

capital_city.each do |country, capital|
  puts "#{country}'s capital is #{capital}."
end
