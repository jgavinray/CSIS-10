CLS
PRINT "Credit Card Verification - J. Gavin Ray"
PRINT
GOSUB Table.Input
GOSUB Load.Process
GOSUB Print.Results

PRINT
LOCATE 9, 1: PRINT "Job Complete"
END
' ********* Table/Input *********
Table.Input:
CLS
PRINT "Credit Card Verification - J. Gavin Ray"
DIM Credit.Cards(1 TO 15)
LOCATE 3, 1: INPUT "Credit Card Number ========>", Card.Number

RETURN

' ********* Load.Process ********

Load.Process:
RESTORE
READ Card.File
Card.Valid = 0
RESTORE
FOR Number = 1 TO 15
    READ Credit.Cards(Number)
    IF Credit.Cards(Number) = Card.Number THEN Card.Valid = Card.Valid + 1
NEXT Number

RETURN
' ********* Print.Results *******

Print.Results:
IF Card.Valid >= 1 THEN
    PRINT
    PRINT "Credit Card Number is Valid"
ELSE
    PRINT
    PRINT "** Error ** Credit Card is Invalid - Alert Your Manager"
END IF

LOCATE 7, 1: PRINT "Enter Y to verify another Credit Card Number, else N ==>"
LOCATE 7, 58: INPUT "", CONTROL$

IF UCASE$(CONTROL$) = "N" THEN RETURN
IF UCASE$(CONTROL$) = "Y" THEN
    DO
        IF UCASE$(CONTROL$) = "Y" THEN
            GOSUB Table.Input
            GOSUB Load.Process
            GOSUB Print.Results
        END IF
    LOOP UNTIL UCASE$(CONTROL$) = "N"
END IF
RETURN


' ******** Data Cards for Array **************

DATA 131416
DATA 345610
DATA 518912
DATA 238967
DATA 410001
DATA 691265
DATA 384512
DATA 672354
DATA 210201
DATA 583214
DATA 194567
DATA 372198
DATA 172319
DATA 351098
DATA 562982

