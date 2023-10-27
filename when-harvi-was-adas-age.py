#!/usr/bin/python3

from datetime import date as D

adaBirthday = D(2020, 6, 8)
adaAge = (D.today() - adaBirthday)

harviBirthday = D(2016, 11, 16)
dayHarviWasAdasAge = (harviBirthday + adaAge)

print('\n    ' + str(adaAge.days) + ' days -> ' + str(dayHarviWasAdasAge) + '\n')
