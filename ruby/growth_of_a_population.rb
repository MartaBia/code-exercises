=begin
In a small town the population is p0 = 1000 at the beginning of a year.
The population regularly increases by 2 percent per year and moreover 50 new inhabitants per year come to live in the town.
How many years does the town need to see its population greater or equal to p = 1200 inhabitants?
=end

def nb_year(p0, percent, aug, final_population)
  years = 0
  while p0 < final_population
    p0 += (p0 * percent / 100.0 + aug).to_i
    years += 1
  end
  years
end

puts nb_year(1500, 5, 100, 5000)
puts nb_year(1500000, 2.5, 10000, 2000000)
puts nb_year(1500000, 0.25, 1000, 2000000)
