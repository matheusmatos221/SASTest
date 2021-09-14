number = 202

#########Code1######

if number % 2 == 0:
    even = True
else:
    even = False

print("Code1: even := {}".format(even))

# Code 1 answer:
# Code1: even := True

#########Code2#############
even = True if number % 2 == 0 else False
print("Code2: even := {}".format(even))

# Code 2 answer:
# Code2: even := True

########## Code3########

even = number % 2 == 0
print("Code3: even := {}".format(even))

# Code 3 answer:
# Code3: even := True
