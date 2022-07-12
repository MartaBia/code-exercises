
# There is a bus moving in the city, and it takes and drop some people in each bus stop.
# You are provided with a list (or array) of integer pairs.
# Elements of each pair represent number of people get into bus (The first item)
# and number of people get off the bus (The second item) in a bus stop.
# Your task is to return number of people who are still in the bus after t
# he last bus station (after the last array). Even though it is the last bus stop,
# the bus is not empty and some people are still in the bus, and they are probably sleeping there :D
#
# Please keep in mind that the test cases ensure that the number of people in the bus is always >= 0. So the return integer can't be negative.
#
# The second value in the first integer array is 0, since the bus is empty in the first bus stop.

def number(bus_stops)
  total_people = 0

  # SUPER FINAL VERSION AFTER SEEING THE SOLUTION AND UNDESTANDING MY MISTAKES
  bus_stops.each do |stop|
    total_people += stop[0] - stop[1]
  end

  # FIRST VERSION (BUT WRITTEN CORRECTLY)
  # for i in 0 ... bus_stops.length
  #   people_entering = bus_stops[i][0]
  #   people_alighting = bus_stops[i][1]
  #   total_people += people_entering
  #   total_people -= people_alighting
  # end

  # TOMMY'S SHORT VERSION (SUBMITTED)
  # for i un 0 ... bus_stops.length
  # total_people += bus_stops[i][0] - bus_stops[i][1]
  # end

  total_people
end


puts number([[10, 0], [3, 5], [5, 8]])
puts number([[3, 0], [9, 1], [4, 10], [12, 2], [6, 1], [7, 10]])
puts number([[3, 0], [9, 1], [4, 8], [12, 2], [6, 1], [7, 8]])
puts number([[48, 41], [87, 34], [99, 28], [6, 61], [69, 25], [11, 0]])
