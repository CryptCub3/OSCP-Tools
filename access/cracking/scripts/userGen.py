#!/usr/bin/env python
#
# ToDo
#
#   [] Work with longer names
#   [] Provide usage help
#   [] Option to set the delimeter
#   [] Option to set format
#   [] Can use Nicknames to generate usernames
#   [] Should be able to generate leet from text
#
#

fullName  = []


with open('data.txt') as f:
    for line in f:
        fName = line.splitlines()
        fullName.append(fName)


for fname in fullName:
    first = fname[0].split(' ')[0].lower()
    last = fname[0].split(' ')[1].lower()

    # john
    print(first)
    # smith
    print(last)

    # johnsmith
    print(first + last)
    # smithjohn
    print(last + first)

    # john.smith
    print(first + "." + last)
    # smith.john
    print(last + "." + first)
    
    # jsmith
    print(first[0] + last)
    # sjohn
    print(last[0] + first)

    # j.smith
    print(first[0] + "." + last)
    # s.john
    print(last[0] + "." + first)

    # john.s
    print(first + "." + last[0])
    # smith.j
    print(last + "." + first[0])

    # johsm
    print(first[0:3] + last[0:2])
    # smijo
    print(last[0:3] + first[0:2])

