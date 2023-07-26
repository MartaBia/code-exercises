# Given a number n, draw stairs using the letter "I", n tall and n wide, with the tallest in the top left.

# For example n = 3 result in:

# "I\n I\n  I"
# or printed:

# I
#  I
#   I

def draw_stairs(n):
    final_string = ''
    for i in range(n):
        for j in range(i):
            final_string += " "
        final_string += "I\n"
    return final_string[0:len(final_string)-1]


print(draw_stairs(3))
#  '''I\n I\n  I''')
print("------------------")
print(draw_stairs(5))
# '''I\n I\n  I\n   I\n    I'''
