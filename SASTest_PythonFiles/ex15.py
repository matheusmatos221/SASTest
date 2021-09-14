counter = 1

def doLotsOfStuff():

    global counter

    for i in (1, 2, 3):
        counter += 1

doLotsOfStuff()
print(counter)