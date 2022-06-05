# Write a function called fizz_buzz that takes one argument n, such that
# the function prints the first n integers, but prints "Fizz" if the
# integer is divisible by 3, "Buzz" if it's divisible by 5 and "FizzBuzz"
# if it's divisible by both 3 and 5.
#
# Eiample:
# fizz_buzz(15)
#
# Output:
# 1
# 2
# Fizz
# 4
# Buzz
# Fizz
# 7
# 8
# Fizz
# Buzz
# 11
# Fizz
# 13
# 14
# FizzBuzz

def fizz_buzz(n)
  # n.times do |i|
  for i in 1..n
    output = ""

    if i % 3 == 0
      output += "Fizz"
    end

    if i % 5 == 0
      output += "Buzz"
    end

    if i % 7 == 0
      output += "Woof"
    end

    if output.empty?
      output = i
    end

    puts output
    # puts "bla bla" ==> print "bla bla\n"
  end
end

=begin
HOW I RESOLVED IT:

def fizz_buzz(n)

  for i in 1..n

    if i % 3 == 0 && i % 5 == 0
      puts "FizzBuzz"
    elsif i % 3 == 0
        puts "Fizz"
    elsif i % 5 == 0
        puts "Buzz"
    else
      puts i
    end
  end
end
=end

fizz_buzz(15)
