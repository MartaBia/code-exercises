# Verison with if/else:
def fizz_buzz(number)
  for i in 1 .. number
    final_string = ""

    final_string += "Fizz" if i % 3 == 0
    final_string += "Buzz" if i % 5 == 0
    final_string += "Tazz" if i % 7 == 0
    final_string += "Lol" if i % 11 == 0
    final_string += i.to_s if final_string == ""

    print "#{final_string}\n"
  end
end

# Hash version:

def fizz_buzz_hash(number)
  check = {
    3 => "Fizz",
    5 => "Buzz",
    7 => "Tazz",
    11 => "Lol",
  }

  for i in 0 .. number
    final_string = ""
    check.each do |key, value|
      if i % key == 0
        final_string += value
      else
        final_string += i.to_s
      end
    end
    print "#{final_string}\n"
  end
end


# Recursive version:
def fizz_buzz_recursive(number)
  if number != 1
    fizz_buzz_recursive(number - 1)
  end

  final_string = ""
  final_string += "Fizz" if i % 3 == 0
  final_string += "Buzz" if i % 5 == 0
  final_string += "Tazz" if i % 7 == 0
  final_string += "Lol" if i % 11 == 0
  final_string += i.to_s if final_string == ""
  print "#{final_string}\n"
end

# fizz_buzz(16)
fizz_buzz_hash(16)
# fizz_buzz_recursive(16)