CLS
GOSUB Load.Cards
GOSUB Process.High
GOSUB Process.Low
GOSUB Print.Outputs
END

' ************ Load Cards Data ******************
Load.Cards:

READ Fullname$, sales

highsales = sales
lowsales = sales
RETURN

' ************ Loop/Processing **************

Process.High:

DO WHILE Fullname$ <> "eof"
    IF sales >= highsales THEN
        highsales = sales
        highname$ = Fullname$
    END IF
    READ Fullname$, sales
LOOP
RETURN

Process.Low:

RESTORE
READ Fullname$, sales
DO WHILE Fullname$ <> "eof"
    IF sales < lowsales THEN
        lowsales = sales
        lowname$ = Fullname$
    END IF
    READ Fullname$, sales

LOOP
RETURN

' ************ Display ****************

Print.Outputs:

PRINT "Best salesperson =======> "; highname$
PRINT "Total sales ============>"
LOCATE 2, 27: PRINT USING "$##,###.##"; highsales
PRINT
PRINT "Worse salesperson ======> "; lowname$
PRINT "Total sales ============>"
LOCATE 5, 27: PRINT USING "$##,###.##"; lowsales

RETURN
' ************ Data Cards ************

DATA "Franklin, Ed",76185
DATA "Smith, Susan",18421
DATA "Stankie, Jim",75856
DATA "Runaw, Jeff",32146
DATA "Ray, Kathy",13467
DATA "Doolittle, Frank",14316
DATA "Zachery, Louis",48615
DATA "eof",0

