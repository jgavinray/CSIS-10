FOR i = 1 TO 4
    FOR j = i + 1 TO 5
        IF HOLDNUMBERS(j) < HOLDNUMBERS(i) THEN
            SAVE = HOLDNUMBERS(i)
            HOLDNUMBERS(i) = HOLDNUMBERS(j)
            HOLDNUMBERS(j) = SAVE
        END IF
    NEXT j
NEXT i

