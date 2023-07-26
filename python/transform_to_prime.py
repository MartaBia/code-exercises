# Given a List [] of n integers, find minimum number to be inserted in a list,
# so that sum of all elements of list should equal the closest prime number.

# Notes
# List size is at least 2.

# List's numbers will only positives (n > 0).

# Repetition of numbers in the list could occur.

# The newer list's sum should equal the closest prime number.

def minimum_number(numbers):
    sum = 0
    for number in numbers:
        sum += number
    prime_sum = 0

    while is_prime(sum) == False:
        prime_sum += 1
        sum += 1

    return prime_sum


def is_prime(number):
    sum = 0
    for i in range(2, number//2):
        if number % i == 0:
            sum += 1

    if sum == 0:
        return True
    else:
        return False


print(minimum_number([3, 1, 2]))
# => 1
print(minimum_number([5, 2]))
# => 0
print(minimum_number([1, 1, 1]))
# => 0
print(minimum_number([2, 12, 8, 4, 6]))
# => 5
print(minimum_number([50, 39, 49, 6, 17, 28]))
# => 2
