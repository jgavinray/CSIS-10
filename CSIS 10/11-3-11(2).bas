
DO
    READ a, b, x, y
    IF a = 999 THEN EXIT DO
    ab = a * b
    xy = x * y
    Counter = Counter + ab + xy
    PRINT "The First Product is:"; ab, "The Second Product is:"; xy
LOOP
PRINT "The Sum of all Products is:"; Counter
DATA 3,15,22,5
DATA 4,9,12,12
DATA 5,5,14,9
DATA 999,0,0,0
