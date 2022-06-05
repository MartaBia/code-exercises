
count = 0
print("Before", count)
for i in [9, 41, 12, 3, 74, 15]:
    count = count + 1
    print(count, i)
print("After", count)

# 1. I start creating a variable before my loop which will be the 'count' variable
# 2. I do my loop and inside I reassign the variable with the operation count + 1,
#   this way my loop will count each passage
# 3. If I want each passage to be counted I add a print() inside the loop
# 4. If I want to count only the count's total I add a print() outside the loop
