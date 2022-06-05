
sum = 0
print("Before", sum)
for i in [9, 41, 12, 3, 74, 15]:
    sum = sum + i
    print(sum, i)
print("After", sum)

# 1. I start creating a variable before my loop which will be the 'sum' variable
# 2. I do my loop and inside I reassign the variable with the operation sum + i,
#   this will sum all the numbers in my loop
# 3. If I want each passage of the sum, I add a print() inside the loop
# 4. If I want to count only the sum's total I add a print() outside the loop
