# Now that you’re back to school for another term, you need to remember how to work the combination lock on your locker.
# The lock has a dial with 40 calibration marks numbered 0 to 39 in clockwise order.
# A combination of this lock consists of 3 of these numbers; for example: 15-25-8.

# To open the lock, the following steps are taken:

# 1. Turn the dial clockwise 2 full turns
# 2. Continue turning clockwise until the 1st number is reached
# 3. Turn the dial counter-clockwise 1 full turn
# 4. Continue turning counter-clockwise until the 2nd number is reached
# 5. Turn the dial clockwise again until the 3rd number is reached
# 6. Pull the shank and the lock will open.

# Given the initial position of the dial and the combination for the lock,
# how many degrees is the dial rotated in total (clockwise plus counter-clockwise) in opening the lock?

def degrees_of_lock(initial, first, second, third):
    total_degrees = 1080

    if initial < first:
        total_degrees += (first - initial) * 9
        print(f'total degrees: {total_degrees}')
    else:
        total_degrees += (40 + (first - initial)) * 9

    if first > second:
        total_degrees += (first - second) * 9
        print(f'total degrees: {total_degrees}')
    else:
        total_degrees += (40 - (first - second)) * 9

    if second < third:
        print(f'total degrees: {total_degrees}')
        total_degrees += (third - second) * 9
        print(f'total degrees: {total_degrees}')
    else:
        total_degrees += (40 - (third - second)) * 9

    return total_degrees


# A few examples are:
# print(degrees_of_lock(0, 30, 0, 30))
# # # -> 1350
# print(degrees_of_lock(5, 35, 5, 35))
# -> 1350
# print(degrees_of_lock(0, 20, 0, 20))
# # -> 1620
# print(degrees_of_lock(7, 27, 7, 27))
# -> 1620
print(degrees_of_lock(0, 10, 0, 10))
# # -> 1890
print(degrees_of_lock(9, 19, 9, 19))
# -> 1890
