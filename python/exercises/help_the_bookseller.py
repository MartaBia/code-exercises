# A bookseller has lots of books classified in 26 categories labeled A, B, ... Z.
# Each book has a code c of 3, 4, 5 or more characters. The 1st character of a code is a capital letter which defines the book category.
# In the bookseller's stocklist each code c is followed by a space and by a positive integer n (int n >= 0) which indicates the quantity of books of this code in stock.

# You will be given a stocklist L and a list of categories M in capital letters
# and your task is to find all the books of the stocklist L with codes belonging to each category of M and to sum their quantity according to each category.

def stocklist(stocklist, cathegories):
    if not stocklist or not cathegories:
        return ''

    result = {}
    for letter in cathegories:
        result[letter] = 0

    for code in stocklist:
        first_letter = code[0]
        if first_letter in cathegories:
            numbers_of_books_str = (code.split())[1]
            numbers_of_books = int(numbers_of_books_str)
            result[first_letter] += numbers_of_books

    final_string = ''
    for cathegory in result:
        final_string += f'({cathegory} : {result[cathegory]}) - '
    return final_string[0:len(final_string) - 3]


b = ["BBAR 150", "CDXE 515", "BKWR 250", "BTSQ 890", "DRTY 600"]
c = ["A", "B", "C", "D"]
print(stocklist(b, c))
# >> "(A : 0) - (B : 1290) - (C : 515) - (D : 600)"
b = ["ABAR 200", "CDXE 500", "BKWR 250", "BTSQ 890", "DRTY 600"]
c = ["A", "B"]
print(stocklist(b, c))
# >> "(A : 200) - (B : 1140)"
b = ["ABAR 200", "CDXE 500", "BKWR 250", "BTSQ 890", "DRTY 600"]
c = ["Z", "Q"]
print(stocklist(b, c))
# >> "(Z : 0) - (Q : 0)"
b = []
c = ["Z", "Q"]
print(stocklist(b, c))
# >> ""
