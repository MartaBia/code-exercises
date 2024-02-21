# You will be given two dimensions:
# - a positive integer length: lng
# - a positive integer width: wdth
# You will return a collection or a string (list)

def sq_in_rect(lng, wdth):
    squares_list = []
    squares_area = 0
    if lng == wdth and not squares_list:
        return None

    while squares_area != (lng * wdth):
        if lng > wdth:
            shorter_side = wdth
            longer_side = lng
        else:
            shorter_side = lng
            longer_side = wdth

        squares_list.append(shorter_side)
        print(f'squares list: {squares_list}')
        squares_area += (shorter_side * shorter_side)
        print(f'squares area: {squares_area}')
        wdth = shorter_side
        lng = longer_side - shorter_side


# print(sq_in_rect(5, 5))
# >> None
print(sq_in_rect(5, 3))
# >> 3, 2, 1, 1
# print(sq_in_rect(3, 5))
# # >> 3, 2, 1, 1
# print(sq_in_rect(20, 14))
# >> 14, 6, 6, 2, 2, 2
