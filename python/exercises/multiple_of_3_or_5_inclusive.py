
# Write a function that, given a number, checks if it's a multiple of 3 or 5
# (or both) or not.
# Show that the function works by printing the results for 0, 2, 3, 4, 5, 10,
# 11, 15 and 30.

def is_multiple_of_3_or_5_inclusive(n):
    if n % 3 == 0:
        multiple = True
    elif n % 5 == 0:
        multiple = True
    else:
        multiple = False
    return multiple

# CLEANER SOLUTION:
# def is_multiple_of_3_or_5_inclusive(n):
#     return n % 3 == 0 or n % 5 == 0

multiple = is_multiple_of_3_or_5_inclusive(0)
print("Is 0 multiple of 3, 5 or both?", multiple)

multiple = is_multiple_of_3_or_5_inclusive(2)
print("Is 2 is multiple of 3, 5 or both?", multiple)

multiple = is_multiple_of_3_or_5_inclusive(3)
print("Is 3 multiple of 3, 5 or both?", multiple)

multiple = is_multiple_of_3_or_5_inclusive(4)
print("Is 4 multiple of 3, 5 or both?", multiple)

multiple = is_multiple_of_3_or_5_inclusive(5)
print("Is 5 multiple of 3, 5 or both?", multiple)

multiple = is_multiple_of_3_or_5_inclusive(10)
print("Is 10 multiple of 3, 5 or both?", multiple)

multiple = is_multiple_of_3_or_5_inclusive(11)
print("Is 11 multiple of 3, 5 or both?", multiple)

multiple = is_multiple_of_3_or_5_inclusive(15)
print("Is 15 multiple of 3, 5 or both?", multiple)

multiple = is_multiple_of_3_or_5_inclusive(30)
print("Is 30 multiple of 3, 5 or both?", multiple)
