# In this kata you will be summing together multiple factorials.
# you will be given a list of values that you must first find the factorial, and then return their sum.
# For example if you are passed the list [4, 6] the equivalent mathematical expression would be 4! + 6! which would equal 744.
import math


def sum_factorial(lst):
    sum = 0
    for i in lst:
        factorial = math.factorial(i)
        sum += factorial
    return sum


print(sum_factorial([4, 6]))
# 744
print(sum_factorial([5, 4, 1]))
# 145
