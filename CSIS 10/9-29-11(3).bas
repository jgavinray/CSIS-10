READ name$, sales
highname$ = name$
highsales = sales
DO WHILE name$ <> "EOF"

    reccount = reccount + 1
    IF name$ = "Mary" THEN marysales = marysales + sales
    IF name$ = "David" THEN marysales = davidsales + sales
    IF name$ = "Carlos" THEN marysales = carlossales + sales
    IF sales > highsales THEN
        highsales = sales
        highname$ = name$
    END IF
    READ name$, sales
LOOP
PRINT
DATA Mary,250
DATA Mary,200
DATA David,200
DATA David,150
DATA Carlos,300
DATA David,200
DATA David,100
DATA Mary,150
DATA EOF,0

END

