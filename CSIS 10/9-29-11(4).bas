READ name$, sales
highname$ = name$
highsales = sales
DO WHILE name$ <> "eof"
    reccount = reccount + 1
    IF name$ = "mary" THEN marysales = marysales + sales
    IF name$ = "david" THEN davidcount = davidcount + 1
    IF name$ = "david" THEN davidsales = sales
    IF name$ = "mary" THEN marysaless = sales
    IF name$ = "carlos" THEN carlossales = sales
    IF sales > highsales THEN
        highsales = sales
        highname$ = name$
    END IF
    READ name$, sales
LOOP
PRINT "the number of data cards is:"; reccount
PRINT "david appeared:"; davidcount; "times"
PRINT "mary had a total sales of:"; marysales
PRINT "the highest sale was"; highsales; "made by "; highname$
DATA mary,250
DATA mary,200
DATA david,200
DATA david,150
DATA carlos,300
DATA david,200
DATA david,100
DATA mary,150
DATA eof,0
