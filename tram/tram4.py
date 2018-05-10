#!/usr/bin/env/python3
# -*- coding: iso-8859-15 -*-

# Calculates the time of departure of Tram 4 at Freiburg University from Messe

import time

# Current minute part of time
m = time.strftime("%M")

# Minutes until the Tram leaves
left = 19 - (int(m) % 10)

# error when minutes between x0 and x3
if int(m) % 10 > 3:
    print(left, "Min.")
else:
    print(left - 10, "Min.")

"""
# Old script for later use
if int(m) < 54:
    if int(m[0]) != 0:
        while int(m[1]) != 4:
            m = str(int(m) + 1)
    else:
        m = "14"
    print(str(int(h)) + ":" + m)

else:
    print(str(int(h) + 1) + ":" + "04")
"""
