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
OPEN "E:DEPTDATA" FOR INPUT AS #1
RETURN

' ************************
' *   Formatting Report  *
' ************************

Format.Report:

H1$ = "                Employee Average Age - J. Gavin Ray"
H2$ = "               Below       Average Age     40 and      Average Age"
H3$ = " Dept. No.     40          Below 40        Above       40 and Above"
H4$ = " ----------    -----       -----------     ------      ------------"
D1$ = "      \\         ##               ##.#       ##                ##.#"

' **************************
' * Process File/Calculate *
' **************************

Process.File:

DO UNTIL EOF(1)
    INPUT #1, Department$, Age
    GOSUB Below.Forty
    GOSUB Above.Forty
LOOP
RETURN

Below.Forty:
IF Age < 40 THEN
    IF Department$ = "A" THEN
        A.Department$ = Department$
        A.Below.Forty = A.Below.Forty + Age
        A.Age.Below.Forty = A.Age.Below.Forty + 1
        A.Average.Below.Forty = A.Below.Forty / A.Age.Below.Forty
    END IF
    IF Department$ = "B" THEN
        B.Department$ = Department$
        B.Below.Forty = B.Below.Forty + Age
        B.Age.Below.Forty = B.Age.Below.Forty + 1
        B.Average.Below.Forty = B.Below.Forty / B.Age.Below.Forty
    END IF
    IF Department$ = "C" THEN
        C.Department$ = Department$
        C.Below.Forty = C.Below.Forty + Age
        C.Age.Below.Forty = C.Age.Below.Forty + 1
        C.Average.Below.Forty = C.Below.Forty / C.Age.Below.Forty
    END IF
END IF
RETURN

Above.Forty:
IF Age > 40 THEN
    IF Department$ = "A" THEN
        A.Above.Forty = A.Above.Forty + Age
        A.Age.Above.Forty = A.Age.Above.Forty + 1
        A.Average.Above.Forty = A.Above.Forty / A.Age.Above.Forty
    END IF
    IF Department$ = "B" THEN
        B.Above.Forty = B.Above.Forty + Age
        B.Age.Above.Forty = B.Age.Above.Forty + 1
        B.Average.Above.Forty = B.Above.Forty / B.Age.Above.Forty
    END IF
    IF Department$ = "C" THEN
        C.Above.Forty = C.Above.Forty + Age
        C.Age.Above.Forty = C.Age.Above.Forty + 1
        C.Average.Above.Forty = C.Above.Forty / C.Age.Above.Forty
    END IF
END IF

RETURN

' ************************************
' *  Print all that Processed Stuffs *
' ************************************

Print.Results:
PRINT H1$
PRINT
PRINT H2$
PRINT H3$
PRINT H4$
PRINT USING D1$; A.Department$, A.Age.Below.Forty, A.Average.Below.Forty, A.Age.Above.Forty, A.Average.Above.Forty
PRINT USING D1$; B.Department$, B.Age.Below.Forty, B.Average.Below.Forty, B.Age.Above.Forty, B.Average.Above.Forty
PRINT USING D1$; C.Department$, C.Age.Below.Forty, C.Average.Below.Forty, C.Age.Above.Forty, C.Average.Above.Forty
PRINT
PRINT "Employee Age Analysis Report Complete"
RETURN


