# Write a function that takes a string of braces, and determines if the order of the braces is valid.
# It should return true if the string is valid, and false if it's invalid.

# All input strings will be nonempty, and will only consist of parentheses, brackets and curly braces: ()[]{}.

# What is considered Valid?
# A string of braces is considered valid if all braces are matched with the correct brace.

# Examples
# "(){}[]"   =>  True
# "([{}])"   =>  True
# "(}"       =>  False
# "[(])"     =>  False
# "[({})](]" =>  False

def valid_braces(string):
    open = ['(', '[', '{']
    close = [')', ']', '}']
    checklist = []
    for brace in string:
        if brace in close and len(checklist) == 0:
            return False
        if brace in close:
            close_brace_index = close.index(brace)
            last_of_checklist = checklist[-1]
            if last_of_checklist in open:
                open_brace_index = open.index(last_of_checklist)
                if close_brace_index == open_brace_index:
                    checklist.pop(-1)
                    continue

        checklist.append(brace)

    if len(checklist) == 0:
        return True
    else:
        return False


def valid_braces_dict(string):
    braces_dict = {
        ')': '(',
        ']': '[',
        '}': '{',
    }

    checklist = []

    for brace in string:
        if brace in braces_dict.keys():
            if len(checklist) == 0:
                return False

            last_of_checklist = checklist[-1]
            if last_of_checklist == braces_dict[brace]:
                checklist.pop(-1)
                continue

        checklist.append(brace)

    if len(checklist) == 0:
        return True
    else:
        return False


print(valid_braces('(){}[]'))
# True
print(valid_braces('([{}])'))
# True
print(valid_braces('(}'))
# False
print(valid_braces('(])'))
# False
print(valid_braces('({})](]'))
# False

print(valid_braces_dict('(){}[]'))
# True
print(valid_braces_dict('([{}])'))
# True
print(valid_braces_dict('(}'))
# False
print(valid_braces_dict('(])'))
# False
print(valid_braces_dict('({})](]'))
# False
