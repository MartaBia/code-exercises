# Imagine a spider web that is defined by two variables:

# - strength, measured as the weight in kilograms that the web holds. Strength + 1 elephant will break the web
# - length, measured as the number of elephants that fit one after the other on the web: )

# Paraphrasing the song "One elephant went out to play", how many elephants will the web hold if we put them one after the other, without breaking?

# You must take into account two things:

# elephants like to create super high pyramids, so, on each level of the structure fits one elephant less than in the previous one.
# elephants sitting on the first row weight 1000 kg, the ones sitting on the second row weight 2000 kg, and so on.
# When rows are full of elephants, next elephants go up one level, and weight 1000 kg more than the previous ones.

# -- Refactor: -----------------

def break_the_web(strength, width):
    if strength < 1000 or width <= 0:
        return 0

    elephant_weight = 1000
    total_weight = 0
    elephant_count = 0
    elephant_in_row = 0

    while strength >= total_weight and width > 0:
        elephant_in_row += 1
        elephant_count += 1
        total_weight += elephant_weight
        if elephant_in_row == width:
            elephant_in_row = 0
            elephant_weight += 1000
            width -= 1

    if strength < total_weight:
        elephant_count -= 1

    return elephant_count


# -- My solution: (does not pass the attempt stage) ------------

# def break_the_web(strength, width):
#     elephant_weight = 1000
#     elephant_count = 0
#     while strength >= 0:
#         for elephant in range(width):
#             strength -= elephant_weight
#             if strength < 0:
#                 return elephant_count
#             elephant_count += 1
#         width -= 1
#         if width == 0:
#             return elephant_count
#         elephant_weight += 1000
#     return elephant_count


print(break_the_web(10000, 3))
# >> 6
print(break_the_web(9200, 12))
# >> 9
print(break_the_web(9200, 3))
# >> 5
print(break_the_web(-1, 3))
# >> 0
print(break_the_web(10000, 0))
# >> 0
