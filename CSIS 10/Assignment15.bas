
CLS
H1$ = "          Computer Textbook Inventory - J. Gavin Ray"
H2$ = "                      On    Unit        Total  Selling     Total"
H3$ = "Title               Hand    Cost         Cost   Price      Value    Profit"
H4$ = "---------           ----    -----      ------  ------     ------    ------"
D1$ = "\               \    ###    ##.##   ##,###.##   ##.##  ##,###.##  #,###.##"

PRINT
PRINT H1$
PRINT
PRINT H2$
PRINT H3$
PRINT H4$
READ Book.Name$, Book.Stock, Book.Cost
DO WHILE Book.Name$ <> "EOF"
    GOSUB Calculator
    PRINT USING D1$; Book.Name$; Book.Stock; Book.Cost; Total.Cost; Selling.Price; Total.Value; Profit
    READ Book.Name$, Book.Stock, Book.Cost
LOOP
PRINT
PRINT "End of Report"
DATA "C Programming",180,19.25
DATA "Computer Concepts",567,32.25
DATA "Network Basics",98,23.00
DATA "Microsoft Office",34,13.25
DATA "QBasic",45,23.00
DATA "Visual JAVA",423,38.00
DATA "System Analysis",231,33.00
DATA EOF,0,0
END

' ************
' Calculator
' ************
Calculator:

Total.Cost = Book.Stock * Book.Cost

Selling.Price = 1 / (1 - .30) * Book.Cost

Total.Value = Selling.Price * Book.Stock

Profit = Total.Value - Total.Cost

RETURN

