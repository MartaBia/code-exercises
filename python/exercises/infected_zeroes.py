# In this kata, the number 0 is infected.
# You are given a list. Every turn, any item in the list that is adjacent to a 0 becomes infected
# and transforms into a 0. How many turns will it take for the whole list to become infected?

# [0,1,1,0] ==> [0,0,0,0]
# All infected in 1 turn.

# [1,1,0,1,1] --> [1,0,0,0,1] --> [0,0,0,0,0]
# All infected in 2 turns

# [0,1,1,1] --> [0,0,1,1] --> [0,0,0,1] --> [0,0,0,0]
# All infected in 3 turns.

def infected_zeroes(lst):
    turns = 0

    while can_continue(lst):
        print('And now print when is here!')
        for i, num in enumerate(lst):
            if num != 0:
                if lst[i - 1] or lst[i - 1] == 0:
                    num = 0
            turns += 1
            for num in lst:
                if num != 0:
                    continue
                else:
                    break

    return turns


def can_continue(lst):
    print('Print when is here!')
    for num in lst:
        if num != 0:
            return True

    return False


# print(infected_zeroes([0]))
print(infected_zeroes([0, 1, 1, 0]))
# print(infected_zeroes([0, 1, 1, 1, 0]))
# print(infected_zeroes([1, 1, 0, 1, 1]))
# print(infected_zeroes([0, 1, 1, 1]))
# print(infected_zeroes([1, 1, 1, 0]))
