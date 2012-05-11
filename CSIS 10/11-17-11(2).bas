Main:
GOSUB Load.File
GOSUB Format.Report
GOSUB Process.File
GOSUB Print.Results
END

' ************************
' *  Load File as Input  *
' ************************

Load.File:
OPEN "F:\Monthsal.dat" FOR INPUT AS #1
RETURN

' ************************
' *   Formatting Report  *
' ************************

Format.Report:

H1$ = "                Monthly Sales Average - J. Gavin Ray"
H2$ = " Month         Sales       Deviation"
H3$ = " ----------    ---------   ---------"
H4$ = " Monthly Sales Average = ##,###.##"
D1$ = " \         \   ##,###.00    #,###.##"

' **************************
' * Process File/Calculate *
' **************************

Process.File:
DIM Month.Array$(1 TO 12)
DIM Sales.Array(1 TO 12)
DO UNTIL EOF(1)
    I = I + 1
    INPUT #1, Month.Array$(I), Sales.Array(I)
    Total.Sales = Total.Sales + Sales.Array(I)
LOOP
GOSUB Process.Calcs
FOR I = 1 TO 12
    IF Sales.Array(I) > Average THEN
        Deviation = Sales.Array(I) - Average
        PRINT Month.Array$(I), Sales.Array(I), Deviation
    END IF
NEXT I
Process.Calcs:
Average.Sales = Total.Sales / 12
RETURN


' ************************************
' *  Print all that Processed Stuffs *
' ************************************

Print.Results:
PRINT H1$
PRINT
PRINT H2$
PRINT H3$
PRINT
FOR I = 1 TO 12
    I = I + 1
    PRINT USING D1$; Month.Array$(I), Sales.Array(I)
NEXT I
'PRINT USING H4$; Average.Sales
CLOSE #1
RETURN

