CLS
GOSUB Read.Cards
GOSUB Process.Cards
GOSUB Print.Results
END
' ********** Read.Cards *********

Read.Cards:
READ Voter, Age, Gender$, Registered$, Voted$
RETURN

' ********** Process.Cards ******

Process.Cards:

DO WHILE Voter <> 123456789
    Vote.Counter = Vote.Counter + 1

    IF Age >= 18 THEN
        IF Registered$ = "Y" THEN
            IF Voted$ = "Y" THEN
                Voted = Voted + 1
            ELSE
                No.Vote = No.Vote + 1
            END IF
        ELSE
            IF Gender$ = "F" THEN
                NR.Fem = NR.Fem + 1
            ELSE
                NR.Male = NR.Male + 1
            END IF
        END IF
    ELSE
        IF Gender$ = "F" THEN
            NE.Fem = NE.Fem + 1
        ELSE
            NE.Male = NE.Male + 1
        END IF
    END IF
    READ Voter, Age, Gender$, Registered$, Voted$
LOOP

RETURN

' ********** Print Results ******
Print.Results:

PRINT "Assignment # 17 - J. Gavin Ray"
PRINT
PRINT "Voter Analysis"
PRINT
PRINT "Males Not Eligible to Register =================>"; NE.Male
PRINT "Females Not Eligible to Register ===============>"; NE.Fem
PRINT
PRINT "Males Old Enough to Vote but Not Registered ====>"; NR.Male
PRINT "Females Old Enought to Vote but Not Registered =>"; NR.Fem
PRINT
PRINT "Individuals Eligible to Vote but Did Not Vote ==>"; No.Vote
PRINT "Individuals that Voted =========================>"; Voted
PRINT
PRINT "Total Number of Records Processed ==============>"; Vote.Counter
PRINT
PRINT "End of Report"
RETURN

' ********** Data Cards *********

DATA 1812,23,M,Y,Y
DATA 1951,37,F,Y,Y
DATA 4516,15,F,N,N
DATA 1654,19,M,Y,N
DATA 2145,18,F,N,N
DATA 6233,21,F,Y,Y
DATA 9127,22,M,N,N
DATA 3215,26,F,Y,Y
DATA 2201,33,F,Y,N
DATA 7743,41,M,Y,Y
DATA 1121,51,F,Y,Y
DATA 1949,17,M,N,N
DATA 123456789,0,M,Y,N






