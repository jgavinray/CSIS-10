CLS



READ SalesPerson.First.Name$, SalesPerson.Sales
DO WHILE SalesPerson.First.Name$ <> "EOF"

    Highest.Single.Sale = SalesPerson.Sales
    IF SalesPerson.First.Name$ = "Mary" THEN Mary.Count = Mary.Count + 1
    IF SalesPerson.First.Name$ = "Mary" THEN Mary.Single.Sales = SalesPerson.Sales
    IF Mary.Single.Sales >= Highest.Single.Sale THEN Highest.Single.Sale = Mary.Single.Sales
    IF SalesPerson.First.Name$ = "Mary" THEN Mary.Sales = Mary.Sales + SalesPerson.Sales

    IF SalesPerson.First.Name$ = "David" THEN David.Count = David.Count + 1
    IF SalesPerson.First.Name$ = "David" THEN David.Single.Sales = SalesPerson.Sales
    IF David.Single.Sales >= Highest.Single.Sale THEN Highest.Single.Sale = David.Single.Sales
    IF SalesPerson.First.Name$ = "David" THEN David.Sales = David.Sales + SalesPerson.Sales

    IF SalesPerson.First.Name$ = "Carlos" THEN Carlos.Count = Carlos.Count + 1
    IF SalesPerson.First.Name$ = "Carlos" THEN Carlos.Single.Sales = SalesPerson.Sales
    IF Carlos.Single.Sales >= Highest.Single.Sale THEN Highest.Single.Sale = Carlos.Single.Sales

    IF SalesPerson.First.Name$ = "Carlos" THEN Carlos.Sales = Carlos.Sales + SalesPerson.Sales

    Total.Count = Mary.Count + David.Count + Carlos.Count

    READ SalesPerson.First.Name$, SalesPerson.Sales
LOOP

PRINT Total.Count, "Total Data Cards Read"
PRINT "David appeared ", David.Count, "times."
PRINT "Mary sales:", Mary.Sales
PRINT "The Highest Single Sale is:", Highest.Single.Sale

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
