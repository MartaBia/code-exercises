# You received a whatsup message from an unknown number. Could it be from that girl/boy with a foreign accent you met yesterday evening?
# Write a simple function to check if the string contains the word hallo in different languages.

# These are the languages of the possible people you met the night before:

# hello - english
# ciao - italian
# salut - french
# hallo - german
# hola - spanish
# ahoj - czech republic
# czesc - polish

def validate_hello(greetings):
    possible_greetings = [
        "hello", "ciao", "salut", "hallo", "hola", "ahoj", "czesc"
    ]

    words = greetings.split()
    final_words = ""
    for word in words:
        final_words += f"{remove_special_character(word)} "

    for word in final_words.split():
        if word.lower() in possible_greetings:
            return True

    return False


def remove_special_character(word):
    special_characters = [".", ",", "?", "!", ":", ";", "*"]
    characters = list(word)

    for character in characters:
        if character in special_characters:
            characters.remove(character)
    return ''.join(characters)

# -- Super clever version found on Codewars: ----------------------

# def validate_hello(greetings):
#     possible_greetings = [
#         "hello", "ciao", "salut", "hallo", "hola", "ahoj", "czesc"
#     ]

#     for greet in possible_greetings:
#         if greet in greetings.lower():
#             return True

#     return False


print(validate_hello('hello'))
print(validate_hello('ciao bella!'))
print(validate_hello('salut'))
print(validate_hello('hallo, salut'))
print(validate_hello('hombre! Hola!'))
print(validate_hello('AHOJ'))
print(validate_hello('meh'))
