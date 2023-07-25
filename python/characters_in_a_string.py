# The main idea is to count all the occurring characters in a string.
# If you have a string like aba, then the result should be {'a': 2, 'b': 1}.

# What if the string is empty? Then the result should be empty object literal, {}.


def count(s):
    characters_count = {}

    for character in s:
        if character in characters_count:
            characters_count[character] += 1
        else:
            characters_count[character] = 1

    return characters_count


print(count('aba'))
# {'a': 2, 'b': 1}
print(count(''))
# {}
print(count('aa'))
# {'a' : 2}
print(count('aabb'))
# {'b' : 2, 'a' : 2}
