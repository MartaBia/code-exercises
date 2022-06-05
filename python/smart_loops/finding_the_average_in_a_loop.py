
count = 0
sum = 0
print("Before", count, sum)
for i in [9, 41, 12, 3, 74, 15]:
    count = count + 1
    sum = sum + i
    # print(count, sum, i) not really useful, just example
print("After", count, sum, sum/count)

# 1. I start creating two variables before my loop: one for the 'count' and one for the 'sum'
# 2. I do my loop and inside I reassign the two variables with the following operations:
#    - count + 1
#    - sum + i
#   this way my loop will count each passage and then make the sum of the elements
# 3. to obtain the average, outside the loop I create the operation sum/count
