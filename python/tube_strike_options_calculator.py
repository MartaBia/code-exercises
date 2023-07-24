# You must create a function which takes three parameters;
# walking distance home, distance the bus must travel, and the combined distance of walking from the office
# to the bus stop and from the bus stop to your house. All distances are in kilometres.
# So for example, if your home is 5km away by foot, and the bus that takes you home travels 6km,
# but you have to walk 500 metres to the bus stop to catch it and 500 metres to your house once the bus arrives
# (i.e. 1km in total), which is faster, walking or taking the bus?

# Example - Which of these is faster?:

# Start---Walk 5km--->End
# Start---Walk 500m---Bus 6km---Walk 500m--->End
# Walking speed and bus driving speed have been given to you as two pre-loaded variables ($global_variables in Ruby).

# walk = 5 (km/hr) bus = 8 (km/hr)

# The function must return the fastest option, either "Walk" or "Bus".
# If the walk is going to be over 2 hours, the function should recommend that you take the bus.
# If the walk is going to be under 10 minutes, the function should recommend that you walk.
# If both options are going to take the same amount of time, the function should recommend that you walk

walk_speed = 5  # (km/hr)
bus_speed = 8  # (km/hr)


def calculator(distance, bus_drive, bus_walk):
    walk_time = distance / walk_speed

    if (walk_time < 0.16):
        return "Walk"
    elif (walk_time > 2.0):
        return "Bus"

    bus_time = (bus_drive / bus_speed) + (bus_walk / walk_speed)

    return "Bus" if (bus_time < walk_time) else "Walk"


print(calculator(5, 6, 1))
# "Bus"
print(calculator(4, 5, 1))
# "Walk"
print(calculator(5, 8, 0))
# "Walk"
print(calculator(5, 4, 3))
# "Walk"
print(calculator(11, 15, 2))
# "Bus"
print(calculator(0.6, 0.4, 0))
"Walk"
print(calculator(10, 0.4, 0))
# "Bus"
