# Write a function that will tell you if a number is odd or even

def odd_or_even(n)
  if n == 0
    "The numeber is 0"
  elsif n % 2 == 0
    "The numeber is even"
  else
    "The numeber is odd"
  end
end

puts odd_or_even(3)
puts odd_or_even(-40)
puts odd_or_even(2)
puts odd_or_even(0)

# Write a function that takes a number and returns the square of the number

def square(n)
  n ** 2
end

puts square(2)
puts square(4)
puts square(237)

# Write a function called "shout" that takes a String as an input and returns that string in capital letters

def shout(string)
  string.upcase
end

puts shout("ciao")
puts shout("no")
puts shout("Evviva")

# Write a "greeter" function that takes a name as an input and returns the greeter

def greeter(name)
  "Hello #{name}! How are you today?"
end

puts greeter("Marta")
puts greeter("Dana")

# Iterate over an array of numbers to display the square of each number in the array

array = [1, 2, 3, 4, 5, 6]
array.each do |number|
  puts number ** 2
end

# Iterate over an array of numbers and only display even numbers

array = [1, 2, 3, 4, 5, 6, 7, 8]
array.each do |number|
  puts number if number % 2 == 0
end

# Create a hash containing you 5 best friends,
#with each person's name as the key and their age as the value.
#Iterate over it to display 5 examples that look like:
# > "Dana is 28 years old"

friends = {
  Francesca: 29,
  Sofia: 30,
  Maryam: 28,
  Federica: 32,
  Nessun_altro: 0
}

friends.each do |name, age|
  puts "#{name} is #{age} years old"
end
