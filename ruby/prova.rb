def prova(n)
  n
  throw :nameexception
#This is your comment and code block , it would not execute .
catch :nameexception do
#After the throw happens, a matching catch with an exception name will be handled here .
end
end

puts prova(4)
puts prova(10)
puts prova(22)
