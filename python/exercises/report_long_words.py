# from lib.helpers import check_that_these_are_equal

# Write a function that takes a list of words and returns a
# report of all the words that are longer than 10 characters
# but don't contain a hyphen. If those words are longer than
# 15 characters, then they should be shortened to 15
# characters and have an ellipsis (...) added to the end.

# For example, if the input is:
# [
#   'hello',
#   'nonbiological',
#   'Kay',
#   'this-is-a-long-word',
#   'antidisestablishmentarianism'
# ]
# then the output should be:
# "These words are quite long: nonbiological, antidisestablis..."


def report_long_words(words):
    genuine_words = remove_hyphen(words)
    long_words = check_long_words(genuine_words)
    long_words_adjusted = short_longer_words(long_words)
    return print_output(long_words_adjusted)


def remove_hyphen(words):
    genuine_words = []
    for word in words:
        if "-" not in word:
            genuine_words.append(word)
    return genuine_words


def check_long_words(words):
    long_words = []
    for word in words:
        if len(word) > 10:
            long_words.append(word)
    return long_words


def short_longer_words(words):
    final_words = []
    for word in words:
        if len(word) > 15:
            final_words.append(f'{word[0:15]}...')
        else:
            final_words.append(word)
    return final_words


def print_output(words):
    final_sentence = ''
    for word in words:
        final_sentence += f"{word}, "
    stripped_sentence = final_sentence.rstrip(', ')
    return "These words are quite long: " + stripped_sentence


print(report_long_words([
    'hello',
    'nonbiological',
    'Kay',
    'this-is-a-long-word',
    'antidisestablishmentarianism'
]))

print(report_long_words([
    'cat'
]),)

# >> "These words are quite long: nonbiological, antidisestablis..."

# check_that_these_are_equal(
#     report_long_words([
#         'hello',
#         'nonbiological',
#         'Kay',
#         'this-is-a-long-word',
#         'antidisestablishmentarianism'
#     ]),
#     "These words are quite long: nonbiological, antidisestablis..."
# )

# check_that_these_are_equal(
#     report_long_words([
#         'cat',
#         'dog',
#         'rhinosaurus',
#         'rhinosaurus-rex',
#         'frog'
#     ]),
#     "These words are quite long: rhinosaurus"
# )

# check_that_these_are_equal(
#     report_long_words([
#         'cat'
#     ]),
#     "These words are quite long: "
# )
