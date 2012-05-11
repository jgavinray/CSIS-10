Main:
CLS
PRINT "Wind Chill Table Lookup - J. Gavin Ray"
PRINT

GOSUB Load.Array
GOSUB Lookup
GOSUB Error.Check
GOSUB Print.Results
GOSUB Run.Again.Check
GOSUB Clean.Up
END
' ***** Loading the Array ********
Load.Array:
DIM Wind.Table(-20 TO 15, 5 TO 30)
FOR Row = -20 TO 15 STEP 5
    FOR Column = 5 TO 30 STEP 5
        READ DATAFIELD
        Wind.Table(Row, Column) = DATAFIELD
    NEXT Column
NEXT Row
RETURN

' ******* Lookup / UI *************
Lookup:

INPUT "Tempature (Between -20 and 15) =====> ", Tempature
PRINT
INPUT "Velocity (Between 5 and 30) ========> ", Velocity
PRINT
RETURN

' ******* Error Check **************
' Checks to make sure that variables outside of operating
' checks doesn't crash program.
Error.Check:
Return
' ******* Print Results ************
Print.Results:
PRINT "Wind chill Factor ==================> "; Wind.Table(Tempature, Velocity)
RETURN

' ************ Run Again ? *************
Run.Again.Check:
PRINT
INPUT "Enter Y to determine another wind chill factor, else N: ", CONTROL$

'IF UCASE$(CONTROL$) = "N" THEN RETURN
IF UCASE$(CONTROL$) = "Y" THEN
    RESTORE
    DO
        IF UCASE$(CONTROL$) = "Y" THEN
            GOTO Main
        END IF
    LOOP UNTIL UCASE$(CONTROL$) = "N"
END IF
RETURN

' ************ Clean Up Screen ********
Clean.Up:
CLS
PRINT
PRINT
PRINT
PRINT "End Program - Have a nice day."
RETURN

DATA -26,-46,-58,-67,-74,-79
DATA -21,-40,-51,-60,-66,-71
DATA -15,-34,-45,-53,-59,-64
DATA -10,-27,-38,-46,-51,-56
DATA -5,-22,-31,-39,-44,-49
DATA 0,-15,-25,-31,-36,-41
DATA 7,-9,-18,-24,-29,-33
DATA 12,-3,-11,-17,-22,-25
