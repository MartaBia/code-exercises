# Create a function that:
#
# * Gets rid of junk data
# * Converts negative integers to positive numbers
# * Creates a graph of how frequently each number shows up

# example_numbers = [1, 2, 3, -2, -2, 2, None, -3, 4, 4, None, 3, 3, 2, 2, 1]

# Desired output:
# 1: xx
# 2: xxxxxx
# 3: xxxx
# 4: xx

def generate_frequency_graph(numbers):
    integers = is_integer(numbers)
    positive_numbers = convert_numbers(integers)
    frequency = check_frequency(positive_numbers)
    return create_graph(frequency)


def is_integer(numbers):
    integers = []
    for number in numbers:
        if isinstance(number, int):
            integers.append(number)
    return integers


def convert_numbers(numbers):
    positive_numbers = []
    for number in numbers:
        if number < 0:
            positive_numbers.append(number * -1)
        else:
            positive_numbers.append(number)
    return positive_numbers


def check_frequency(numbers):
    frequency = {}
    for number in numbers:
        if number not in frequency:
            frequency[number] = "x"
        else:
            frequency[number] = frequency[number] + "x"
    return frequency


def create_graph(frequency):
    for number in frequency:
        print(f'{number}: {frequency[number]}')


generate_frequency_graph(
    [1, 2, 3, -2, -2, 2, None, -3, 4, 4, None, 3, 3, 2, 2, 1])
