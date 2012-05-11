CLS

' PRINT "Problem 4, Page 138 - J. Gavin Ray"
GOSUB Display.Prompt
GOSUB Process.Input
GOSUB Clean.Up
END

' ******************
' Display Prompt
' ******************

Display.Prompt:

LOCATE 5, 25: PRINT "Eventual Cash Value of an Annuity"
LOCATE 8, 25: PRINT "Payment per year ==========>"
LOCATE 10, 25: PRINT "Installments per year =====>"
LOCATE 12, 25: PRINT "Time in Years =============>"
LOCATE 14, 25: PRINT "Interest Rate in % ========>"
LOCATE 16, 25: PRINT "Conversions per year ======>"
LOCATE 18, 25: PRINT "Cash Value ================>"
LOCATE 22, 25: PRINT "Enter Y to process another request, else N ==>"
RETURN

' ******************
' Progress Input
' ******************

Process.Input:

DO

    GOSUB Input.Rates
    GOSUB Compute.Cash.Value

    LOCATE 18, 54: PRINT USING "$###,###.##"; S

    GOSUB Refresh.Screen

LOOP UNTIL UCASE$(Control$) = "N"
RETURN

' ******************
' Input Rates
' ******************

Input.Rates:

LOCATE 8, 54: INPUT "", R 'Payments
LOCATE 10, 54: INPUT "", P 'Installments
LOCATE 12, 54: INPUT "", N 'Years
LOCATE 14, 54: INPUT "", J 'Interest
LOCATE 16, 54: INPUT "", M 'Conversions
RETURN

' ******************
' Annoying Calculating Formula
' ******************

Compute.Cash.Value:

S = (R * ((((1 + ((J * .01) / M)) ^ (M * N)) - 1)) / (P * ((1 + ((J * .01) / M)) ^ (M / P) - 1)))

' S = INT((S + .05) * 100) / 100

REM Above problem stumpted me for days because I forgot to convert the interest
REM from % form into decimal form so QBasic would read it properly.

REM Also making sure the QBasic ran the numbers at the right time after the
REM right calculations using the ()'s were done first took a while to read
REM and understand.  Making sure that I had the right order, very good lesson.



RETURN

' ******************
' Refresh Screen
' ******************

Refresh.Screen:
LOCATE 8, 60: PRINT SPC(7):
LOCATE 10, 60: PRINT SPC(7):
LOCATE 12, 60: PRINT SPC(7):
LOCATE 14, 60: PRINT SPC(7):
LOCATE 16, 60: PRINT SPC(7):
LOCATE 22, 72: INPUT "", Control$
RETURN

' ******************
' Clean Up
' ******************

Clean.Up:
CLS
LOCATE 30, 25: PRINT "End of Program - Have a Nice Day"
RETURN


