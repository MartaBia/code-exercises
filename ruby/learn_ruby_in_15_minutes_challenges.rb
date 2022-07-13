
# Write a conditional statement that will tell you if to go out for dinner
# if your bank balance is > 100.00 and return "stay at home " if not

def dinner_plans(bank_balance)
  if bank_balance >= 100
    "Go out for dinner"
  else
    "Stay at home"
  end
end

puts dinner_plans(132)
puts dinner_plans(97)

# Write a function that will let you say happy birthday to someone a given numeber of times

def say_happy_bithday(name, repetition)
  repetition.times{puts "Happy Birthday #{name}"}
end

say_happy_bithday("Marta", 3)
say_happy_bithday("Piripillo", 5)

# Write a function that will check whether the number given to it as an argument
# is positive or negative, or 0. Display a message with the answer.

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
  end
  song += "If you're happy and you know it #{default},\n"
end
 puts song

# Create an array of numbers and iterate over them displaying the number multiplied by 2

array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
array.each do |number|
  puts number * 2 
end

# DONE INDEPENDENTRLY: iterating over and array and displaying only numbers that are multiple of 2

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
