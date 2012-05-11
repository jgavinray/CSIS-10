' Program 1 of Assignment #20
' Creating a Sequential File
' Output Files Name = DEPTDATA

' *****************************
' *        Main Program       *
' *****************************
Main:
GOSUB Initialization
GOSUB Build.File
GOSUB Clean.Up
END

' ****************************
' * Initialization/Open File *
' ****************************

Initialization:
OPEN "E:DEPTDATA" FOR OUTPUT AS #1
RETURN

' ************************************
' * Build File: Includes Input/Write *
' ************************************

Build.File:
DO
    GOSUB Build.File.Input
    IF UCASE$(Add.Rec$) = "Y" THEN
        GOSUB Build.File.Write
    END IF
    INPUT "Would you like to add another pair to the database?           (Y/N):", CONTROL$
LOOP UNTIL UCASE$(CONTROL$) = "N"
RETURN

Build.File.Input:
CLS
PRINT "Employee Averages Input:"
PRINT "---------------------------"
PRINT
INPUT "Employee Department   :     ", Department$
INPUT "Employee's Current Age:     ", Age
PRINT
INPUT "Do you wish to add this information add this to the database? (Y/N):", Add.Rec$
RETURN

Build.File.Write:
WRITE #1, Department$, Age
RETURN

' ********************************
' *          Clean Up            *
' ********************************

Clean.Up:
Department$ = "EOF"
Age = 0
WRITE #1, Department$, Age
CLOSE #1
CLS
PRINT
PRINT "Creations of Sequential File is Complete"
PRINT
PRINT "Have a nice day - End Program"
RETURN
