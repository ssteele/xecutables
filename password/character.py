#!/usr/bin/python

# character lists
numbers = '0 1 2 3 4 5 6 7 8 9'
alphasLower = 'a b c d e f g h i j k l m n o p q r s t u v w x y z'
alphasUpper = 'A B C D E F G H I J K L M N O P Q R S T U V W X Y Z'
specials = '! @ # $ % ^ & * ( ) - _ = + | { } [ ] ; : \' " < . , > / ?'
iosSpecialsPageOne = '0 1 2 3 4 5 6 7 8 9 - / : ; ( ) $ & @ " . , ? ! \''
iosSpecialsPageTwo = '[ ] { } # % ^ * + = _ | ~ < > . , ? ! \''

# character sets
sets = {
    'alpha': [
        {
            "chars": alphasLower,
            "min": 3,
            "max": 5
        },
        {
            "chars": alphasUpper,
            "min": 3,
            "max": 5
        }
    ],
    'numeric': [
        {
            "chars": numbers,
            "min": 3,
            "max": 5
        }
    ],
    'alphanumeric': [
        {
            "chars": alphasLower,
            "min": 3,
            "max": 5
        },
        {
            "chars": alphasUpper,
            "min": 3,
            "max": 5
        },
        {
            "chars": numbers,
            "min": 3,
            "max": 5
        }
    ],
    'all': [
        {
            "chars": alphasLower,
            "min": 3,
            "max": 5
        },
        {
            "chars": alphasUpper,
            "min": 3,
            "max": 5
        },
        {
            "chars": numbers,
            "min": 3,
            "max": 5
        },
        {
            "chars": specials,
            "min": 3,
            "max": 5
        }
    ],
    'ios': [
        {
            "chars": alphasLower,
            "min": 3,
            "max": 5
        },
        {
            "chars": alphasUpper,
            "min": 1,
            "max": 1
        },
        {
            "chars": iosSpecialsPageOne,
            "min": 3,
            "max": 4
        },
        {
            "chars": iosSpecialsPageTwo,
            "min": 3,
            "max": 3
        }
    ]
}
