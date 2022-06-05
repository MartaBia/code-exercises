# Finding for the smallest

smallest = None
print("Before")

for value in [9, 41, 12, 3, 74, 15]:
    if smallest is None:
        smallest = value
    elif value < smallest:
        smallest = value
    print(smallest, value)

print("After", smallest)

# Finding for the biggest

biggest = None
print("Before")

for value in [9, 41, 12, 3, 74, 15]:
    if biggest is None:
        biggest = value
    elif value > biggest:
        biggest = value
    print(biggest, value)

print("After", biggest)
