def how_many_a(string):
    count = 0
    for number in string:
        if number == '4':
            count += 1
    return count


print(how_many_a('283479131515574857242454150695950829533116861727855889075098381754637464939319255060400927701671139009848824012858361603563707660104710181942955596198946767837449448255379774726847104047534646208046684259069491293313677028989152104752162056966024058038150193511253382430035587640247496473263914199272604269922796'))