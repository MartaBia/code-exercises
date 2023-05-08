def MathChallenge(num):
    print(f'num: {num}')
    if num > 0:
        if num == 1:
            return 'true'
        if num % 2 == 0:
            new_number = num // 2
            return MathChallenge(new_number)
    return 'false'


print(MathChallenge(8))
print(MathChallenge(124))
