CLS

READ SalesPerson.First.Name$, SalesPerson.Sales
DO WHILE SalesPerson.First.Name$ <> "EOF"

    IF SalesPerson.First.Name$ = "Mary" THEN Mary.Sales = Mary.Sales + SalesPerson.Sales
    IF SalesPerson.First.Name$ = "David" THEN David.Sales = David.Sales + SalesPerson.Sales
    IF SalesPerson.First.Name$ = "Carlos" THEN Carlos.Sales = Carlos.Sales + SalesPerson.Sales
    READ SalesPerson.First.Name$, SalesPerson.Sales

LOOP

PRINT "Mary had a total amount of sales of:", Mary.Sales
PRINT "David had a total amount of sales of:", David.Sales
PRINT "Carlos had a total amount of sales of:", Carlos.Sales

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

