
# Write a function that, given a number, checks if it's a multiple of 3 or not.
# Show that the function works by printing the results for 0, 1, 2, 3, 7 and 24.

def is_multiple_of_3(n):
    if n % 3 == 0:
        multiple = True
    else:
        multiple = False
    return multiple

# CLEANER SOLUTION:
# def is_multiple_of_3(n):
#     return n % 3 == 0

multiple = is_multiple_of_3(0)
print("0 is multiple of 3?", multiple)

multiple = is_multiple_of_3(1)
print("1 is multiple of 3?", multiple)

multiple = is_multiple_of_3(2)
print("2 is multiple of 3?", multiple)

multiple = is_multiple_of_3(3)
print("3 is multiple of 3?", multiple)

multiple = is_multiple_of_3(7)
print("7 is multiple of 3?", multiple)

multiple = is_multiple_of_3(24)
print("24 is multiple of 3?", multiple)
