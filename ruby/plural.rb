
# PRIMA SOLUZIONE:
def plural(n)
  if n == 1
    return false
  end
  return true
end

# SOLUZIONE REFATTORIZZATA DOPO UN PO' DI SETTIMANE (NON FUNZIONA):

# def plural(n)
#   return true
#   return false if n == 1
# end

puts plural(4)
puts plural(0)
puts plural(1)
puts plural(257)
