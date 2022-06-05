
largest = None
smallest = None

while True:
    number_str = input("Enter a number: ")

    try:
        number = int(number_str)
        
        if smallest is None or number < smallest:
            smallest = number

        if largest is None or number > largest:
            largest = number
    except:
        if number_str == "done":
            break
        else:
            print("Invalid input")

print("Maximum is", largest)
print("Minimum is", smallest)
